package com.kitri.dokky.comment.like;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

//댓글 좋아요 Service를 Implements
@Service("commentLikeService")
public class CommentLikeServiceImpl implements CommentLikeService {
	
	//의존성 주입
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private CommentLikeDao dao;

	//댓글 좋아요 메소드
	@Override
	public void likeComment(Like like) {
		dao = sqlSession.getMapper(CommentLikeDao.class);
		dao.insertLike(like);
	}

	//회원 아이디에 따른 댓글 좋아요 목록 불러오기
	@Override
	public ArrayList<Like> getLikeList(String mem_id) {
		dao = sqlSession.getMapper(CommentLikeDao.class);
		return dao.selectLikeList(mem_id);
	}

	//댓글 좋아요 취소 메소드
	@Override
	public void cancleLike(Like like) {
		dao = sqlSession.getMapper(CommentLikeDao.class);
		dao.deleteLike(like);
	}
}
