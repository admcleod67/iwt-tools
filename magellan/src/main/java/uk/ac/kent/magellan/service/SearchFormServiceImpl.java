package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.SearchForm;
import uk.ac.kent.magellan.repository.CountryRepository;
import uk.ac.kent.magellan.repository.SiteRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class SearchFormServiceImpl implements SearchFormService {
    private static final Logger log = LoggerFactory.getLogger(SearchFormServiceImpl.class);

    private final CountryRepository countryRepository;

    private final SiteRepository siteRepository;

    @Autowired
    public SearchFormServiceImpl(final CountryRepository countryRepository, final SiteRepository siteRepository) {
        this.countryRepository = countryRepository;
        this.siteRepository = siteRepository;
    }

    @Override
    @Transactional(readOnly = true)
    public SearchForm GetSearchForm() {
        return SearchForm.builder()
                .countries(countryRepository.findByActiveOrderByName(true))
                .sites(siteRepository.findByActiveOrderByName(true))
                .build();
    }
}
