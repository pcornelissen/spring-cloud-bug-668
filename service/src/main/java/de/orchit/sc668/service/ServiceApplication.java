package de.orchit.sc668.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ServiceApplication implements CommandLineRunner {

    @Value("${my.property:noInfo}")
    String propertyValue;

    public static void main(String[] args) {
        SpringApplication.run(ServiceApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        System.out.println("##########################");
        System.out.println("Value: "+propertyValue);
        System.out.println("##########################");
    }
}
