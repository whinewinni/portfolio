package com.whine.winni.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Portfolio_controller {
	
	
	
	@RequestMapping(value = "/artwork")
	public String get_portfolio() {
		return "portfolio/artwork";
	}
	
	
	
	

}
