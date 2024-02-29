package uk.ac.kent.magellan.repository;

import uk.ac.kent.magellan.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository  extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
