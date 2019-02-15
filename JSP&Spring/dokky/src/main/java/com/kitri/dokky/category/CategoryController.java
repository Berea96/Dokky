package com.kitri.dokky.category;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/category")
public class CategoryController {

	@Resource(name="categoryService")
	private CategoryService service;
	
	@RequestMapping("/addCategory")
	public String addCategory(Category category) {
		
		service.addCategory(category);
		
		return "";
	}
	
	@RequestMapping("/getCategory")
	public ModelAndView getCategory(@RequestParam("category_1")String category_1,
			ModelAndView mav) {
		
		ArrayList<Category> categoryList = service.getCategory(category_1);
		
		mav.addObject("categoryList", categoryList);
		mav.setViewName("json/categoryJson");
		
		return mav;
	}
	
	@RequestMapping("/editCategory")
	public String editCategory(Category category) {
		
		service.editCategory(category);
		
		return "";
	}
	
	@RequestMapping("/delCategory")
	public String delCategory(Category category) {
		
		service.delCategory(category);
		
		return "";
	}
}
