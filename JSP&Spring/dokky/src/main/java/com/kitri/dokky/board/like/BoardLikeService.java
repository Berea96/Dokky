package com.kitri.dokky.board.like;

import java.util.ArrayList;

public interface BoardLikeService {
	void likeBoard(Like like);
	void hateBoard(Like hate);
	ArrayList<Like> getLikeList(String mem_id);
	void cancelLikeBoard(Like like);
	void cancelHateBoard(Like hate);
}
