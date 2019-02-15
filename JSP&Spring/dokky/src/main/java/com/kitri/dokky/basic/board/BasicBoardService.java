package com.kitri.dokky.basic.board;

import java.util.ArrayList;

public interface BasicBoardService {
	ArrayList<Board> getBoardByCategory(String category);
	void writeBoard(Board board);
	void deleteBoard(int board_num);
	void editBoard(Board board);
	Board getBoardByNum(int board_num);
}
