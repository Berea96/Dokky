package com.kitri.dokky.qna.comment;

import java.sql.Date;

//답변 Bean
public class QnaComment {
	private int qna_comment_no;
	private int qna_board_no;
	private int qna_comment_like_cnt;
	private String qna_comment_content;
	private String qna_comment_writer;
	private Date qna_comment_date;
	private int qna_comment_select;
	
	public QnaComment() {
	}
	
	public QnaComment(int qna_comment_no, int qna_board_no, int qna_comment_like_cnt, String qna_comment_content,
			String qna_comment_writer, Date qna_comment_date, int qna_comment_select) {
		this.qna_comment_no = qna_comment_no;
		this.qna_board_no = qna_board_no;
		this.qna_comment_like_cnt = qna_comment_like_cnt;
		this.qna_comment_content = qna_comment_content;
		this.qna_comment_writer = qna_comment_writer;
		this.qna_comment_date = qna_comment_date;
		this.qna_comment_select = qna_comment_select;
	}

	final int getQna_comment_no() {
		return qna_comment_no;
	}
	final void setQna_comment_no(int qna_comment_no) {
		this.qna_comment_no = qna_comment_no;
	}

	final int getQna_board_no() {
		return qna_board_no;
	}
	final void setQna_board_no(int qna_board_no) {
		this.qna_board_no = qna_board_no;
	}

	final int getQna_comment_like_cnt() {
		return qna_comment_like_cnt;
	}
	final void setQna_comment_like_cnt(int qna_comment_like_cnt) {
		this.qna_comment_like_cnt = qna_comment_like_cnt;
	}

	final String getQna_comment_content() {
		return qna_comment_content;
	}
	final void setQna_comment_content(String qna_comment_content) {
		this.qna_comment_content = qna_comment_content;
	}

	final String getQna_comment_writer() {
		return qna_comment_writer;
	}
	final void setQna_comment_writer(String qna_comment_writer) {
		this.qna_comment_writer = qna_comment_writer;
	}

	final Date getQna_comment_date() {
		return qna_comment_date;
	}
	final void setQna_comment_date(Date qna_comment_date) {
		this.qna_comment_date = qna_comment_date;
	}

	final int getQna_comment_select() {
		return qna_comment_select;
	}
	final void setQna_comment_select(int qna_comment_select) {
		this.qna_comment_select = qna_comment_select;
	}

	@Override
	public String toString() {
		return "QnaComment [qna_comment_no=" + qna_comment_no + ", qna_board_no=" + qna_board_no
				+ ", qna_comment_like_cnt=" + qna_comment_like_cnt + ", qna_comment_content=" + qna_comment_content
				+ ", qna_comment_writer=" + qna_comment_writer + ", qna_comment_date=" + qna_comment_date
				+ ", qna_comment_select=" + qna_comment_select + "]";
	}
}
