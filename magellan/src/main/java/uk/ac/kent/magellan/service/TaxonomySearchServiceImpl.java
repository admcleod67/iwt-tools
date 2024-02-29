package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.TaxonomyEntry;
import uk.ac.kent.magellan.domain.TaxonomyPageResults;
import uk.ac.kent.magellan.domain.TaxonomyResult;
import uk.ac.kent.magellan.domain.TaxonomySearch;
import uk.ac.kent.magellan.domain.TaxonomySite;
import uk.ac.kent.magellan.repository.TaxonomyResultRepository;
import uk.ac.kent.magellan.repository.TaxonomySearchRepository;
import uk.ac.kent.magellan.repository.TaxonomySiteRepository;
import uk.ac.kent.magellan.utils.NotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.reactive.function.client.WebClient;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.function.Predicate;

@Service
public class TaxonomySearchServiceImpl implements TaxonomySearchService {
    private static final Logger log = LoggerFactory.getLogger(TaxonomySearchServiceImpl.class);

    private final WebClient webClient;

    private final TaxonomySiteRepository siteRepository;

    private final TaxonomySearchRepository searchRepository;

    private final TaxonomyResultRepository resultRepository;

    @Value("${service.key}")
    private String apiKey;

    @Autowired
    public TaxonomySearchServiceImpl(final WebClient webClient,
                                     final TaxonomySiteRepository siteRepository,
                                     final TaxonomySearchRepository searchRepository,
                                     final TaxonomyResultRepository resultRepository) {
        this.webClient = webClient;
        this.siteRepository = siteRepository;
        this.searchRepository = searchRepository;
        this.resultRepository = resultRepository;
    }

    @Override
    @Transactional(readOnly = true)
    public Optional<TaxonomySearch> findSearch(final long id) {
        return searchRepository.findById(id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<TaxonomySearch> listSearches() {
        return searchRepository.findAll(Sort.by(Sort.Direction.DESC, "timestamp"));
    }

    @Override
    @Transactional
    public void deleteSearch(final long id) {
        log.debug("Deleting a taxonomy search with id = {}", id);
        searchRepository.deleteById(id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<TaxonomyResult> listSearchResults(final long searchId) {
        return resultRepository.findByTaxonomySearchId(searchId);
    }

    @Override
    @Transactional
    public TaxonomyPageResults performSearch(final String siteName, final String searchTerms) throws NotFoundException {
        log.debug("Performing a taxonomy search");

        final TaxonomySite site = siteRepository.findByName(siteName)
                .orElseThrow(NotFoundException::new);

        final String siteUrl = site.getUrl().replace("${searchTerms}", searchTerms);

        final String scenario = (site.getScenario() == null) ? null : site.getScenario()
                .replace("${searchTerms}", searchTerms);

        final TaxonomyPageResults response = webClient
                .get()
                .uri(uriBuilder -> uriBuilder
                        .path("/")
                        .queryParam("api_key", apiKey)
                        .queryParam("url", encodeQueryParameter(siteUrl))
                        .queryParam("block_resources", "false")
                        .queryParam("json_response", "true")
                        .queryParamIfPresent("extract_rules", encodeQueryParameter(site.getExtractRules()))
                        .queryParamIfPresent("js_scenario", encodeQueryParameter(scenario))
                        .build())
                .retrieve()
                .bodyToMono(TaxonomyPageResults.class)
                .block();

        if (response != null) {
            final Long searchId = createOrUpdateSearchEntry(searchTerms, site);
            removeExistingResults(searchId);
            processResults(searchId, response);
        }

        return response;
    }

    private Optional<String> encodeQueryParameter(final String queryParameter) {
        return Optional.ofNullable(queryParameter)
                .filter(Predicate.not(String::isEmpty))
                .map(qp -> URLEncoder.encode(qp, StandardCharsets.UTF_8));
    }

    private Long createOrUpdateSearchEntry(final String searchTerms, final TaxonomySite site) {
        TaxonomySearch search = searchRepository.findByTerms(searchTerms);
        if (search == null) {
            log.debug("Creating a new taxonomy search entry");
            search = TaxonomySearch.builder()
                    .taxonomySite(site)
                    .terms(searchTerms)
                    .timestamp(LocalDateTime.now())
                    .build();
        } else {
            log.debug("Updating an existing taxonomy search entry for id = {}", search.getId());
            search.setTimestamp(LocalDateTime.now());
        }
        return searchRepository.save(search).getId();
    }

    private void removeExistingResults(final Long searchId) {
        final Long resultsCount = resultRepository.countByTaxonomySearchId(searchId);
        if (resultsCount > 0) {
            log.debug("Deleting existing results for search id = {}", searchId);
            resultRepository.deleteByTaxonomySearchId(searchId);
        }
    }

    private void processResults(final Long searchId, final TaxonomyPageResults pageResults) {
        log.debug("Processing taxonomy results for search id = {}", searchId);
        final List<TaxonomyEntry> items = pageResults.getBody().getItems();
        if (items != null) {
            for (final TaxonomyEntry entry : items) {
                final TaxonomyResult result = TaxonomyResult.builder()
                        .taxonomySearchId(searchId)
                        .name(entry.getName())
                        .details(entry.getDetails())
                        .redListStatus(entry.getRedListStatus())
                        .vernacularName(entry.getVernacularName())
                        .family(entry.getFamily())
                        .taxonomyOrder(entry.getOrder())
                        .timestamp(LocalDateTime.now())
                        .build();
                if (!result.isEmpty()) {
                    resultRepository.save(result);
                }
            }
        }
    }
}
