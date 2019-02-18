package com.kitri.dokky.basic.board;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

//기본 게시판에 대한 Service를 Implements
@Service("basicBoardService")
public class BasicBoardServiceImpl implements BasicBoardService {
	
	//의존성 주입
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private BasicBoardDao dao;

	//카테고리별 게시판 목록 불러오기
	@Override
	public ArrayList<BasicBoard> getBoardByCategory(String category) {
		dao = sqlSession.getMapper(BasicBoardDao.class);
		return dao.selectByCategory(category);
	}

	//글 작성 메소드
	@Override
	public void writeBoard(BasicBoard board) {
		dao = sqlSession.getMapper(BasicBoardDao.class);
		dao.insertBoard(board);
	}

	//글 삭제 메소드
	@Override
	public void deleteBoard(int board_num) {
		dao = sqlSession.getMapper(BasicBoardDao.class);
		dao.deleteBoard(board_num);
	}

	//글 수정 메소드
	@Override
	public void editBoard(BasicBoard board) {
		dao = sqlSession.getMapper(BasicBoardDao.class);
		dao.updateBoard(board);
	}

	//글 번호에 따른 자세히보기 메소드
	@Override
	public BasicBoard getBoardByNum(int board_num) {
		dao = sqlSession.getMapper(BasicBoardDao.class);
		return dao.selectByNum(board_num);
	}
}
