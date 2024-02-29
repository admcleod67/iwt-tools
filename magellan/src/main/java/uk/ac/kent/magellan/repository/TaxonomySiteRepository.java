package uk.ac.kent.magellan.repository;

import uk.ac.kent.magellan.domain.TaxonomySite;
import jakarta.validation.constraints.NotNull;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface TaxonomySiteRepository extends JpaRepository<TaxonomySite, Long> {
    @NotNull
    List<TaxonomySite> findByActiveOrderByName(boolean active);

    Optional<TaxonomySite> findByName(String name);
}
