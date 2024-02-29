package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.Site;
import uk.ac.kent.magellan.repository.SiteRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class SiteServiceImpl implements SiteService {
    private static final Logger log = LoggerFactory.getLogger(SiteServiceImpl.class);

    private final SiteRepository siteRepository;

    @Autowired
    public SiteServiceImpl(final SiteRepository siteRepository) {
        this.siteRepository = siteRepository;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Site> listSites(final boolean active) {
        if (active) {
            log.debug("List active sites");
            return siteRepository.findByActiveOrderByName(true);
        }
        log.debug("List all sites");
        return siteRepository.findAll(Sort.by("name"));
    }
}
