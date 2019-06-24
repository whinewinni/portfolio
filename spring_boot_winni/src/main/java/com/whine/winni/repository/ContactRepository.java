package com.whine.winni.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.whine.winni.vo.Contact_vo;

@Repository
public class ContactRepository {

	@Autowired
	private ContactRepository_interface repository_interface;
	
	
	public void save_contact(Contact_vo vo) {
		repository_interface.save(vo);
	}
	
}
