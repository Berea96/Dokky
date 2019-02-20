package com.kitri.dokky.basic.board;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

//기본 게시판에 대한 컨트롤러
@Controller
@RequestMapping("/article")
public class BasicBoardController {
	
	//의존성 주입
	@Resource(name="basicBoardService")
	private BasicBoardService service;
	
	//카테고리별로 게시판을 불러올 수 있도록 하는 부분
	@RequestMapping("/getBoardByCategory")
	public ModelAndView getBoardByCategory(@RequestParam("cate")String category,
			ModelAndView mav) {
		
		ArrayList<BasicBoard> boardList = service.getBoardByCategory(category);
		
		mav.addObject("boardList", boardList);
		mav.setViewName("json/boardJson");
		
		return mav;
	}
	
	//글작성에 대한 메소드
	@ResponseBody
	@RequestMapping("/writeBoard")
	public String writeBoard(BasicBoard board) {
		
		service.writeBoard(board);
		
		return "";
	}
	
	//글 삭제에 대한 메소드
	@RequestMapping("/deleteBoard")
	public String deleteBoard(@RequestParam("board_num")int board_num) {
		
		service.deleteBoard(board_num);
		
		return "";
	}
	
	//글 수정에 대한 메소드
	@RequestMapping("/editBoard")
	public String editBoard(BasicBoard board) {
		
		service.editBoard(board);
		
		return "";
	}
	
	//게시물 번호에 따라 게시물 정보를 가져오는 메소드
	@RequestMapping("/getBoardByNum")
	public String getBoardByNum(@RequestParam("board_num")int board_num) {
		
		service.getBoardByNum(board_num);
		
		return "";
	}
}
