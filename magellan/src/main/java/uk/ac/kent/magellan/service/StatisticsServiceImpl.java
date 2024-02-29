package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.Statistics;
import uk.ac.kent.magellan.repository.ResultRepository;
import uk.ac.kent.magellan.repository.SearchRepository;
import uk.ac.kent.magellan.repository.SearchTaskRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class StatisticsServiceImpl implements StatisticsService {
    private static final Logger log = LoggerFactory.getLogger(StatisticsServiceImpl.class);

    private final ResultRepository resultRepository;

    private final SearchRepository searchRepository;
    private final SearchTaskRepository searchTaskRepository;

    @Autowired
    public StatisticsServiceImpl(final ResultRepository resultRepository,
                                 final SearchRepository searchRepository,
                                 final SearchTaskRepository searchTaskRepository) {
        this.resultRepository = resultRepository;
        this.searchRepository = searchRepository;
        this.searchTaskRepository = searchTaskRepository;
    }

    @Override
    @Transactional(readOnly = true)
    public Statistics getStatistics() {
        log.debug("Getting statistics");
        return Statistics.builder()
                .resultsCount(resultRepository.count())
                .searchesCount(searchRepository.count())
                .searchTasksCount(searchTaskRepository.count())
                .build();
    }
}
