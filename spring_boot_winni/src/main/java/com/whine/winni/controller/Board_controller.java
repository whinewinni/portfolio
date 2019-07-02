package com.whine.winni.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whine.winni.repository.Board_repository;
import com.whine.winni.vo.Board_vo;



@Controller
public class Board_controller {

	
	@Autowired
	private Board_repository board_repository;
	
	@RequestMapping(value="/nope")
	public String get_board_one(Model model) {
		Board_vo vo=board_repository.select_one(1);
		model.addAttribute("vo", vo);
		System.out.println(vo);
		
		return "hello";
	}
	@RequestMapping(value="/portfolio_artwork")
	public String go_portfolio(Model model) {
		return "portfolio_artwork";
	}
	@RequestMapping(value="/board")
	public String board_page(Model model) {
		return "board";
	}
	
	@CrossOrigin
	@RequestMapping(value="/get_list")
	public @ResponseBody Page<Board_vo> get_list(Model model, 
			@PageableDefault(sort= {"seqno"}, direction=Direction.DESC, size=7) Pageable pageable, 
			@RequestParam(defaultValue = "") String search) {
		Page<Board_vo> board_list = board_repository.select_list(search, pageable);
		//pageable.getPageSize()-1;
		
		
		System.out.println("=====================> " + board_list.getSize());
		
		for(Board_vo vo : board_list) { ///날짜 형식 포멧
			System.out.println(vo);
			String date=vo.getDate().split(" ")[0];
			vo.setDate(date);
		}
		return board_list;
	}
	
	@CrossOrigin
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public @ResponseBody String insert_data(Board_vo vo) {
		System.out.println("==============================");
		String content=vo.getContent().replaceAll("(\r\n|\r|\n|\n\r)", "<br/>");
		vo.setContent(content);
		
		vo.setDate(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
		board_repository.insert_data(vo);
		return "insert_data()";
	}
	@CrossOrigin
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public @ResponseBody String update_data(Board_vo vo) {
		String content=vo.getContent().replaceAll("(\r\n|\r|\n|\n\r)", "<br/>");
		vo.setContent(content);
		
		board_repository.insert_data(vo);
		return "update_data()";
	}
	
	@CrossOrigin
	@RequestMapping(value="/delete_data", method=RequestMethod.GET)
	public @ResponseBody String delete_data(int seq_no) {
		board_repository.delete_data(seq_no);
		return "delete_data()";
	}
	
	@CrossOrigin
	@RequestMapping(value="/update_hit", method=RequestMethod.GET)
	public @ResponseBody String update_hit(int seq_no) {
		board_repository.update_hit(seq_no);
		return "update_hit()";
	}
	
	
	
	@CrossOrigin
	@RequestMapping(value="check_pwd", method=RequestMethod.POST)
	public @ResponseBody String check_pwd(Board_vo check_vo) {
		
		System.out.println(check_vo);
		int result=board_repository.check_password(check_vo);
		return Integer.toString(result);
	}
	
	@CrossOrigin
	@RequestMapping(value="get_modify_data", method=RequestMethod.GET)
	public @ResponseBody Board_vo get_modify_info(int seq_no) {
		
		System.out.println(seq_no);
		Board_vo vo=board_repository.select_one(seq_no);
		return vo;
	}
	
	
	
	
	
	
	@CrossOrigin
	@RequestMapping(value="/paging")
	public @ResponseBody Page<Board_vo> paging(Pageable pageable) {
		
		Page<Board_vo> postPage = board_repository.paging(pageable);
		List<Board_vo> list = postPage.getContent();
		
		return postPage;
	}
	
	@CrossOrigin
	@RequestMapping(value="/like")
	public @ResponseBody List<Board_vo> like(String search) {
		
		List<Board_vo> list = board_repository.like(search);
		return list;
	}
	
	/** Json Test
	 * @param model
	 * @return
	 */
	@CrossOrigin
	@RequestMapping(value="/test")
	public @ResponseBody Map<String, String> test(Model model) {
		
		Map<String, String> resultMap = new HashMap<>();
		resultMap.put("Result", "1");
		return resultMap;
	}
	
}






















