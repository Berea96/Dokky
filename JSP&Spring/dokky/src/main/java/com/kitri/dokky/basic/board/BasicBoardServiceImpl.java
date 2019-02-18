package com.kitri.dokky.basic.board;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

//기본 게시판에 대한 Service를 Implements
@Service("basicBoardService")
public class BasicBoardServiceImpl implements BasicBoardService {
	
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private BasicBoardDao dao;

	@Override
	public ArrayList<BasicBoard> getBoardByCategory(String category) {
		dao = sqlSession.getMapper(BasicBoardDao.class);
		return dao.selectByCategory(category);
	}

	@Override
	public void writeBoard(BasicBoard board) {
		dao = sqlSession.getMapper(BasicBoardDao.class);
		dao.insertBoard(board);
	}

	@Override
	public void deleteBoard(int board_num) {
		dao = sqlSession.getMapper(BasicBoardDao.class);
		dao.deleteBoard(board_num);
	}

	@Override
	public void editBoard(BasicBoard board) {
		dao = sqlSession.getMapper(BasicBoardDao.class);
		dao.updateBoard(board);
	}

	@Override
	public BasicBoard getBoardByNum(int board_num) {
		dao = sqlSession.getMapper(BasicBoardDao.class);
		return dao.selectByNum(board_num);
	}
}
