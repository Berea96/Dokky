package com.kitri.dokky.board.like;

import java.util.ArrayList;

//게시판에 대한 좋아요 Dao Interface
public interface BoardLikeDao {
	void insertLikeBoard(Like like);
	ArrayList<Like> selectById(String mem_id);
	void deleteLike(Like like);
}
