package com.kitri.dokky.basic.board;

import java.util.ArrayList;

//기본 게시판에 대한  Dao Interface
public interface BasicBoardDao {
	ArrayList<BasicBoard> selectByCategory(String category);
	void insertBoard(BasicBoard board);
	void deleteBoard(int board_num);
	void updateBoard(BasicBoard board);
	BasicBoard selectByNum(int board_num);
}
