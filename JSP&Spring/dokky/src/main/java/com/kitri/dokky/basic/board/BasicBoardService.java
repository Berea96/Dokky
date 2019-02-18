package com.kitri.dokky.basic.board;

import java.util.ArrayList;

public interface BasicBoardService {
	ArrayList<BasicBoard> getBoardByCategory(String category);
	void writeBoard(BasicBoard board);
	void deleteBoard(int board_num);
	void editBoard(BasicBoard board);
	BasicBoard getBoardByNum(int board_num);
}
