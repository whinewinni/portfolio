package com.whine.winni.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Portfolio_controller {
	
	@RequestMapping(value = "/artwork")
	public String get_portfolio() {
		return "portfolio/artwork";
	}
	
	
	@RequestMapping(value="/admin_page")
	public String show_admin_page() {
		return "portfolio/admin_list";
	}
	
	
}
