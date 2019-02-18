package com.kitri.dokky.basic.board;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/article")
public class BasicBoardController {
	
	@Resource(name="basicBoardService")
	private BasicBoardService service;
	
	@RequestMapping("/getBoardByCategory")
	public ModelAndView getBoardByCategory(@RequestParam("cate")String category,
			ModelAndView mav) {
		
		ArrayList<BasicBoard> boardList = service.getBoardByCategory(category);
		
		mav.addObject("boardList", boardList);
		mav.setViewName("json/boardJson");
		
		return mav;
	}
	
	@RequestMapping("/writeBoard")
	public String writeBoard(BasicBoard board) {
		
		service.writeBoard(board);
		
		return "";
	}
	
	@RequestMapping("/deleteBoard")
	public String deleteBoard(@RequestParam("board_num")int board_num) {
		
		service.deleteBoard(board_num);
		
		return "";
	}
	
	@RequestMapping("/editBoard")
	public String editBoard(BasicBoard board) {
		
		service.editBoard(board);
		
		return "";
	}
	
	@RequestMapping("/getBoardByNum")
	public String getBoardByNum(@RequestParam("board_num")int board_num) {
		
		service.getBoardByNum(board_num);
		
		return "";
	}
}
