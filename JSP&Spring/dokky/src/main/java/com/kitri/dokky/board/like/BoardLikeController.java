package com.kitri.dokky.board.like;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/boardLike")
public class BoardLikeController {

	@Resource(name="boardLikeService")
	private BoardLikeService service;
	
	@RequestMapping("/likeBoard")
	public String likeBoard(Like like) {
		
		service.likeBoard(like);
		
		return "";
	}
	
	@RequestMapping("/hateBoard")
	public String hateBoard(Like hate) {
		
		service.hateBoard(hate);
		
		return "";
	}
	
	@RequestMapping("/getLikeList")
	public ModelAndView getLikeList(@RequestParam("mem_id")String mem_id,
			ModelAndView mav) {
		
		ArrayList<Like> likeList = service.getLikeList(mem_id);
		
		mav.addObject("likeList", likeList);
		mav.setViewName("json/likeJson");
		
		return mav;
	}
	
	@RequestMapping("/cancleLike")
	public String cancleLike(Like like) {
		
		service.cancelLikeBoard(like);
		
		return "";
	}
	
	@RequestMapping("/cancleHate")
	public String cancleHate(Like hate) {
		
		
		service.cancelHateBoard(hate);
		
		return "";
	}
}
