package com.kitri.dokky.basic.board;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

@Service("basicBoardService")
public class BasicBoardServiceImpl implements BasicBoardService {
	
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private BoardDao dao;

	@Override
	public ArrayList<Board> getBoardByCategory(String category) {
		dao = sqlSession.getMapper(BoardDao.class);
		return dao.selectByCategory(category);
	}

	@Override
	public void writeBoard(Board board) {
		dao = sqlSession.getMapper(BoardDao.class);
		dao.insertBoard(board);
	}

	@Override
	public void deleteBoard(int board_num) {
		dao = sqlSession.getMapper(BoardDao.class);
		dao.deleteBoard(board_num);
	}

	@Override
	public void editBoard(Board board) {
		dao = sqlSession.getMapper(BoardDao.class);
		dao.updateBoard(board);
	}

	@Override
	public Board getBoardByNum(int board_num) {
		dao = sqlSession.getMapper(BoardDao.class);
		return dao.selectByNum(board_num);
	}
}
