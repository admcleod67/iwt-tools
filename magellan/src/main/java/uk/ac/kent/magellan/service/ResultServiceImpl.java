package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.Result;
import uk.ac.kent.magellan.domain.SearchResult;
import uk.ac.kent.magellan.repository.ResultRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class ResultServiceImpl implements ResultService {
    private static final Logger log = LoggerFactory.getLogger(ResultServiceImpl.class);

    private final ResultRepository resultRepository;

    @Autowired
    public ResultServiceImpl(final ResultRepository resultRepository) {
        this.resultRepository = resultRepository;
    }

    @Override
    @Transactional(readOnly = true)
    public Optional<Result> findResult(final long id) {
        log.debug("Finding a result by id = {}", id);
        return resultRepository.findById(id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Result> listResults() {
        log.debug("Listing all results");
        return resultRepository.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public List<SearchResult> findResults(final String terms, final String name, final String seller) {
        log.debug("Finding results");
        return resultRepository.findByTermsAndNameAndSeller(terms, name, seller);
    }

    @Override
    @Transactional(readOnly = true)
    public Optional<Long> getResultCount() {
        return Optional.of(resultRepository.count());
    }

    @Override
    @Transactional
    public void deleteResult(final long id) {
        log.debug("Deleting a result by id = {}", id);
        resultRepository.deleteById(id);
    }
}
