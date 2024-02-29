package uk.ac.kent.magellan.controller;

import uk.ac.kent.magellan.domain.SearchPageResults;
import uk.ac.kent.magellan.domain.TaxonomyResult;
import uk.ac.kent.magellan.domain.TaxonomySearch;
import uk.ac.kent.magellan.service.TaxonomySearchService;
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
public class TaxonomySearchController {
    private static final Logger log = LoggerFactory.getLogger(TaxonomySearchController.class);

    private final TaxonomySearchService searchService;

    @Autowired
    public TaxonomySearchController(final TaxonomySearchService searchService) {
        this.searchService = searchService;
    }

    @GetMapping("/taxonomy/searches")
    public List<TaxonomySearch> listSearches() throws IOException, InterruptedException {
        log.info("Getting a list of taxonomy searches");
        return searchService.listSearches();
    }

    @GetMapping("/taxonomy/search/{id}")
    public ResponseEntity<TaxonomySearch> getSearch(@PathVariable(value = "id") final long id)
            throws IOException, InterruptedException {
        log.info("Getting taxonomy search details for id = {}", id);
        return searchService.findSearch(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/taxonomy/search/{id}")
    public void deleteSearch(@PathVariable(value = "id") final long id)
            throws IOException, InterruptedException {
        log.info("Deleting taxonomy search with id = {}", id);
        searchService.deleteSearch(id);
    }

    @GetMapping("/taxonomy/search/{id}/results")
    public List<TaxonomyResult> listSearchResults(@PathVariable(value = "id") final long id)
            throws IOException, InterruptedException {
        log.info("Listing taxonomy search results for id = {}", id);
        return searchService.listSearchResults(id);
    }

    @PostMapping("/taxonomy/search")
    public ResponseEntity<SearchPageResults> performSearchRequest(
            @RequestParam(name = "site") final String siteName,
            @RequestParam(name = "terms") final String searchTerms)
            throws IOException, InterruptedException {
        try {
            log.info("Performing a taxonomy search");
            searchService.performSearch(siteName, searchTerms);
            return ResponseEntity.ok().build();
        } catch (NotFoundException nfe) {
            log.warn("Bad taxonomy search request");
            return ResponseEntity.badRequest().build();
        }
    }
}
