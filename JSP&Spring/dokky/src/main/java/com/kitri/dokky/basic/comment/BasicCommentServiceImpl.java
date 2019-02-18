package com.kitri.dokky.basic.comment;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

//기본게시판에 대한 댓글의 Service를 Implements
@Service("basicCommentService")
public class BasicCommentServiceImpl implements BasicCommentService {
	
	//의존성 주입
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private BasicCommentDao dao;

	//게시판 번호에 따라 댓글 불러오기 메소드
	@Override
	public ArrayList<BasicComment> getCommentByNum(int basic_board_no) {
		dao = sqlSession.getMapper(BasicCommentDao.class);
		return dao.selectByNum(basic_board_no);
	}

	//댓글 쓰기 메소드
	@Override
	public void writeComment(BasicComment basicComment) {
		dao = sqlSession.getMapper(BasicCommentDao.class);
		dao.insertComment(basicComment);
	}

	//댓글 삭제 메소드
	@Override
	public void deleteComment(int basic_comment_no) {
		dao = sqlSession.getMapper(BasicCommentDao.class);
		dao.deleteComment(basic_comment_no);
	}

	//댓글 수정 메소드
	@Override
	public void editComment(BasicComment basicComment) {
		dao = sqlSession.getMapper(BasicCommentDao.class);
		dao.updateComment(basicComment);
	}

}
