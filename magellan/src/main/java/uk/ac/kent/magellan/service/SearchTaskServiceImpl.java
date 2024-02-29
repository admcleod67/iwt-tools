package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.Country;
import uk.ac.kent.magellan.domain.Result;
import uk.ac.kent.magellan.domain.Search;
import uk.ac.kent.magellan.domain.SearchTask;
import uk.ac.kent.magellan.domain.Site;
import uk.ac.kent.magellan.domain.TaskFrequency;
import uk.ac.kent.magellan.repository.CountryRepository;
import uk.ac.kent.magellan.repository.ResultRepository;
import uk.ac.kent.magellan.repository.SearchRepository;
import uk.ac.kent.magellan.repository.SearchTaskRepository;
import uk.ac.kent.magellan.repository.SiteRepository;
import uk.ac.kent.magellan.utils.NotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class SearchTaskServiceImpl implements SearchTaskService {
    private static final Logger log = LoggerFactory.getLogger(SearchTaskServiceImpl.class);

    private final SearchTaskRepository searchTaskRepository;

    private final SiteRepository siteRepository;

    private final SearchRepository searchRepository;

    private final ResultRepository resultRepository;
    private final CountryRepository countryRepository;

    @Autowired
    public SearchTaskServiceImpl(final SearchTaskRepository searchTaskRepository,
                                 final SiteRepository siteRepository,
                                 final SearchRepository searchRepository,
                                 final ResultRepository resultRepository,
                                 final CountryRepository countryRepository) {
        this.searchTaskRepository = searchTaskRepository;
        this.siteRepository = siteRepository;
        this.searchRepository = searchRepository;
        this.resultRepository = resultRepository;
        this.countryRepository = countryRepository;
    }

    @Override
    @Transactional(readOnly = true)
    public List<SearchTask> listSearchTasks() {
        log.debug("Listing all search tasks");
        return searchTaskRepository.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public Optional<SearchTask> findSearchTask(final long id) {
        log.debug("Finding a search task by id = {}", id);
        return searchTaskRepository.findById(id);
    }

    @Override
    @Transactional
    public SearchTask createSearchTask(final String siteName,
                                       final String searchTerms,
                                       final String countryCode,
                                       final String frequency) {
        log.debug("Create a new search task");

        final Site site = siteRepository.findByName(siteName)
                .orElseThrow(NotFoundException::new);

        final Country country = (countryCode == null) ? null : countryRepository.findByCode(countryCode)
                .orElseThrow(NotFoundException::new);

        final int frequencyDays = TaskFrequency.fromDisplayName(frequency).getDays();

        final SearchTask searchTask = SearchTask.builder()
                .site(site)
                .terms(searchTerms)
                .country(country)
                .frequencyDays(frequencyDays)
                .active(true)
                .build();

        return searchTaskRepository.save(searchTask);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Search> listSearchTaskHistory(final long id) {
        log.debug("List the search task history for id = {}", id);
        return searchRepository.findBySearchTaskId(id, Sort.by(Sort.Direction.DESC, "timestamp"));
    }

    @Override
    @Transactional(readOnly = true)
    public List<Result> listAllSearchTaskResults(final long id) {
        log.debug("List all search task results for id = {}", id);
        return resultRepository.findBySearchTaskId(id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Result> listDistinctSearchTaskResults(final long id) {
        log.debug("List distinct search task results for id = {}", id);
        return resultRepository.findDistinctBySearchTaskId(id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<SearchTask> listSearchTasksDue() {
        log.debug("List search tasks due");
        return searchTaskRepository.findSearchTasksDue();
    }

    @Override
    @Transactional
    public void updateSearchTask(final SearchTask searchTask) {
        log.debug("Updating a search task with id = {}", searchTask.getId());
        if (searchTask.getId() == 0) {
            log.error("Attempt to update a search task with no id");
            throw new IllegalArgumentException("Expected a search task id to update");
        }
        log.debug("Updating a search task");
        searchTaskRepository.save(searchTask);
    }

    @Override
    @Transactional
    public void updateSearchTask(final long id, final String frequency, final boolean active) {
        log.debug("Updating a search task with id = {}", id);

        if (id == 0) {
            log.error("Attempt to update a search task with no id");
            throw new IllegalArgumentException("Expected a search task id to update");
        }

        final Optional<SearchTask> existingTask = searchTaskRepository.findById(id);
        if (existingTask.isEmpty()) {
            log.error("Search task not found with id = {}", id);
            return;
        }

        final SearchTask searchTask = existingTask.get();
        searchTask.setFrequencyDays(TaskFrequency.fromDisplayName(frequency).getDays());
        searchTask.setActive(active);
        searchTaskRepository.save(searchTask);
    }

    @Override
    @Transactional
    public void deleteSearchTask(long id) {
        log.debug("Deleting a search task with id = {}", id);
        searchTaskRepository.deleteById(id);
    }
}
