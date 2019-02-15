package com.kitri.dokky.board.like;

import java.util.ArrayList;

public interface BoardLikeDao {
	void insertLikeBoard(Like like);
	ArrayList<Like> selectById(String mem_id);
	void deleteLike(Like like);
}
