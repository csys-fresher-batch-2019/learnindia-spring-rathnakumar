package com.educator.LearnFastSpring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
@ServletComponentScan("com.educator.learnfastweb")
public class LearnFastSpringApplication {

	public static void main(String[] args) {
		SpringApplication.run(LearnFastSpringApplication.class, args);
	}

}
