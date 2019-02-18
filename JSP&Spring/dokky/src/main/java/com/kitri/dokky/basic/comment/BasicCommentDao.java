package com.kitri.dokky.basic.comment;

import java.util.ArrayList;

public interface BasicCommentDao {
	ArrayList<BasicComment> selectByNum(int basic_board_no);
	void insertComment(BasicComment basicComment);
	void deleteComment(int basic_comment_no);
	void updateComment(BasicComment basicComment);
}
