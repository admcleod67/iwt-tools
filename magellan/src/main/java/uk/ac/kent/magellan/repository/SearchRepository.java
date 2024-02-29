package uk.ac.kent.magellan.repository;

import uk.ac.kent.magellan.domain.Search;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SearchRepository extends JpaRepository<Search, Long> {
    List<Search> findBySearchTaskId(long id, Sort sort);

    List<Search> findBySearchTaskIdIsNull(Sort sort);
}
