package de.orchit.sc668.confighub;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@EnableConfigServer
@SpringBootApplication
public class ConfighubApplication {

    public static void main(String[] args) {
        SpringApplication.run(ConfighubApplication.class, args);
    }

}
