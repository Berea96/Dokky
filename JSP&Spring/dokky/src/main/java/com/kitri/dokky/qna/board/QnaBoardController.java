package com.kitri.dokky.qna.board;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/qnArticle")
public class QnaBoardController {

	@Resource(name="qnaBoardService")
	private QnaBoardService service;
	
	@RequestMapping("/getBoardByCategory")
	public ModelAndView getBoardByCategory(@RequestParam("cate")String category,
			ModelAndView mav) {
		
		ArrayList<QnaBoard> boardList = service.getBoardByCategory(category);
		
		mav.addObject("boardList", boardList);
		mav.setViewName("json/boardJson");
		
		return mav;
	}
	
	@RequestMapping("/writeBoard")
	public String writeBoard(QnaBoard qnaBoard) {
		
		service.writeBoard(qnaBoard);
		
		return "";
	}
	
	@RequestMapping("/deleteBoard")
	public String deleteBoard(@RequestParam("board_num")int board_num) {
		
		service.deleteBoard(board_num);
		
		return "";
	}
	
	@RequestMapping("/editBoard")
	public String editBoard(QnaBoard qnaBoard) {
		
		service.editBoard(qnaBoard);
		
		return "";
	}
	
	@RequestMapping("/getBoardByNum")
	public String getBoardByNum(@RequestParam("board_num")int board_num) {
		
		service.getBoardByNum(board_num);
		
		return "";
	}
}
