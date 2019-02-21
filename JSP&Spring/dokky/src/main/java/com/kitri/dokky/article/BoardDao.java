package com.kitri.dokky.article;

import java.util.ArrayList;

//모든 게시판에 대한 Dao Interface
public interface BoardDao {
	void insertBoard(Board board);
	ArrayList<Board> selectByNum(int board_no);
	void updateBoard(Board board);
	void deleteBoard(int board_no);
}
