package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.SearchPageResults;
import uk.ac.kent.magellan.domain.SearchTask;
import uk.ac.kent.magellan.utils.NotFoundException;

public interface SiteSearchService {
    SearchPageResults performSearch(String siteName, String searchTerms, String countryCode) throws NotFoundException;

    SearchPageResults performSearch(String siteName, String searchTerms, String countryCode, SearchTask searchTaskId) throws NotFoundException;
}
