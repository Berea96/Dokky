package com.kitri.dokky.basic.board;

import java.util.ArrayList;

public interface BoardDao {
	ArrayList<Board> selectByCategory(String category);
	void insertBoard(Board board);
	void deleteBoard(int board_num);
	void updateBoard(Board board);
	Board selectByNum(int board_num);
}
