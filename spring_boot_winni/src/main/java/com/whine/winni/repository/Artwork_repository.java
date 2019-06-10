package com.whine.winni.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Artwork_repository {

	@Autowired
	private ArtworkRepository_interface repository_interface;
	
	
}
