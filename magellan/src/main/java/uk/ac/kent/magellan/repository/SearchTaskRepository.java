package uk.ac.kent.magellan.repository;

import uk.ac.kent.magellan.domain.SearchTask;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SearchTaskRepository extends JpaRepository<SearchTask, Long> {
    @Query(value =
            "SELECT * FROM search_task " +
                    "WHERE active AND (date(last_run) + frequency_days < now() OR last_run IS NULL)",
            nativeQuery = true)
    List<SearchTask> findSearchTasksDue();
}
