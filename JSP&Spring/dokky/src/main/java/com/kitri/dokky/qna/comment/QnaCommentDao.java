package com.kitri.dokky.qna.comment;

import java.util.ArrayList;

//답변 Dao Interface
public interface QnaCommentDao {
	ArrayList<QnaComment> selectByNum(int qna_board_no);
	void insertComment(QnaComment qnaComment);
	void deleteComment(int qna_comment_no);
	void updateComment(QnaComment qnaComment);
}
