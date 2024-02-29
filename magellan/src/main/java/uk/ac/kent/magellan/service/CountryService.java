package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.Country;

import java.util.List;

public interface CountryService {
    List<Country> listCountries(boolean active);
}
