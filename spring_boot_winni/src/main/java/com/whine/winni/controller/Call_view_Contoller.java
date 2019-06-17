package com.whine.winni.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Call_view_Contoller {

	
	@RequestMapping(value ="/profile")
	public String profile_page() {
		return "profile";
	}
	@RequestMapping(value ="/about_me")
	public String aboutme_page() {
		return "about_me";
	}
	@RequestMapping(value ="/test_motion")
	public String test_motion() {
		return "test_motion";
	}
	
	

	
}
