package com.kitri.dokky.basic.comment;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/basicComment")
public class BasicCommentController {
	
	@Resource(name="basicCommentService")
	private BasicCommentService service;
	
	@RequestMapping("/getCommentByNum")
	public ModelAndView getCommentByNum(@RequestParam("basic_board_no")int basic_board_no,
			ModelAndView mav) {
		
		ArrayList<BasicComment> basicCommentList = service.getCommentByNum(basic_board_no);
		
		mav.addObject("basicCommentList", basicCommentList);
		mav.setViewName("json/basicCommentJson");
		
		return mav;
	}
	
	@RequestMapping("/writeComment")
	public String writeComment(BasicComment basicComment) {
		
		service.writeComment(basicComment);
		
		return "";
	}
	
	@RequestMapping("/deleteComment")
	public String deleteComment(@RequestParam("basic_comment_no")int basic_comment_no) {
		
		service.deleteComment(basic_comment_no);
		
		return "";
	}
	
	@RequestMapping("/editComment")
	public String editComment(BasicComment basicComment) {
		
		service.editComment(basicComment);
		
		return "";
	}
}
