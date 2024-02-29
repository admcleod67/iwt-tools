package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.Product;
import uk.ac.kent.magellan.domain.Search;
import uk.ac.kent.magellan.domain.SearchPageResults;
import uk.ac.kent.magellan.domain.Site;
import uk.ac.kent.magellan.repository.CountryRepository;
import uk.ac.kent.magellan.repository.ResultRepository;
import uk.ac.kent.magellan.repository.SearchRepository;
import uk.ac.kent.magellan.repository.SiteRepository;
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

class SiteSearchServiceImplTest {
    private static final String READER_JSON = "{\"body\": {\"products\": [" +
            "{\"name\": \"Apple iPhone SE 3 2022 64GB 128GB 256GB\"}]}, " +
            "\"type\": \"json\", \"iframes\": [], \"xhr\": [], \"cost\": 5, \"initial-status-code\": 200, " +
            "\"resolved-url\": \"http://httpbin.org/anything?json\"}";

    private static final String BASE_URL = "http://localhost:8081/search";

    WebClient webClientMock = WebClient.builder().baseUrl(BASE_URL)
            .exchangeFunction(clientRequest -> Mono.just(ClientResponse.create(HttpStatus.OK)
                    .header("content-type", "application/json")
                    .body(READER_JSON)
                    .build()))
            .build();

    private SiteSearchService siteSearchService;

    @BeforeEach
    void setUp() {
        final Site site = Site.builder()
                .name("httpbin")
                .url("http://httpbin.org/anything?json")
                .build();

        final SiteRepository siteRepository = Mockito.mock(SiteRepository.class);
        Mockito.when(siteRepository.findByName(anyString())).thenReturn(Optional.of(site));

        final Search search = Search.builder()
                .id(42L)
                .build();

        final SearchRepository searchRepository = Mockito.mock(SearchRepository.class);
        Mockito.when(searchRepository.save(any())).thenReturn(search);

        final ResultRepository resultRepository = Mockito.mock(ResultRepository.class);

        final CountryRepository countryRepository = Mockito.mock(CountryRepository.class);

        siteSearchService = new SiteSearchServiceImpl(
                webClientMock, siteRepository, searchRepository, resultRepository, countryRepository);
    }

    @Test
    void performSearchDecodesRichResponse() {
        // given
        final String siteName = "httpbin";
        final String searchTerms = "iphone";

        // when
        final SearchPageResults results = siteSearchService.performSearch(siteName, searchTerms, null);

        // then
        assertThat(results).isNotNull();
        assertThat(results.getType()).isEqualTo("json");
        assertThat(results.getCost()).isEqualTo(5);
        assertThat(results.getInitialStatusCode()).isEqualTo(200);
        assertThat(results.getResolvedUrl()).isEqualTo("http://httpbin.org/anything?json");
    }

    @Test
    void performSearchDecodesProducts() {
        // given
        final String siteName = "httpbin";
        final String searchTerms = "iphone";

        // when
        final SearchPageResults results = siteSearchService.performSearch(siteName, searchTerms, null);

        // then
        assertThat(results).isNotNull();
        assertThat(results.getBody()).isNotNull();

        final List<Product> products = results.getBody().getProducts();
        assertThat(products).isNotNull();
        assertThat(products.size()).isEqualTo(1);

        final Product product = products.get(0);
        assertThat(product.getName()).isEqualTo("Apple iPhone SE 3 2022 64GB 128GB 256GB");
    }
}
