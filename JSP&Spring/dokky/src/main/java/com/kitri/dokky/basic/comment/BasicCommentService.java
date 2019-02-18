package com.kitri.dokky.basic.comment;

import java.util.ArrayList;

//기본 게시판에 대한 댓글의 Service Interface
public interface BasicCommentService {
	ArrayList<BasicComment> getCommentByNum(int basic_board_no);
	void writeComment(BasicComment basicComment);
	void deleteComment(int basic_comment_no);
	void editComment(BasicComment basicComment);
}
