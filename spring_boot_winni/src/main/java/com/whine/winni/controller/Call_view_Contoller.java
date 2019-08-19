package com.whine.winni.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whine.winni.repository.ContactRepository;
import com.whine.winni.vo.Contact_vo;

@Controller
public class Call_view_Contoller {

	
	@RequestMapping(value ="/")
	public String defalut_page() {
		return "main";
	}
	@RequestMapping(value ="/main")
	public String main_page() {
		return "main";
	}
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
	
	
	@Autowired
	private ContactRepository contact_repository;
	
	@CrossOrigin
	@RequestMapping(value="/send_contact", method=RequestMethod.POST)
	public @ResponseBody Map<String, String> insert_contact(Contact_vo vo) {
		
		String content=vo.getContent().replaceAll("(\r\n|\r|\n|\n\r)", "<br/>");
		vo.setContent(content);
		vo.setDate(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
		contact_repository.save_contact(vo);
		
		Map<String, String> resultMap = new HashMap<>();
		resultMap.put("Result", "1");
		return resultMap;  
	}
	
	

	
}
