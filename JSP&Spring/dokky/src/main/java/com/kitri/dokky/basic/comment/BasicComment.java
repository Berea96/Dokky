package com.kitri.dokky.basic.comment;

import java.sql.Date;

//기본 게시판에 대한 댓글 Bean
public class BasicComment {
	private int basic_comment_no;
	private int basic_board_no;
	private int basic_comment_like_cnt;
	private String basic_comment_content;
	private String basic_comment_writer;
	private Date basic_comment_date;

	public BasicComment() {
	}

	public BasicComment(int basic_comment_no, int basic_board_no, int basic_comment_like_cnt,
			String basic_comment_content, String basic_comment_writer, Date basic_comment_date) {
		this.basic_comment_no = basic_comment_no;
		this.basic_board_no = basic_board_no;
		this.basic_comment_like_cnt = basic_comment_like_cnt;
		this.basic_comment_content = basic_comment_content;
		this.basic_comment_writer = basic_comment_writer;
		this.basic_comment_date = basic_comment_date;
	}
	
	final int getBasic_comment_no() {
		return basic_comment_no;
	}
	final void setBasic_comment_no(int basic_comment_no) {
		this.basic_comment_no = basic_comment_no;
	}
	
	final int getBasic_board_no() {
		return basic_board_no;
	}
	final void setBasic_board_no(int basic_board_no) {
		this.basic_board_no = basic_board_no;
	}
	
	final int getBasic_comment_like_cnt() {
		return basic_comment_like_cnt;
	}
	final void setBasic_comment_like_cnt(int basic_comment_like_cnt) {
		this.basic_comment_like_cnt = basic_comment_like_cnt;
	}
	
	final String getBasic_comment_content() {
		return basic_comment_content;
	}
	final void setBasic_comment_content(String basic_comment_content) {
		this.basic_comment_content = basic_comment_content;
	}
	
	final String getBasic_comment_writer() {
		return basic_comment_writer;
	}
	final void setBasic_comment_writer(String basic_comment_writer) {
		this.basic_comment_writer = basic_comment_writer;
	}
	
	final Date getBasic_comment_date() {
		return basic_comment_date;
	}
	final void setBasic_comment_date(Date basic_comment_date) {
		this.basic_comment_date = basic_comment_date;
	}

	@Override
	public String toString() {
		return "BasicComent [basic_comment_no=" + basic_comment_no + ", basic_board_no=" + basic_board_no
				+ ", basic_comment_like_cnt=" + basic_comment_like_cnt + ", basic_comment_content="
				+ basic_comment_content + ", basic_comment_writer=" + basic_comment_writer + "]";
	}
}
