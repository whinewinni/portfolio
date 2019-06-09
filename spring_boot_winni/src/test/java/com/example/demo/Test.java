package com.example.demo;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Test {
	public static void main(String[] args) {
		System.out.println(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"))); 
		System.out.print("Test : " + System.getProperty("line.separator"));
	}
}
