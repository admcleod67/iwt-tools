package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.Site;

import java.util.List;

public interface SiteService {
    List<Site> listSites(boolean active);
}
