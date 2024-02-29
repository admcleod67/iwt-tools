package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.Result;
import uk.ac.kent.magellan.domain.SearchResult;

import java.util.List;
import java.util.Optional;

public interface ResultService {
    Optional<Result> findResult(long id);

    List<Result> listResults();

    List<SearchResult> findResults(String terms, String name, String seller);

    Optional<Long> getResultCount();

    void deleteResult(long id);
}
