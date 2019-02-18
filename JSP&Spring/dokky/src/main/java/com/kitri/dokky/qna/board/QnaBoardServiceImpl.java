package com.kitri.dokky.qna.board;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

//질문 게시판 Service를 Implements
@Service("qnaBoardService")
public class QnaBoardServiceImpl implements QnaBoardService {
	
	//의존성 주입
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private QnaBoardDao dao;

	//카테고리에 따른 게시물 불러오기 메소드
	@Override
	public ArrayList<QnaBoard> getBoardByCategory(String category) {
		dao = sqlSession.getMapper(QnaBoardDao.class);
		return dao.selectByCategory(category);
	}

	@Override
	public void writeBoard(QnaBoard qnaBoard) {
		dao = sqlSession.getMapper(QnaBoardDao.class);
		dao.insertBoard(qnaBoard);
	}

	@Override
	public void deleteBoard(int board_num) {
		dao = sqlSession.getMapper(QnaBoardDao.class);
		dao.deleteBoard(board_num);
	}

	@Override
	public void editBoard(QnaBoard qnaBoard) {
		dao = sqlSession.getMapper(QnaBoardDao.class);
		dao.updateBoard(qnaBoard);
	}

	@Override
	public QnaBoard getBoardByNum(int board_num) {
		dao = sqlSession.getMapper(QnaBoardDao.class);
		return dao.selectByNum(board_num);
	}
}
