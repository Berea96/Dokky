package com.kitri.dokky.category;

import java.util.ArrayList;

//카테고리 Dao Interface
public interface CategoryDao {
	void insertCategory(Category category);
	ArrayList<Category> selectCategory(String category_1);
	void updateCategory(Category category);
	void deleteCategory(Category category);
}
