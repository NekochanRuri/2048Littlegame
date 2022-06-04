package com.web;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@MapperScan("com.web.mapper")
@SpringBootApplication
public class helloWorldApplication {
    public static void main(String[] args) {
        SpringApplication.run(helloWorldApplication.class, args);
    }
}