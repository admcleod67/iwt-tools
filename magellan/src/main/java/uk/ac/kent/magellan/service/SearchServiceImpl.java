package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.Result;
import uk.ac.kent.magellan.domain.Search;
import uk.ac.kent.magellan.repository.ResultRepository;
import uk.ac.kent.magellan.repository.SearchRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class SearchServiceImpl implements SearchService {
    private static final Logger log = LoggerFactory.getLogger(SearchServiceImpl.class);

    private final SearchRepository searchRepository;

    private final ResultRepository resultRepository;

    @Autowired
    public SearchServiceImpl(final SearchRepository searchRepository, final ResultRepository resultRepository) {
        this.searchRepository = searchRepository;
        this.resultRepository = resultRepository;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Search> listSearches() {
        log.debug("List all searches");
        return searchRepository.findAll(Sort.by(Sort.Direction.DESC, "timestamp"));
    }

    @Override
    @Transactional(readOnly = true)
    public List<Search> listImmediateSearches() {
        log.debug("List all immediate searches");
        return searchRepository.findBySearchTaskIdIsNull(Sort.by(Sort.Direction.DESC, "timestamp"));
    }

    @Override
    @Transactional(readOnly = true)
    public Optional<Search> findSearch(final long id) {
        log.debug("Find search details by id = {}", id);
        return searchRepository.findById(id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Result> listSearchResults(final long searchId) {
        log.debug("List search results by search id = {}", searchId);
        return resultRepository.findBySearchId(searchId);
    }

    @Override
    @Transactional
    public void deleteSearch(final long id) {
        log.debug("Delete a search with id = {}", id);
        searchRepository.deleteById(id);
    }
}
