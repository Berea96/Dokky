package com.kitri.dokky.category;

import java.util.ArrayList;

public interface CategoryService {
	void addCategory(Category category);
	ArrayList<Category> getCategory(String category_1);
	void editCategory(Category category);
	void delCategory(Category category);
}
