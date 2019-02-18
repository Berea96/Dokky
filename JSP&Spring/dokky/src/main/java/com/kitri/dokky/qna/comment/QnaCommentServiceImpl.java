package com.kitri.dokky.qna.comment;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

//답변 Service를 Implements
@Service("qnaCommentService")
public class QnaCommentServiceImpl implements QnaCommentService {
	
	//의존성 주입
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private QnaCommentDao dao;

	//게시물 번호에 따른 답변 불러오기 메소드
	@Override
	public ArrayList<QnaComment> getCommentByNum(int qna_board_no) {
		dao = sqlSession.getMapper(QnaCommentDao.class);
		return dao.selectByNum(qna_board_no);
	}

	//답변 작성 메소드
	@Override
	public void writeComment(QnaComment qnaComment) {
		dao = sqlSession.getMapper(QnaCommentDao.class);
		dao.insertComment(qnaComment);
	}

	//답변 삭제 메소드
	@Override
	public void deleteComment(int qna_comment_no) {
		dao = sqlSession.getMapper(QnaCommentDao.class);
		dao.deleteComment(qna_comment_no);
	}

	//답변 수정 메소드
	@Override
	public void editComment(QnaComment qnaComment) {
		dao = sqlSession.getMapper(QnaCommentDao.class);
		dao.updateComment(qnaComment);
	}
}
