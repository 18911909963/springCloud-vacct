package com.kayak.eurekaserver;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

/**
 * 使用Eureka 服务发现.
 * 
 * @author Fun
 */
@SpringBootApplication
@EnableEurekaServer
public class EurekaServer {
	
	private static final Logger log = LoggerFactory.getLogger(EurekaServer.class);
	
	public static void main(String[] args) {
		log.info("===============================================================================");
		log.info("开始启动Eureka Server...");
		Thread.currentThread().setName("EurekaServer");
		SpringApplication.run(EurekaServer.class, args);
		log.info("Eureka Server 启动成功！");
		log.info("===============================================================================");
	}
}
