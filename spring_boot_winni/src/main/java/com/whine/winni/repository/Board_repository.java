package com.whine.winni.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import com.whine.winni.vo.Board_vo;

@Repository
public class Board_repository {

	@Autowired
	private Repository_interface repository_interface;

	public Board_vo select_one(int seq_no) {
		return repository_interface.findById(seq_no).get();
	}

	public List<Board_vo> select_list() {
		return (List<Board_vo>) repository_interface.findAllByOrderByDateDesc();
	}

	public void insert_data(Board_vo vo) {
		repository_interface.save(vo);
	}

	public void delete_data(int seq_no) {
		repository_interface.deleteById(seq_no);
	}

	public int check_password(Board_vo vo) {
		return repository_interface.check_password(vo.getSeq_no(), vo.getId(), vo.getPassword());
	}
	
	@Transactional
	public void update_hit(int seq_no) { 
		repository_interface.update_hit(seq_no);
	}
	

	/**
	 * paging Test
	 * 
	 * @param pageable
	 * @return
	 */
	public Page<Board_vo> paging(Pageable pageable) {
		return repository_interface.findAll(pageable);
	}

	public List<Board_vo> like(String title) {
		return repository_interface.findAllByTitleContaining(title);
	}

}
