package com.whine.winni.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.whine.winni.repository.Artwork_repository;
import com.whine.winni.vo.Admin_vo;
import com.whine.winni.vo.Artwork_vo;

@Controller
public class Portfolio_controller {
	
	@Autowired
	private Artwork_repository artwork_repository;
	
	@RequestMapping(value = "/artwork")
	public String get_portfolio() {
		return "portfolio/artwork";
	}
	
	@RequestMapping(value="/admin_page")
	public String show_admin_page() {
		return "portfolio/admin_list";
	}
	
	
	@RequestMapping(value="/admin_login", method = RequestMethod.POST)
	public String admin_login(Admin_vo admin) {
		
		int check=artwork_repository.check_admin(admin);
		
		if (check==1) {
			return "redirect:/admin_page";
		}else {
			return "redirect:/artwork";
		}
	}
	
	public	String inert_artwork(@RequestPart MultipartFile files , Artwork_vo artwork_vo) {
		
		if(files.isEmpty()) {
			return "redirect:/admin_page";
		}else {
			String file_name=files.getOriginalFilename();
			//String file_extension=FilenameU
		}
		
		
		return null;
	}
	
}





























