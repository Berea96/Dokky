package com.kitri.dokky.article;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

//전체 게시판에 대한 컨트롤러
@Controller
@RequestMapping("/board")
public class BoardController {

	//의존성주입
	@Resource(name="boardService")
	private BoardService service;
	
	@RequestMapping("/getBoardByCategory/{category}")
	public ModelAndView getBoardByCategory(@PathVariable String category,
			ModelAndView mav) {
		
		ArrayList<Board> boardList = service.getBoardByCategory();
		
		mav.addObject("boardList", boardList);
		mav.setViewName("json/boardJson");
		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/writeBoard")
	public String writeBoard(Board board) {
		
		service.writeBoard(board);
		
		return "";
	}
	
	@ResponseBody
	@RequestMapping("/editboard")
	public String editBoard(Board board) {
		
		service.editBoard(board);
		
		return "";
	}
	
	@RequestMapping("/getBoardByNum/{board_no}")
	public String getBoardByNum(@PathVariable int board_no) {
		
		service.getBoardByNum(board_no);
		
		return "";
	}
	
	@ResponseBody
	@RequestMapping("/deleteBoard/{board_no}")
	public String deleteBoard(@PathVariable int board_no) {
		
		service.deleteBoard(board_no);
		
		return "";
	}
}
