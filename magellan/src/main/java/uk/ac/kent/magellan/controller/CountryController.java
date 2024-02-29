package uk.ac.kent.magellan.controller;

import uk.ac.kent.magellan.domain.Country;
import uk.ac.kent.magellan.service.CountryService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

@RestController
public class CountryController {
    private static final Logger log = LoggerFactory.getLogger(CountryController.class);

    private final CountryService countryService;

    @Autowired
    public CountryController(final CountryService countryService) {
        this.countryService = countryService;
    }

    @GetMapping("/countries")
    public List<Country> listCountries() throws IOException, InterruptedException {
        log.info("Getting a list of countries");
        return countryService.listCountries(true);
    }
}
