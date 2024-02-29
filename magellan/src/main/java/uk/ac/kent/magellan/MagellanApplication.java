package uk.ac.kent.magellan;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class MagellanApplication {
    public static void main(String[] args) {
        SpringApplication.run(MagellanApplication.class, args);
    }

}
