package com.kitri.dokky.board.like;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

//게시판에 대한 좋아요 컨트롤러
@Controller
@RequestMapping("/boardLike")
public class BoardLikeController {

	//의존성 주입
	@Resource(name="boardLikeService")
	private BoardLikeService service;
	
	//게시판 좋아요 메소드
	@RequestMapping("/likeBoard")
	public String likeBoard(Like like) {
		
		service.likeBoard(like);
		
		return "";
	}
	
	//게시판 싫어요 메소드
	@RequestMapping("/hateBoard")
	public String hateBoard(Like hate) {
		
		service.hateBoard(hate);
		
		return "";
	}
	
	//회원 좋아요 목록을 불러오는 메소드
	@RequestMapping("/getLikeList")
	public ModelAndView getLikeList(@RequestParam("mem_id")String mem_id,
			ModelAndView mav) {
		
		ArrayList<Like> likeList = service.getLikeList(mem_id);
		
		mav.addObject("likeList", likeList);
		mav.setViewName("json/likeJson");
		
		return mav;
	}
	
	//좋아요 취소 메소드
	@RequestMapping("/cancleLike")
	public String cancleLike(Like like) {
		
		service.cancelLikeBoard(like);
		
		return "";
	}
	
	//싫어요 취소 메소드
	@RequestMapping("/cancleHate")
	public String cancleHate(Like hate) {
		
		
		service.cancelHateBoard(hate);
		
		return "";
	}
}
