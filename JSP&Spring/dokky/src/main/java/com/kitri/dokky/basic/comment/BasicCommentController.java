package com.kitri.dokky.basic.comment;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

//기본게시판에 대한 댓글의 컨트롤러
@Controller
@RequestMapping("/basicComment")
public class BasicCommentController {
	
	//의존성주입
	@Resource(name="basicCommentService")
	private BasicCommentService service;
	
	//게시판 번호로 댓글 목록을 불러오는 메소드
	@RequestMapping("/getCommentByNum")
	public ModelAndView getCommentByNum(@RequestParam("basic_board_no")int basic_board_no,
			ModelAndView mav) {
		
		ArrayList<BasicComment> basicCommentList = service.getCommentByNum(basic_board_no);
		
		mav.addObject("basicCommentList", basicCommentList);
		mav.setViewName("json/basicCommentJson");
		
		return mav;
	}
	
	//댓글 작성 메소드
	@RequestMapping("/writeComment")
	public String writeComment(BasicComment basicComment) {
		
		service.writeComment(basicComment);
		
		return "";
	}
	
	//댓글 삭제 메소드
	@RequestMapping("/deleteComment")
	public String deleteComment(@RequestParam("basic_comment_no")int basic_comment_no) {
		
		service.deleteComment(basic_comment_no);
		
		return "";
	}
	
	//댓글 수정 메소드
	@RequestMapping("/editComment")
	public String editComment(BasicComment basicComment) {
		
		service.editComment(basicComment);
		
		return "";
	}
}
