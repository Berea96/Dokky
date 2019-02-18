package com.kitri.dokky.board.like;

import java.util.ArrayList;

//게시판에 대한 좋아요 Service Interface
public interface BoardLikeService {
	void likeBoard(Like like);
	void hateBoard(Like hate);
	ArrayList<Like> getLikeList(String mem_id);
	void cancelLikeBoard(Like like);
	void cancelHateBoard(Like hate);
}
