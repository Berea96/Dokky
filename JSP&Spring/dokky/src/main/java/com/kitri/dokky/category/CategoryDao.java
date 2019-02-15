package com.kitri.dokky.category;

import java.util.ArrayList;

public interface CategoryDao {
	void insertCategory(Category category);
	ArrayList<Category> selectCategory(String category_1);
	void updateCategory(Category category);
	void deleteCategory(Category category);
}
