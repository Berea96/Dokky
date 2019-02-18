package com.kitri.dokky.qna.board;

import java.util.ArrayList;

//질문 게시판 Dao Interface
public interface QnaBoardDao {
	ArrayList<QnaBoard> selectByCategory(String category);
	void insertBoard(QnaBoard Qnaoard);
	void deleteBoard(int board_num);
	void updateBoard(QnaBoard QnaBoard);
	QnaBoard selectByNum(int board_num);
}
