package com.kitri.dokky.board.scrap;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/boardScrap")
public class BoardScrapController {
	
	@Resource(name="boardScrapService")
	private BoardScrapService service;
	
	@RequestMapping("/scrapBoard")
	public String scrapBoard(Scrap scrap) {
		
		service.scrapBoard(scrap);
		
		return "";
	}
	
	@RequestMapping("/cancleScrap")
	public String cancleScrap(Scrap scrap) {
		
		service.cancleScrap(scrap);
		
		return "";
	}
	
	@RequestMapping("/getScrapLits")
	public ModelAndView getScrapList(@RequestParam("mem_id")String mem_id,
			ModelAndView mav) {
		
		ArrayList<Scrap> scrapList = service.getScrapList(mem_id);
		mav.addObject("scrapList", scrapList);
		mav.setViewName("json/scrapJson");
		
		return mav;
	}
}
