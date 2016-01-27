package com.filsum;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableAutoConfiguration
@ComponentScan
public class RunnerApplication  extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(RunnerApplication.class, args);
	}
}
