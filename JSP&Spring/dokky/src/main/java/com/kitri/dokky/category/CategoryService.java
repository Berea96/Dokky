package com.kitri.dokky.category;

import java.util.ArrayList;

//카테고리 Service Interface
public interface CategoryService {
	void addCategory(Category category);
	ArrayList<Category> getCategory();
	Category getCategoryByNum(int category_no);
	void editCategory(Category category);
	void delCategory(int category_no);
}
