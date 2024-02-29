package uk.ac.kent.magellan.repository;

import uk.ac.kent.magellan.domain.TaxonomySearch;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TaxonomySearchRepository extends JpaRepository<TaxonomySearch, Long> {
    TaxonomySearch findByTerms(String terms);
}
