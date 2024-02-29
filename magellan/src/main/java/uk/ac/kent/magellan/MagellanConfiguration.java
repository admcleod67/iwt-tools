package uk.ac.kent.magellan;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.http.client.reactive.ReactorClientHttpConnector;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.util.DefaultUriBuilderFactory;
import reactor.netty.http.client.HttpClient;

@Configuration
@PropertySource("classpath:application.properties")
public class MagellanConfiguration {
    private final String apiBaseUrl;

    @Autowired
    public MagellanConfiguration(@Value("${service.url}") final String apiBaseUrl) {
        this.apiBaseUrl = apiBaseUrl;
    }

    @Bean
    public WebClient CrawlerWebClient(final WebClient.Builder webClientBuilder) {
        var uriBuilderFactory = new DefaultUriBuilderFactory(apiBaseUrl);
        uriBuilderFactory.setEncodingMode(DefaultUriBuilderFactory.EncodingMode.NONE);

        var httpClient = HttpClient.create()
                .httpResponseDecoder(spec -> spec.maxHeaderSize(32 * 1024));

        return webClientBuilder
                .baseUrl(apiBaseUrl)
                .clientConnector(new ReactorClientHttpConnector(httpClient))
                .uriBuilderFactory(uriBuilderFactory)
                .build();
    }
}
