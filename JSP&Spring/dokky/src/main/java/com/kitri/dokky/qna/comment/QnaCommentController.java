package com.kitri.dokky.qna.comment;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/qnaComment")
public class QnaCommentController {

	@Resource(name="qnaCommentService")
	private QnaCommentService service;
	
	@RequestMapping("/getCommentByNum")
	public ModelAndView getCommentByNum(@RequestParam("qna_board_no")int qna_board_no,
			ModelAndView mav) {
		
		ArrayList<QnaComment> qnaCommentList = service.getCommentByNum(qna_board_no);
		
		mav.addObject("qnaCommentList", qnaCommentList);
		mav.setViewName("json/commentJson");
		
		return mav;
	}
	
	@RequestMapping("writeComment")
	public String writeComment(QnaComment qnaComment) {
		
		service.writeComment(qnaComment);
		
		return "";
	}
	
	@RequestMapping("deleteComment")
	public String deleteComment(@RequestParam("qna_comment_no")int qna_comment_no) {
		
		service.deleteComment(qna_comment_no);
		
		return "";
	}
	
	@RequestMapping("editComment")
	public String editComment(QnaComment qnaComment) {
		
		service.editComment(qnaComment);
		
		return "";
	}
}
