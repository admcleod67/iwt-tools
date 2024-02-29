package uk.ac.kent.magellan.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
@Builder
public class TaxonomyEntry {
    private String name;

    private String details;

    private String redListStatus;

    private String vernacularName;

    private String family;

    private String order;
}
