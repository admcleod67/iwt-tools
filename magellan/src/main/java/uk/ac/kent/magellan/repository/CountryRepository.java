package uk.ac.kent.magellan.repository;

import uk.ac.kent.magellan.domain.Country;
import jakarta.validation.constraints.NotNull;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CountryRepository extends JpaRepository<Country, Long> {
    @NotNull List<Country> findByActiveOrderByName(boolean active);

    Optional<Country> findByCode(String code);
}
