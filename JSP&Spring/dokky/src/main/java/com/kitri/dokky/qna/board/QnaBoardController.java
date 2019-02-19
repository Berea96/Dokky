package com.kitri.dokky.qna.board;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

//질문게시판에 대한 컨트롤러
@Controller
@RequestMapping("/qnArticle")
public class QnaBoardController {

	//의존성 주입
	@Resource(name="qnaBoardService")
	private QnaBoardService service;
	
	//카테고리에 따른 게시판 이동 메소드
	@RequestMapping(value="/getBoardByCategory", method=RequestMethod.GET)
	public String getBoardByCategory(@RequestParam("cate")String category) {
		
		//ArrayList<QnaBoard> boardList = service.getBoardByCategory(category);
		
		return "board/qnaBoard";
	}
	
	//카테고리에 따른 게시판 목록 불러오기 메소드
	@RequestMapping(value="/getBoardByCategory", method=RequestMethod.POST)
	public ModelAndView getBoardByCategory(@RequestParam("cate")String category,
			ModelAndView mav) {
		
		ArrayList<QnaBoard> boardList = service.getBoardByCategory(category);
		
		mav.addObject("boardList", boardList);
		mav.setViewName("json/boardJson");
		
		return mav;
	}
	
	//글 작성 메소드
	@RequestMapping("/writeBoard")
	public String writeBoard(QnaBoard qnaBoard) {
		
		service.writeBoard(qnaBoard);
		
		return "";
	}
	
	//글 삭제 메소드
	@RequestMapping("/deleteBoard")
	public String deleteBoard(@RequestParam("board_num")int board_num) {
		
		service.deleteBoard(board_num);
		
		return "";
	}
	
	//글 수정 메소드
	@RequestMapping("/editBoard")
	public String editBoard(QnaBoard qnaBoard) {
		
		service.editBoard(qnaBoard);
		
		return "";
	}
	
	//글 번호에 따른 글 정보 불러오기 메소드
	@RequestMapping("/getBoardByNum")
	public String getBoardByNum(@RequestParam("board_num")int board_num) {
		
		service.getBoardByNum(board_num);
		
		return "";
	}
}
