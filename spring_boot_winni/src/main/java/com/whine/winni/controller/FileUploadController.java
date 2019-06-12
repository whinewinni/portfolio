package com.whine.winni.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.whine.winni.file.payload.FileUploadResponse;
import com.whine.winni.service.FileUploadDownloadService;

@Controller
public class FileUploadController {
	
	@Autowired
	private FileUploadDownloadService service;
	
	@GetMapping("file")
    public String controllerMain() {
        return "file";
    }
	
	   @PostMapping("uploadFile")
	    public FileUploadResponse uploadFile(@RequestParam("file") MultipartFile file) {
		   System.out.println("11111111111111111111111111");
	        String fileName = service.storeFile(file);
	        
	        String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()
	                                .path("/downloadFile/")
	                                .path(fileName)
	                                .toUriString();
	        
	        return new FileUploadResponse(fileName, fileDownloadUri, file.getContentType(), file.getSize());
	    }
}
