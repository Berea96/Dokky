package com.kitri.dokky.article;

import java.util.ArrayList;

//모든게시판에 대한 Service Interface
public interface BoardService {
	void writeBoard(Board board);
	ArrayList<Board> getByCategory();
	Board getByNum(int board_no);
	void editBoard(Board board);
	void deleteBoard(int board_no);
}
