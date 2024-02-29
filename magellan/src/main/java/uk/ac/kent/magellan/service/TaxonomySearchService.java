package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.TaxonomyPageResults;
import uk.ac.kent.magellan.domain.TaxonomyResult;
import uk.ac.kent.magellan.domain.TaxonomySearch;
import uk.ac.kent.magellan.utils.NotFoundException;

import java.util.List;
import java.util.Optional;

public interface TaxonomySearchService {
    TaxonomyPageResults performSearch(String siteName, String searchTerms) throws NotFoundException;

    Optional<TaxonomySearch> findSearch(long id);

    List<TaxonomyResult> listSearchResults(long searchId);

    List<TaxonomySearch> listSearches();

    void deleteSearch(long id);
}
