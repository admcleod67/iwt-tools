package uk.ac.kent.magellan.repository;

import uk.ac.kent.magellan.domain.Result;
import uk.ac.kent.magellan.domain.SearchResult;
import jakarta.validation.constraints.NotNull;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ResultRepository extends JpaRepository<Result, Long> {
    @NotNull List<Result> findBySearchId(Long searchId);

    @Query(value =
            "SELECT r.id, r.name, r.seller_name, r.timestamp, st.name AS siteName " +
                    "FROM Search s JOIN Result r ON s.id = r.search_id JOIN Site st ON st.id = s.site_id " +
                    "WHERE LOWER(s.terms) LIKE CONCAT(LOWER(:terms), '%') " +
                    "AND LOWER(r.name) LIKE CONCAT(LOWER(:name), '%') " +
                    "AND LOWER(r.seller_name) LIKE CONCAT(LOWER(:seller), '%')",
            nativeQuery = true)
    List<SearchResult> findByTermsAndNameAndSeller(String terms, String name, String seller);

    @Query(value =
            "SELECT r.* FROM Search s JOIN Result r ON s.id = r.search_id " +
                    "WHERE s.search_task_id = :searchTaskId",
            nativeQuery = true)
    List<Result> findBySearchTaskId(Long searchTaskId);

    @Query(value =
            "SELECT rt.* FROM result rt WHERE id IN (" +
                    "SELECT max(r.id) FROM search s JOIN result r ON s.id = r.search_id " +
                    "WHERE s.search_task_id = :searchTaskId GROUP BY name, product_id, seller_name) " +
                    "ORDER BY timestamp DESC",
            nativeQuery = true)
    List<Result> findDistinctBySearchTaskId(Long searchTaskId);
}
