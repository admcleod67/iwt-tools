package uk.ac.kent.magellan.controller;

import uk.ac.kent.magellan.domain.Result;
import uk.ac.kent.magellan.domain.SearchResult;
import uk.ac.kent.magellan.service.ResultService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

@RestController
public class ResultController {
    private static final Logger log = LoggerFactory.getLogger(ResultController.class);

    private final ResultService resultService;

    @Autowired
    public ResultController(final ResultService resultService) {
        this.resultService = resultService;
    }

    @GetMapping("/result/{id}")
    public ResponseEntity<Result> getResult(@PathVariable(value = "id") final long id) throws IOException, InterruptedException {
        log.info("Getting a result by id = {}", id);
        return resultService.findResult(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/results")
    public List<SearchResult> findResults(@RequestParam(required = false) final String terms,
                                          @RequestParam(required = false) final String name,
                                          @RequestParam(required = false) final String seller)
            throws IOException, InterruptedException {
        log.info("Finding a list of results");
        return resultService.findResults(terms, name, seller);
    }

    @DeleteMapping("/result/{id}")
    public void deleteResult(@PathVariable(value = "id") final long id) {
        log.info("Deleting a result by id = {}", id);
        resultService.deleteResult(id);
    }
}
