package com.whine.winni.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.whine.winni.vo.Admin_vo;
import com.whine.winni.vo.Artwork_vo;

@Repository
public class Artwork_repository {

	@Autowired
	private ArtworkRepository_interface repository_interface;
	
	
	//check admin account
	public int check_admin(Admin_vo account) {
		return repository_interface.check_admin(account.getId(), account.getPwd());
	}
	
	
	public void insert_artwork(Artwork_vo artwork) {
		repository_interface.save(artwork);
	}
	
}
