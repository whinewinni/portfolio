package com.whine.winni.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.whine.winni.vo.Artwork_vo;

public interface ArtworkRepository_interface extends JpaRepository<Artwork_vo, Integer>{

	
	@Query(value = "select count(*) from admin where id=?1 and pwd=?2", nativeQuery = true)
	int check_admin(String id, String pwd);
	
	
	
}
