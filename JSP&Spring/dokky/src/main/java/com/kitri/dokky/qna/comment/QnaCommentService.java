package com.kitri.dokky.qna.comment;

import java.util.ArrayList;

//답변 Service Interface
public interface QnaCommentService {
	ArrayList<QnaComment> getCommentByNum(int qna_board_no);
	void writeComment(QnaComment qnaComment);
	void deleteComment(int qna_comment_no);
	void editComment(QnaComment qnaComment);
}
