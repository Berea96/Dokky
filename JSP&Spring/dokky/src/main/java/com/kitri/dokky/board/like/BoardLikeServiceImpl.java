package com.kitri.dokky.board.like;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

//게시판에 대한 좋아요 Service를 Implements
@Service("boardLikeService")
public class BoardLikeServiceImpl implements BoardLikeService {

	//의존성주입
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private BoardLikeDao dao;
	
	//게시물 좋아요 메소드
	@Override
	public void likeBoard(Like like) {
		dao = sqlSession.getMapper(BoardLikeDao.class);
		dao.insertLikeBoard(like);
	}

	//게시물 싫어요 메소드
	@Override
	public void hateBoard(Like hate) {
		dao = sqlSession.getMapper(BoardLikeDao.class);
		dao.insertLikeBoard(hate);
	}

	//회원 아이디에 따른 좋아요 목록 불러오기 메소드
	@Override
	public ArrayList<Like> getLikeList(String mem_id) {
		dao = sqlSession.getMapper(BoardLikeDao.class);
		return dao.selectById(mem_id);
	}

	//좋아요 취소 메소드
	@Override
	public void cancelLikeBoard(Like like) {
		dao = sqlSession.getMapper(BoardLikeDao.class);
		dao.deleteLike(like);
	}

	//싫어요 취소 메소드
	@Override
	public void cancelHateBoard(Like hate) {
		dao = sqlSession.getMapper(BoardLikeDao.class);
		dao.deleteLike(hate);
	}
}
