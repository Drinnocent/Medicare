package com.Medicare.Medicare;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.Medicare.Medicare.controller","com.Medicare.Medicare.model","com.Medicare.Medicare.repository","com.Medicare.Medicare.service"})
public class MedicareApplication {

	public static void main(String[] args) {
		SpringApplication.run(MedicareApplication.class, args);
	}

}
