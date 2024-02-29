package uk.ac.kent.magellan.controller;

import uk.ac.kent.magellan.domain.Result;
import uk.ac.kent.magellan.domain.Search;
import uk.ac.kent.magellan.domain.SearchPageResults;
import uk.ac.kent.magellan.service.SearchService;
import uk.ac.kent.magellan.service.SiteSearchService;
import uk.ac.kent.magellan.utils.NotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

@RestController
public class SearchController {
    private static final Logger log = LoggerFactory.getLogger(SearchController.class);

    private final SearchService searchService;

    private final SiteSearchService siteSearchService;

    @Autowired
    public SearchController(final SearchService searchService, final SiteSearchService siteSearchService) {
        this.searchService = searchService;
        this.siteSearchService = siteSearchService;
    }

    @GetMapping("/searches")
    public List<Search> listSearches(@RequestParam(required = false, defaultValue = "false") final boolean all)
            throws IOException, InterruptedException {
        if (all) {
            log.info("Getting a list of all searches");
            return searchService.listSearches();
        } else {
            log.info("Getting a list of immediate searches");
            return searchService.listImmediateSearches();
        }
    }

    @GetMapping("/search/{id}")
    public ResponseEntity<Search> getSearch(@PathVariable(value = "id") final long id)
            throws IOException, InterruptedException {
        log.info("Getting search details for id = {}", id);
        return searchService.findSearch(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/search/{id}/results")
    public List<Result> listSearchResults(@PathVariable(value = "id") final long id)
            throws IOException, InterruptedException {
        log.info("Listing search results for id = {}", id);
        return searchService.listSearchResults(id);
    }

    @PostMapping("/search")
    public ResponseEntity<SearchPageResults> performSearchRequest(
            @RequestParam(name = "site") final String siteName,
            @RequestParam(name = "terms") final String searchTerms,
            @RequestParam(name = "country", required = false) final String countryCode)
            throws IOException, InterruptedException {
        try {
            log.info("Performing a search");
            return ResponseEntity.ok().body(siteSearchService.performSearch(siteName, searchTerms, countryCode));
        } catch (NotFoundException nfe) {
            log.warn("Bad search request");
            return ResponseEntity.badRequest().build();
        }
    }

    @DeleteMapping("/search/{id}")
    public void deleteSearch(@PathVariable(value = "id") final long id) {
        log.info("Deleting a search with id = {}", id);
        searchService.deleteSearch(id);
    }
}
