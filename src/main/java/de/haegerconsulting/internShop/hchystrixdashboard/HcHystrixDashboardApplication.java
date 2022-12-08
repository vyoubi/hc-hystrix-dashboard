package de.haegerconsulting.internShop.hchystrixdashboard;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.hystrix.dashboard.EnableHystrixDashboard;

@SpringBootApplication
@EnableEurekaClient
@EnableHystrixDashboard
public class HcHystrixDashboardApplication {

	public static void main(String[] args) {
		SpringApplication.run(HcHystrixDashboardApplication.class, args);
	}

}
