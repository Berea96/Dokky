package com.kitri.dokky.category;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {

	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private CategoryDao dao;
	
	@Override
	public void addCategory(Category category) {
		dao = sqlSession.getMapper(CategoryDao.class);
		dao.insertCategory(category);
	}

	@Override
	public ArrayList<Category> getCategory(String category_1) {
		dao = sqlSession.getMapper(CategoryDao.class);
		return dao.selectCategory(category_1);
	}

	@Override
	public void editCategory(Category category) {
		dao = sqlSession.getMapper(CategoryDao.class);
		dao.updateCategory(category);
	}

	@Override
	public void delCategory(Category category) {
		dao = sqlSession.getMapper(CategoryDao.class);
		dao.deleteCategory(category);
	}
}
