package com.whine.winni.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.data.jpa.repository.Query;

import com.whine.winni.vo.Board_vo;

public interface Repository_interface extends JpaRepository<Board_vo, Integer>{
	
	//order by date desc
	List<Board_vo> findAllByOrderByDateDesc();
	
	//like query
	List<Board_vo> findAllByTitleContaining(String title);
	
	@Query(value="select count(*) from board where seq_no=?1 and id=?2 and password=?3", nativeQuery=true)
	int check_password(int seq_no, String id, String pwassword);
	
	@Modifying
	@Query(value="update board set hit=hit+1 where seq_no=?1", nativeQuery=true)
	void update_hit(int seq_no);
	
	
}
