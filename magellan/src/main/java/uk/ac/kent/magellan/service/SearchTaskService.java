package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.Result;
import uk.ac.kent.magellan.domain.Search;
import uk.ac.kent.magellan.domain.SearchTask;

import java.util.List;
import java.util.Optional;

public interface SearchTaskService {
    List<SearchTask> listSearchTasks();

    Optional<SearchTask> findSearchTask(long id);

    SearchTask createSearchTask(String siteName, String searchTerms, String countryCode, String frequency);

    List<Search> listSearchTaskHistory(long id);

    List<Result> listAllSearchTaskResults(long id);

    List<Result> listDistinctSearchTaskResults(long id);

    List<SearchTask> listSearchTasksDue();

    void updateSearchTask(SearchTask searchTask);

    void updateSearchTask(long id, String frequency, boolean active);

    void deleteSearchTask(long id);
}
