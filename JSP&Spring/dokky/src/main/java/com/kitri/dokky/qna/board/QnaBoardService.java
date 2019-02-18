package com.kitri.dokky.qna.board;

import java.util.ArrayList;

public interface QnaBoardService {
	ArrayList<QnaBoard> getBoardByCategory(String category);
	void writeBoard(QnaBoard qnaBoard);
	void deleteBoard(int board_num);
	void editBoard(QnaBoard qnaBoard);
	QnaBoard getBoardByNum(int board_num);
}
