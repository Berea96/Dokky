package com.kitri.dokky.basic.comment;

import java.util.ArrayList;

public interface BasicCommentService {
	ArrayList<BasicComment> getCommentByNum(int basic_board_no);
	void writeComment(BasicComment basicComment);
	void deleteComment(int basic_comment_no);
	void editComment(BasicComment basicComment);
}
