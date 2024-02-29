package uk.ac.kent.magellan.service;

import uk.ac.kent.magellan.domain.User;

import java.util.List;

public interface UserService {
    void createUser(User user);

    public List<User> listUsers();

    void updateUser(User user);

    void deleteUser(long id);
}
