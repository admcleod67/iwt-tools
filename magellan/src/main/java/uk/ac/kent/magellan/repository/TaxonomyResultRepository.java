package uk.ac.kent.magellan.repository;

import uk.ac.kent.magellan.domain.TaxonomyResult;
import jakarta.validation.constraints.NotNull;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TaxonomyResultRepository extends JpaRepository<TaxonomyResult, Long> {
    @NotNull List<TaxonomyResult> findByTaxonomySearchId(Long taxonomySearchId);

    Long countByTaxonomySearchId(Long taxonomySearchId);

    void deleteByTaxonomySearchId(Long taxonomySearchId);
}
