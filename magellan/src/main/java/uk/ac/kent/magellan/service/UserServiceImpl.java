package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.User;
import uk.ac.kent.magellan.repository.UserRepository;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {
    private static final Logger log = LoggerFactory.getLogger(UserServiceImpl.class);

    private final UserRepository userRepository;

    private final PasswordEncoder passwordEncoder;

    @Autowired
    public UserServiceImpl(final UserRepository userRepository, final PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public void createUser(final User user) {
        log.debug("Creating a new user");
        user.setId(0L);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userRepository.save(user);
    }

    @Override
    public List<User> listUsers() {
        log.debug("List all users");
        return userRepository.findAll();
    }

    @Override
    public void updateUser(final User user) {
        log.debug("Updating a user with id = {}", user.getId());

        if (user.getId() == 0) {
            log.error("Attempt to update a user with no id");
            throw new IllegalArgumentException("Expected a user id to update");
        }

        final Optional<User> existingUser = userRepository.findById(user.getId());
        if (existingUser.isEmpty()) {
            log.error("User not found with id = {}", user.getId());
            return;
        }

        if (StringUtils.isEmpty(user.getPassword())) {
            user.setPassword(existingUser.get().getPassword());
        } else {
            user.setPassword(passwordEncoder.encode(user.getPassword()));
        }

        userRepository.save(user);
    }

    @Override
    public void deleteUser(long id) {
        log.debug("Deleting a user with id = {}", id);
        userRepository.deleteById(id);
    }
}
