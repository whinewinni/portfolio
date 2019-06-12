package com.whine.winni.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.whine.winni.file.payload.FileUploadResponse;
import com.whine.winni.repository.Artwork_repository;
import com.whine.winni.service.FileUploadDownloadService;
import com.whine.winni.vo.Admin_vo;
import com.whine.winni.vo.Artwork_vo;

@Controller
public class Portfolio_controller {
	
	@Autowired
	private Artwork_repository artwork_repository;
	
	@RequestMapping(value = "/artwork")
	public String get_portfolio(Model model) {
		
		List<Artwork_vo> artwork_list=artwork_repository.artwork_list();
		model.addAttribute("artwork_list", artwork_list);
		
		return "portfolio/artwork";
	}
	
	
	//------------------------------admin----------------------------------
	@RequestMapping(value="/admin_page")
	public String show_admin_page(Model model) {
		
		List<Artwork_vo> artwork_list=artwork_repository.artwork_list();
		
		model.addAttribute("artwork_vo", artwork_list);
		System.out.println(artwork_list);
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
	
	@Autowired
	private FileUploadDownloadService sevice;
	
	@RequestMapping(value="insert_imgfile", method=RequestMethod.POST)
	public String inert_artwork(
			@RequestParam("thumbnail_file") MultipartFile thumbnail,	
			@RequestParam("imgfile_file") MultipartFile imgfile, 
			Artwork_vo artwork_vo) {
		
		System.out.println(artwork_vo);
		
		String thumbnail_file_name=sevice.storeFile(thumbnail);
		String imgfile_name=sevice.storeFile(imgfile);
		
		String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()
								.path("/downloadFile/").path(imgfile_name).toUriString();
					
		//file.getContentType(), file.getSize()
		//return new FileUploadResponse(imgfile_name, fileDownloadUri, imgfile.getContentType(), imgfile.getSize());
		
		artwork_vo.setThumbnail(thumbnail_file_name);
		artwork_vo.setImgfile(imgfile_name);
		artwork_repository.insert_artwork(artwork_vo);
		System.out.println(artwork_vo);
		
		return "redirect:/admin_page";
	}
	
}





























