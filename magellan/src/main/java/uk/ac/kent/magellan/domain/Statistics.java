package uk.ac.kent.magellan.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
@Builder
public class Statistics {
    private long resultsCount;

    private long searchesCount;

    private long searchTasksCount;
}
