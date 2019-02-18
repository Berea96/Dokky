package com.kitri.dokky.basic.board;

import java.util.ArrayList;

//기본 게시판에 대한 Service Interface
public interface BasicBoardService {
	ArrayList<BasicBoard> getBoardByCategory(String category);
	void writeBoard(BasicBoard board);
	void deleteBoard(int board_num);
	void editBoard(BasicBoard board);
	BasicBoard getBoardByNum(int board_num);
}
