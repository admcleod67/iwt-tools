package uk.ac.kent.magellan.controller;

import uk.ac.kent.magellan.domain.TaxonomySite;
import uk.ac.kent.magellan.service.TaxonomySiteService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

@RestController
public class TaxonomySiteController {
    private static final Logger log = LoggerFactory.getLogger(SiteController.class);

    private final TaxonomySiteService service;

    @Autowired
    public TaxonomySiteController(final TaxonomySiteService service) {
        this.service = service;
    }

    @GetMapping("/taxonomy/sites")
    public List<TaxonomySite> listTaxonomySites() throws IOException, InterruptedException {
        log.info("Getting a list of taxonomy sites");
        return service.listTaxonomySites(true);
    }
}
