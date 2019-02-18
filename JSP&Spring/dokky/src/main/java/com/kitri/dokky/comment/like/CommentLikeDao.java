package com.kitri.dokky.comment.like;

import java.util.ArrayList;

//댓글 좋아요 Dao Interface
public interface CommentLikeDao {
	void insertLike(Like like);
	ArrayList<Like> selectLikeList(String mem_id);
	void deleteLike(Like like);
}
