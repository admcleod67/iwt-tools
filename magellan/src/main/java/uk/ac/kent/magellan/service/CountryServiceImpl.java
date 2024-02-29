package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.Country;
import uk.ac.kent.magellan.repository.CountryRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CountryServiceImpl implements CountryService {
    private static final Logger log = LoggerFactory.getLogger(CountryServiceImpl.class);

    private final CountryRepository countryRepository;

    @Autowired
    public CountryServiceImpl(final CountryRepository countryRepository) {
        this.countryRepository = countryRepository;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Country> listCountries(final boolean active) {
        if (active) {
            return countryRepository.findByActiveOrderByName(true);
        }
        return countryRepository.findAll(Sort.by("name"));
    }
}
