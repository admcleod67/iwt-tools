package uk.ac.kent.magellan.controller;

import uk.ac.kent.magellan.domain.Site;
import uk.ac.kent.magellan.service.SiteService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

@RestController
public class SiteController {
    private static final Logger log = LoggerFactory.getLogger(SiteController.class);

    private final SiteService service;

    @Autowired
    public SiteController(final SiteService service) {
        this.service = service;
    }

    @GetMapping("/sites")
    public List<Site> listSites() throws IOException, InterruptedException {
        log.info("Getting a list of sites");
        return service.listSites(true);
    }
}
