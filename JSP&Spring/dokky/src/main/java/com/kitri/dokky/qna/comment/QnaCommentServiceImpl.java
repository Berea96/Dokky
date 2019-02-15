package com.kitri.dokky.qna.comment;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

@Service("qnaCommentService")
public class QnaCommentServiceImpl implements QnaCommentService {
	
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private QnaCommentDao dao;

	@Override
	public ArrayList<QnaComment> getCommentByNum(int qna_board_no) {
		dao = sqlSession.getMapper(QnaCommentDao.class);
		return dao.selectByNum(qna_board_no);
	}

	@Override
	public void writeComment(QnaComment qnaComment) {
		dao = sqlSession.getMapper(QnaCommentDao.class);
		dao.insertComment(qnaComment);
	}

	@Override
	public void deleteComment(int qna_comment_no) {
		dao = sqlSession.getMapper(QnaCommentDao.class);
		dao.deleteComment(qna_comment_no);
	}

	@Override
	public void editComment(QnaComment qnaComment) {
		dao = sqlSession.getMapper(QnaCommentDao.class);
		dao.updateComment(qnaComment);
	}

}
