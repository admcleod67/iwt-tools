package uk.ac.kent.magellan.controller;

import uk.ac.kent.magellan.domain.User;
import uk.ac.kent.magellan.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

@RestController
public class UserController {
    private static final Logger log = LoggerFactory.getLogger(UserController.class);

    private final UserService userService;

    @Autowired
    public UserController(final UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/user")
    public void createUser(@RequestBody final User user) {
        log.info("Creating a new user");
        userService.createUser(user);
    }

    @GetMapping("/users")
    public List<User> listUsers() throws IOException, InterruptedException {
        log.info("Getting a list of users");
        return userService.listUsers();
    }

    @PutMapping("/user/{id}")
    public void updateUser(@PathVariable("id") final long id, @RequestBody final User user) {
        log.info("Updating a user with id = {}", id);
        user.setId(id);
        userService.updateUser(user);
    }


    @DeleteMapping("/user/{id}")
    public void deleteUser(@PathVariable("id") final long id) {
        log.info("Deleting a user with id = {}", id);
        userService.deleteUser(id);
    }
}
