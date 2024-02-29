package uk.ac.kent.magellan.controller;

import uk.ac.kent.magellan.domain.Statistics;
import uk.ac.kent.magellan.service.StatisticsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;

@RestController
public class DashboardController {
    private static final Logger log = LoggerFactory.getLogger(DashboardController.class);

    private final StatisticsService service;

    @Autowired
    public DashboardController(final StatisticsService service) {
        this.service = service;
    }

    @GetMapping("/statistics")
    public Statistics getResult() throws IOException, InterruptedException {
        log.info("Getting statistics");
        return service.getStatistics();
    }
}
