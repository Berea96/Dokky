package com.kitri.dokky.qna.comment;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

//답변에 대한 컨트롤러
@Controller
@RequestMapping("/qnaComment")
public class QnaCommentController {

	//의존성 주입
	@Resource(name="qnaCommentService")
	private QnaCommentService service;
	
	//게시판 번호에 따른 답변 불러오기 메소드
	@RequestMapping("/getCommentByNum")
	public ModelAndView getCommentByNum(@RequestParam("qna_board_no")int qna_board_no,
			ModelAndView mav) {
		
		ArrayList<QnaComment> qnaCommentList = service.getCommentByNum(qna_board_no);
		
		mav.addObject("qnaCommentList", qnaCommentList);
		mav.setViewName("json/commentJson");
		
		return mav;
	}
	
	//답변 작성 메소드
	@RequestMapping("writeComment")
	public String writeComment(QnaComment qnaComment) {
		
		service.writeComment(qnaComment);
		
		return "";
	}
	
	//답변 삭제 메소드
	@RequestMapping("deleteComment")
	public String deleteComment(@RequestParam("qna_comment_no")int qna_comment_no) {
		
		service.deleteComment(qna_comment_no);
		
		return "";
	}
	
	//답변 수정 메소드
	@RequestMapping("editComment")
	public String editComment(QnaComment qnaComment) {
		
		service.editComment(qnaComment);
		
		return "";
	}
}
