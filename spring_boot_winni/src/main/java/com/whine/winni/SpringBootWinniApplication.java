package com.whine.winni;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import com.whine.winni.file.property.FileUploadProperties;

@SpringBootApplication
@EnableConfigurationProperties({
	FileUploadProperties.class
})
public class SpringBootWinniApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootWinniApplication.class, args);
	}
}
