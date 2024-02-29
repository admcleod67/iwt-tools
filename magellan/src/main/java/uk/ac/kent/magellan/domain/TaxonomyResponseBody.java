package uk.ac.kent.magellan.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
@Builder
public class TaxonomyResponseBody {
    private String title;

    private List<TaxonomyEntry> items;
}
