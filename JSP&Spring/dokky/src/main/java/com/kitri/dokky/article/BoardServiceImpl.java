package com.kitri.dokky.article;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

//모든 게시판에 대한 Service를 Implements
@Service("boardService")
public class BoardServiceImpl implements BoardService {
	
	//의존성주입
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private BoardDao dao;

	//게시물 작성 메소드
	@Override
	public void writeBoard(Board board) {
		dao = sqlSession.getMapper(BoardDao.class);
		dao.insertBoard(board);
	}
	
	//카테고리에 따른 게시물 리스트 가져오기 메소드
	@Override
	public ArrayList<Board> getBoardByCategory(String category_1, String category_2) {
		dao = sqlSession.getMapper(BoardDao.class);
		return dao.selectBoardByCategory(category_1, category_2);
	}

	//게시물 번호에 따른 정보 가져오기 메소드
	@Override
	public Board getBoardByNum(int board_no) {
		dao = sqlSession.getMapper(BoardDao.class);
		return dao.selectBoardByNum(board_no);
	}

	//게시물 수정 메소드
	@Override
	public void editBoard(Board board) {
		dao = sqlSession.getMapper(BoardDao.class);
		dao.updateBoard(board);
	}

	//게시물 삭제 메소드
	@Override
	public void deleteBoard(int board_no) {
		dao = sqlSession.getMapper(BoardDao.class);
		dao.deleteBoard(board_no);
	}
}
