package uk.ac.kent.magellan.controller;

import uk.ac.kent.magellan.domain.Result;
import uk.ac.kent.magellan.domain.Search;
import uk.ac.kent.magellan.domain.SearchTask;
import uk.ac.kent.magellan.service.SearchTaskService;
import uk.ac.kent.magellan.utils.NotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

@RestController
public class SearchTaskController {
    private static final Logger log = LoggerFactory.getLogger(SearchTaskController.class);

    private final SearchTaskService searchTaskService;

    @Autowired
    public SearchTaskController(final SearchTaskService searchTaskService) {
        this.searchTaskService = searchTaskService;
    }

    @PostMapping("/search/task")
    public ResponseEntity<SearchTask> createSearchTask(
            @RequestParam(name = "site") final String siteName,
            @RequestParam(name = "terms") final String searchTerms,
            @RequestParam(name = "country", required = false) final String countryCode,
            @RequestParam final String frequency)
            throws IOException, InterruptedException {
        try {
            log.info("Creating a new search task");
            return ResponseEntity.ok(searchTaskService.createSearchTask(siteName, searchTerms, countryCode, frequency));
        } catch (NotFoundException | IllegalArgumentException e) {
            log.warn("Bad search task creation request");
            return ResponseEntity.badRequest().build();
        }
    }

    @GetMapping("/search/task/{id}")
    public ResponseEntity<SearchTask> getSearchTask(@PathVariable(value = "id") final long id)
            throws IOException, InterruptedException {
        log.info("Getting search task details for id = {}", id);
        return searchTaskService.findSearchTask(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PutMapping("/search/task/{id}")
    public void updateSearchTask(
            @PathVariable(value = "id") final long id,
            @RequestParam final String frequency,
            @RequestParam final boolean active)
            throws IOException, InterruptedException {
        log.info("Updating search task details for id = {}", id);
        searchTaskService.updateSearchTask(id, frequency, active);
    }

    @DeleteMapping("/search/task/{id}")
    public void deleteSearchTask(@PathVariable(value = "id") final long id) {
        log.info("Deleting a search task with id = {}", id);
        searchTaskService.deleteSearchTask(id);
    }

    @GetMapping("/search/task/{id}/history")
    public List<Search> listSearchTaskHistory(@PathVariable(value = "id") final long id)
            throws IOException, InterruptedException {
        log.info("Getting the search task history for id = {}", id);
        return searchTaskService.listSearchTaskHistory(id);
    }

    @GetMapping("/search/task/{id}/results")
    public List<Result> listSearchTaskResults(@PathVariable(value = "id") final long id,
                                              @RequestParam(required = false, defaultValue = "true") final boolean all)
            throws IOException, InterruptedException {
        if (all) {
            log.info("Getting all search task results for id = {}", id);
            return searchTaskService.listAllSearchTaskResults(id);
        } else {
            log.info("Getting distinct search task results for id = {}", id);
            return searchTaskService.listDistinctSearchTaskResults(id);
        }
    }

    @GetMapping("/search/tasks")
    public List<SearchTask> listSearchTasks() throws IOException, InterruptedException {
        log.info("Getting a list of search tasks");
        return searchTaskService.listSearchTasks();
    }
}
