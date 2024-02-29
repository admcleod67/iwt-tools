package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.TaxonomyEntry;
import uk.ac.kent.magellan.domain.TaxonomyPageResults;
import uk.ac.kent.magellan.domain.TaxonomySearch;
import uk.ac.kent.magellan.domain.TaxonomySite;
import uk.ac.kent.magellan.repository.TaxonomyResultRepository;
import uk.ac.kent.magellan.repository.TaxonomySearchRepository;
import uk.ac.kent.magellan.repository.TaxonomySiteRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.http.HttpStatus;
import org.springframework.web.reactive.function.client.ClientResponse;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;

import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyString;

class TaxonomySearchServiceImplTest {
    private static final String READER_JSON = "{\"body\": {\"items\": [" +
            "{\"name\": \"Paphiopedilum charlesworthii\", " +
            "\"details\": \"Paphiopedilum charlesworthii var. lannaense Tongkham, Pumikong, Potapohn & Bundithya, Phytotaxa 531(1): 16 (2022).\", " +
            "\"type\": \"lannaense\", " +
            "\"publication\": \"Phytotaxa 531(1): 16 (2022).\"}" +
            "]}, " +
            "\"type\": \"json\", \"iframes\": [], \"xhr\": [], \"cost\": 5, \"initial-status-code\": 200, " +
            "\"resolved-url\": \"http://httpbin.org/anything?json\"}";

    private static final String BASE_URL = "http://localhost:8081/search";

    WebClient webClientMock = WebClient.builder().baseUrl(BASE_URL)
            .exchangeFunction(clientRequest -> Mono.just(ClientResponse.create(HttpStatus.OK)
                    .header("content-type", "application/json")
                    .body(READER_JSON)
                    .build()))
            .build();

    private TaxonomySearchService searchService;

    @BeforeEach
    void setUp() {
        final TaxonomySite site = TaxonomySite.builder()
                .name("httpbin")
                .url("http://httpbin.org/anything?json")
                .build();

        final TaxonomySiteRepository siteRepository = Mockito.mock(TaxonomySiteRepository.class);
        Mockito.when(siteRepository.findByName(anyString())).thenReturn(Optional.of(site));

        final TaxonomySearch search = TaxonomySearch.builder()
                .id(42L)
                .build();

        final TaxonomySearchRepository searchRepository = Mockito.mock(TaxonomySearchRepository.class);
        Mockito.when(searchRepository.save(any())).thenReturn(search);

        final TaxonomyResultRepository resultRepository = Mockito.mock(TaxonomyResultRepository.class);

        searchService = new TaxonomySearchServiceImpl(webClientMock, siteRepository, searchRepository, resultRepository);
    }

    @Test
    void performSearchDecodesRichResponse() {
        // given
        final String siteName = "httpbin";
        final String searchTerms = "iphone";

        // when
        final TaxonomyPageResults results = searchService.performSearch(siteName, searchTerms);

        // then
        assertThat(results).isNotNull();
        assertThat(results.getType()).isEqualTo("json");
        assertThat(results.getCost()).isEqualTo(5);
        assertThat(results.getInitialStatusCode()).isEqualTo(200);
        assertThat(results.getResolvedUrl()).isEqualTo("http://httpbin.org/anything?json");
    }

    @Test
    void performSearchDecodesItems() {
        // given
        final String siteName = "httpbin";
        final String searchTerms = "iphone";

        // when
        final TaxonomyPageResults results = searchService.performSearch(siteName, searchTerms);

        // then
        assertThat(results).isNotNull();
        assertThat(results.getBody()).isNotNull();

        final List<TaxonomyEntry> items = results.getBody().getItems();
        assertThat(items).isNotNull();
        assertThat(items.size()).isEqualTo(1);

        final TaxonomyEntry entry = items.get(0);
        assertThat(entry.getName()).isEqualTo("Paphiopedilum charlesworthii");
        assertThat(entry.getDetails()).isEqualTo("Paphiopedilum charlesworthii var. lannaense Tongkham, Pumikong, Potapohn & Bundithya, Phytotaxa 531(1): 16 (2022).");
    }
}
