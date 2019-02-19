package com.kitri.dokky.category;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	public ModelAndView getCategory(ModelAndView mav) {
		
		ArrayList<Category> categoryList = service.getCategory();
		
		mav.addObject("categoryList", categoryList);
		mav.setViewName("json/categoryJson");
		
		return mav;
	}
	
	//카테고리 번호에 따른 카테고리 정보 불러오기 메소드
	@ResponseBody
	@RequestMapping("/getCategoryByNum")
	public String getCategorybyNum(@RequestParam("category_no")int category_no) {
		
		Category categoryInfo = service.getCategoryByNum(category_no);
		
		System.out.println(categoryInfo.getCategory_no());
		System.out.println(categoryInfo.getCategory_title());
		System.out.println(categoryInfo.getCategory_image());
		
		String result = categoryInfo.toString();
		
		System.out.println(result);
		
		return result;
	}
	
	//카테고리 수정 메소드
	@RequestMapping("/editCategory")
	public String editCategory(Category category) {
		
		service.editCategory(category);
		
		return "";
	}
	
	//카테고리 삭제 메소드
	@RequestMapping("/delCategory")
	public String delCategory(@RequestParam("category_no")int category_no) {
		
		service.delCategory(category_no);
		
		return "";
	}
}
