package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.TaxonomySite;

import java.util.List;

public interface TaxonomySiteService {
    List<TaxonomySite> listTaxonomySites(boolean active);
}
