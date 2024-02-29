package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.Result;
import uk.ac.kent.magellan.domain.Search;

import java.util.List;
import java.util.Optional;

public interface SearchService {
    List<Search> listSearches();

    List<Search> listImmediateSearches();

    Optional<Search> findSearch(long id);

    List<Result> listSearchResults(long searchId);

    void deleteSearch(long id);
}
