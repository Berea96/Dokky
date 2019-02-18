package com.kitri.dokky.comment.like;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

//댓글 좋아요에 대한 컨트롤러
@Controller
@RequestMapping("/commentLike")
public class CommentLikeController {

	//의존성 주입
	private CommentLikeService service;
	
	//댓글 좋아요 메소드
	@RequestMapping("/commentLike")
	public String likeComment(Like like) {
		
		service.likeComment(like);
		
		return "";
	}
	
	//회원 아이디에 따른 댓글 좋아요 목록 불러오기
	@RequestMapping("/getLikeList")
	public ModelAndView getLikeList(@RequestParam("mem_id")String mem_id,
			ModelAndView mav) {
		
		ArrayList<Like> likeList = service.getLikeList(mem_id);
		mav.addObject("likeList", likeList);
		mav.setViewName("json/commetListJson");
		
		return mav;
	}
	
	//좋아요 취소 메소드
	@RequestMapping("/cancleLike")
	public String cancleLikst(Like like) {
		
		service.cancleLike(like);
		
		return "";
	}
}
