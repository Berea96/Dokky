package com.kitri.dokky.category;

import java.util.ArrayList;

//카테고리 Dao Interface
public interface CategoryDao {
	void insertCategory(Category category);
	ArrayList<Category> selectCategory();
	Category selectCategoryByNum(int category_no);
	void updateCategory(Category category);
	void deleteCategory(int cateogyr_no);
}
