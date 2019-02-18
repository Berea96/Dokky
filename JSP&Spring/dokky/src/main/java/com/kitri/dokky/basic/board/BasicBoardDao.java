package com.kitri.dokky.basic.board;

import java.util.ArrayList;

public interface BasicBoardDao {
	ArrayList<BasicBoard> selectByCategory(String category);
	void insertBoard(BasicBoard board);
	void deleteBoard(int board_num);
	void updateBoard(BasicBoard board);
	BasicBoard selectByNum(int board_num);
}
