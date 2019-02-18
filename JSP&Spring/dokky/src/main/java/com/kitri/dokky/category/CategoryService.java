package com.kitri.dokky.category;

import java.util.ArrayList;

//카테고리 Service Interface
public interface CategoryService {
	void addCategory(Category category);
	ArrayList<Category> getCategory(String category_1);
	void editCategory(Category category);
	void delCategory(Category category);
}
