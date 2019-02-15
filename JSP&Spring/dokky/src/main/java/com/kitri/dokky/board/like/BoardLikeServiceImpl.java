package com.kitri.dokky.board.like;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

@Service("boardLikeService")
public class BoardLikeServiceImpl implements BoardLikeService {

	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private BoardLikeDao dao;
	
	@Override
	public void likeBoard(Like like) {
		dao = sqlSession.getMapper(BoardLikeDao.class);
		dao.insertLikeBoard(like);
	}

	@Override
	public void hateBoard(Like hate) {
		dao = sqlSession.getMapper(BoardLikeDao.class);
		dao.insertLikeBoard(hate);
	}

	@Override
	public ArrayList<Like> getLikeList(String mem_id) {
		dao = sqlSession.getMapper(BoardLikeDao.class);
		return dao.selectById(mem_id);
	}

	@Override
	public void cancelLikeBoard(Like like) {
		dao = sqlSession.getMapper(BoardLikeDao.class);
		dao.deleteLike(like);
	}

	@Override
	public void cancelHateBoard(Like hate) {
		dao = sqlSession.getMapper(BoardLikeDao.class);
		dao.deleteLike(hate);
	}
}
