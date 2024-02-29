package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.Country;
import uk.ac.kent.magellan.domain.Product;
import uk.ac.kent.magellan.domain.Result;
import uk.ac.kent.magellan.domain.Search;
import uk.ac.kent.magellan.domain.SearchPageResults;
import uk.ac.kent.magellan.domain.SearchTask;
import uk.ac.kent.magellan.domain.Site;
import uk.ac.kent.magellan.repository.CountryRepository;
import uk.ac.kent.magellan.repository.ResultRepository;
import uk.ac.kent.magellan.repository.SearchRepository;
import uk.ac.kent.magellan.repository.SiteRepository;
import uk.ac.kent.magellan.utils.NotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
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
public class SiteSearchServiceImpl implements SiteSearchService {
    private static final Logger log = LoggerFactory.getLogger(SiteSearchServiceImpl.class);

    private final WebClient webClient;

    private final SiteRepository siteRepository;

    private final SearchRepository searchRepository;

    private final ResultRepository resultRepository;
    private final CountryRepository countryRepository;

    @Value("${service.key}")
    private String apiKey;

    @Autowired
    public SiteSearchServiceImpl(final WebClient webClient,
                                 final SiteRepository siteRepository,
                                 final SearchRepository searchRepository,
                                 final ResultRepository resultRepository,
                                 final CountryRepository countryRepository) {
        this.webClient = webClient;
        this.siteRepository = siteRepository;
        this.searchRepository = searchRepository;
        this.resultRepository = resultRepository;
        this.countryRepository = countryRepository;
    }

    @Override
    @Transactional
    public SearchPageResults performSearch(final String siteName, final String searchTerms, final String countryCode)
            throws NotFoundException {
        return performSearch(siteName, searchTerms, countryCode, null);
    }

    @Override
    @Transactional
    public SearchPageResults performSearch(final String siteName,
                                           final String searchTerms,
                                           final String countryCode,
                                           final SearchTask searchTask)
            throws NotFoundException {
        log.debug("Performing a search");

        final Site site = siteRepository.findByName(siteName)
                .orElseThrow(NotFoundException::new);

        final String siteUrl = site.getUrl().replace("${searchTerms}", searchTerms);

        final Boolean premiumProxy = (countryCode != null && !countryCode.isEmpty()) ? true : null;

        final Country country = (countryCode == null) ? null : countryRepository.findByCode(countryCode)
                .orElseThrow(NotFoundException::new);

        final String scenario = (site.getScenario() == null) ? null : site.getScenario()
                .replace("${searchTerms}", searchTerms);

        final SearchPageResults response = webClient
                .get()
                .uri(uriBuilder -> uriBuilder
                        .path("/")
                        .queryParam("api_key", apiKey)
                        .queryParam("url", encodeQueryParameter(siteUrl))
                        .queryParam("block_resources", "false")
                        .queryParam("json_response", "true")
                        .queryParamIfPresent("extract_rules", encodeQueryParameter(site.getExtractRules()))
                        .queryParamIfPresent("js_scenario", encodeQueryParameter(scenario))
                        .queryParamIfPresent("premium_proxy", Optional.ofNullable(premiumProxy))
                        .queryParamIfPresent("country_code", encodeQueryParameter(countryCode))
                        .build())
                .retrieve()
                .bodyToMono(SearchPageResults.class)
                .block();

        if (response != null) {
            final Long searchId = createSearchEntry(searchTerms, site, country, searchTask);
            processResults(searchId, response);
        }

        return response;
    }

    private Optional<String> encodeQueryParameter(final String queryParameter) {
        return Optional.ofNullable(queryParameter)
                .filter(Predicate.not(String::isEmpty))
                .map(qp -> URLEncoder.encode(qp, StandardCharsets.UTF_8));
    }

    private Long createSearchEntry(final String searchTerms,
                                   final Site site,
                                   final Country country,
                                   final SearchTask searchTask) {
        log.debug("Creating a new search entry");
        final Search search = Search.builder()
                .site(site)
                .terms(searchTerms)
                .country(country)
                .timestamp(LocalDateTime.now())
                .searchTask(searchTask)
                .build();
        return searchRepository.save(search).getId();
    }

    private void processResults(final Long searchId, final SearchPageResults searchPageResults) {
        log.debug("Processing results");
        final List<Product> products = searchPageResults.getBody().getProducts();
        if (products != null) {
            for (final Product product : products) {
                log.debug("Storing a result");
                final Result result = Result.builder()
                        .searchId(searchId)
                        .name(product.getName())
                        .description(product.getDescription())
                        .url(product.getUrl())
                        .productId(product.getProductID())
                        .image(product.getImage())
                        .brand(product.getBrand())
                        .offerPrice(product.getOfferPrice())
                        .offerCurrency(product.getOfferCurrency())
                        .offerCondition(product.getItemCondition())
                        .offerAvailability(product.getOfferAvailability())
                        .sellerName(product.getSellerName())
                        .sellerUrl(product.getSellerUrl())
                        .sellerImage(product.getSellerImage())
                        .sellerBestRating(product.getSellerBestRating())
                        .sellerWorstRating(product.getSellerWorstRating())
                        .sellerRatingCount(product.getSellerRatingCount())
                        .sellerRatingValue(product.getSellerRatingValue())
                        .aggregateBestRating(product.getAggregateBestRating())
                        .aggregateWorstRating(product.getAggregateWorstRating())
                        .aggregateRatingCount(product.getAggregateRatingCount())
                        .aggregateRatingValue(product.getAggregateRatingValue())
                        .timestamp(LocalDateTime.now())
                        .build();
                resultRepository.save(result);
            }
        }
    }
}
