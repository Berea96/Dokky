package com.kitri.dokky.category;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

//게시물 카테고리에 대한 컨트롤러
@Controller
@RequestMapping("/category")
public class CategoryController {

	//의존성 주입
	@Resource(name="categoryService")
	private CategoryService service;
	
	//카테고리 추가시 메소드
	@RequestMapping("/addCategory")
	public String addCategory(Category category) {
		
		service.addCategory(category);
		
		return "";
	}
	
	//큰 카테고리에 따른 작은 카테고리 불러오기 메소드
	@RequestMapping("/getCategory")
	public ModelAndView getCategory(@RequestParam("category_1")String category_1,
			ModelAndView mav) {
		
		ArrayList<Category> categoryList = service.getCategory(category_1);
		
		mav.addObject("categoryList", categoryList);
		mav.setViewName("json/categoryJson");
		
		return mav;
	}
	
	//카테고리 수정 메소드
	@RequestMapping("/editCategory")
	public String editCategory(Category category) {
		
		service.editCategory(category);
		
		return "";
	}
	
	//카테고리 삭제 메소드
	@RequestMapping("/delCategory")
	public String delCategory(Category category) {
		
		service.delCategory(category);
		
		return "";
	}
}
