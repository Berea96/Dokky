package com.kitri.dokky.comment.like;

import java.util.ArrayList;

//댓글 좋아요 Service Interface
public interface CommentLikeService {
	void likeComment(Like like);
	ArrayList<Like> getLikeList(String mem_id);
	void cancleLike(Like like);
}
