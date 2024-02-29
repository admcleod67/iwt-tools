package uk.ac.kent.magellan.controller;

import uk.ac.kent.magellan.domain.SearchForm;
import uk.ac.kent.magellan.service.SearchFormService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;

@RestController
public class SearchFormController {
    private static final Logger log = LoggerFactory.getLogger(SearchFormController.class);

    private final SearchFormService service;

    @Autowired
    public SearchFormController(final SearchFormService service) {
        this.service = service;
    }

    @GetMapping("/search/form")
    public SearchForm GetSearchForm() throws IOException, InterruptedException {
        log.info("Getting the search form data");
        return service.GetSearchForm();
    }
}
