package uk.ac.kent.magellan.scheduler;

import uk.ac.kent.magellan.domain.SearchTask;
import uk.ac.kent.magellan.service.SearchTaskService;
import uk.ac.kent.magellan.service.SiteSearchService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;

@Component
public class SearchScheduler {
    private static final Logger log = LoggerFactory.getLogger(SearchScheduler.class);
    private final SearchTaskService searchTaskService;

    private final SiteSearchService siteSearchService;

    public SearchScheduler(final SearchTaskService searchTaskService, final SiteSearchService siteSearchService) {
        this.searchTaskService = searchTaskService;
        this.siteSearchService = siteSearchService;
    }

    @Scheduled(fixedRate = 300000)
    @Transactional
    public void checkForScheduledTasks() {
        log.info("Checking for scheduled search tasks");
        List<SearchTask> searchTasks = searchTaskService.listSearchTasksDue();
        if (searchTasks != null && !searchTasks.isEmpty()) {
            runScheduledTask(searchTasks.get(0));
        }
    }

    public void runScheduledTask(final SearchTask searchTask) {
        log.info("Running a scheduled search task");
        final String countryCode = (searchTask.getCountry() != null) ? searchTask.getCountry().getCode() : null;
        siteSearchService.performSearch(searchTask.getSite().getName(), searchTask.getTerms(), countryCode, searchTask);
        searchTask.setLastRun(LocalDateTime.now());
        searchTaskService.updateSearchTask(searchTask);
    }
}
