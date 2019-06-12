package com.whine.winni.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.whine.winni.file.exception.FileUploadException;
import com.whine.winni.file.property.FileUploadProperties;

@Service
public class FileUploadDownloadService {
	private final Path fileLocation;

	public FileUploadDownloadService(FileUploadProperties prop) {
		this.fileLocation = Paths.get(prop.getUploadDir()).toAbsolutePath().normalize();
		
		try {
			Files.createDirectories(this.fileLocation);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	   public String storeFile(MultipartFile file) {
	        String fileName = StringUtils.cleanPath(file.getOriginalFilename());
	        
	        try {
	            // 파일명에 부적합 문자가 있는지 확인한다.
	            if(fileName.contains(".."))
	                throw new FileUploadException("파일명에 부적합 문자가 포함되어 있습니다. " + fileName);
	            
	            Path targetLocation = this.fileLocation.resolve(fileName);
	            System.out.println(targetLocation.toString());
	            Files.copy(file.getInputStream(), targetLocation, StandardCopyOption.REPLACE_EXISTING);
	            return fileName;
	        }catch(Exception e) {
	            throw new FileUploadException("["+fileName+"] 파일 업로드에 실패하였습니다. 다시 시도하십시오.",e);
	        }
	    }

}
