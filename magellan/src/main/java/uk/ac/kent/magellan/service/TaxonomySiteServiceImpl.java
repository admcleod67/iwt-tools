package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.TaxonomySite;
import uk.ac.kent.magellan.repository.TaxonomySiteRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class TaxonomySiteServiceImpl implements TaxonomySiteService {
    private static final Logger log = LoggerFactory.getLogger(TaxonomySiteServiceImpl.class);

    private final TaxonomySiteRepository repository;

    @Autowired
    public TaxonomySiteServiceImpl(final TaxonomySiteRepository repository) {
        this.repository = repository;
    }

    @Override
    @Transactional(readOnly = true)
    public List<TaxonomySite> listTaxonomySites(final boolean active) {
        if (active) {
            log.debug("List active taxonomy sites");
            return repository.findByActiveOrderByName(true);
        }
        log.debug("List all taxonomy sites");
        return repository.findAll(Sort.by("name"));
    }
}
