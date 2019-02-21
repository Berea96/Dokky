package com.kitri.dokky.article;

import java.util.ArrayList;

//모든 게시판에 대한 Dao Interface
public interface BoardDao {
	void insertBoard(Board board);
	ArrayList<Board> selectBoardByCategory(String category_1, String category_2);
	Board selectBoardByNum(int board_no);
	void updateBoard(Board board);
	void deleteBoard(int board_no);
}
