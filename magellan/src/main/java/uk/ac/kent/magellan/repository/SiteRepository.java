package uk.ac.kent.magellan.repository;

import uk.ac.kent.magellan.domain.Site;
import jakarta.validation.constraints.NotNull;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface SiteRepository extends JpaRepository<Site, Long> {
    @NotNull
    List<Site> findByActiveOrderByName(boolean active);

    Optional<Site> findByName(String name);
}
