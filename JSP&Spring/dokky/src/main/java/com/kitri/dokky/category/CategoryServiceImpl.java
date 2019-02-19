package com.kitri.dokky.category;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

//카테고리 Service를 implements
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {

	//의존성 주입
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private CategoryDao dao;
	
	//카테고리 추가 메소드
	@Override
	public void addCategory(Category category) {
		dao = sqlSession.getMapper(CategoryDao.class);
		dao.insertCategory(category);
	}

	//큰 카테고리에 따른 작은 카테고리를 불러오는 메소드
	@Override
	public ArrayList<Category> getCategory() {
		dao = sqlSession.getMapper(CategoryDao.class);
		return dao.selectCategory();
	}
	
	@Override
	public Category getCategoryByNum(int category_no) {
		dao = sqlSession.getMapper(CategoryDao.class);
		return dao.selectCategoryByNum(category_no);
	}

	//카테고리 수정 메소드
	@Override
	public void editCategory(Category category) {
		dao = sqlSession.getMapper(CategoryDao.class);
		dao.updateCategory(category);
	}

	//카테고리 삭제 메소드
	@Override
	public void delCategory(int category_no) {
		dao = sqlSession.getMapper(CategoryDao.class);
		dao.deleteCategory(category_no);
	}
}
