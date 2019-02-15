package com.kitri.dokky.comment.like;

import java.util.ArrayList;

public interface CommentLikeDao {
	void insertLike(Like like);
	ArrayList<Like> selectLikeList(String mem_id);
	void deleteLike(Like like);
}
