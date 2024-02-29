package uk.ac.kent.magellan.domain;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
@Builder
public class SearchPageResults {
    private ResponseBody body;

    private String type;

    private Integer cost;

    @JsonProperty("initial-status-code")
    private Integer initialStatusCode;

    @JsonProperty("resolved-url")
    private String resolvedUrl;
}
