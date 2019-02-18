package com.kitri.dokky.board.scrap;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

//게시판에대한 스크랩 컨트롤러
@Controller
@RequestMapping("/boardScrap")
public class BoardScrapController {
	
	//의존성 주입
	@Resource(name="boardScrapService")
	private BoardScrapService service;
	
	//게시물 스크랩시 메소드
	@RequestMapping("/scrapBoard")
	public String scrapBoard(Scrap scrap) {
		
		service.scrapBoard(scrap);
		
		return "";
	}
	
	//스크랩 취소 메소드
	@RequestMapping("/cancleScrap")
	public String cancleScrap(Scrap scrap) {
		
		service.cancleScrap(scrap);
		
		return "";
	}
	
	//회원 아이디에 따른 스크랩 목록 불러오기 메소드
	@RequestMapping("/getScrapLits")
	public ModelAndView getScrapList(@RequestParam("mem_id")String mem_id,
			ModelAndView mav) {
		
		ArrayList<Scrap> scrapList = service.getScrapList(mem_id);
		mav.addObject("scrapList", scrapList);
		mav.setViewName("json/scrapJson");
		
		return mav;
	}
}
