package com.ufrcni.isslemproject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCrypt;

@SpringBootApplication
public class IsslemProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(IsslemProjectApplication.class, args);
	}

}
