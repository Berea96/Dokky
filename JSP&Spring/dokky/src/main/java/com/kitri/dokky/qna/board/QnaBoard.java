package com.kitri.dokky.qna.board;

import java.sql.Date;

//질문게시판 Bean
public class QnaBoard {
	private int qna_board_no;
	private String qna_board_category_1;
	private String qna_board_category_2;
	private String qna_board_title;
	private String qna_board_writer;
	private String qna_board_tags;
	private String qna_board_content;
	private int qna_board_like_cnt;
	private Date qna_board_date;
	private int qna_board_scrap;
	
	public QnaBoard() {
	}
	
	public QnaBoard(int qna_board_no, String qna_board_category_1, String qna_board_category_2, String qna_board_title,
			String qna_board_writer, String qna_board_tags, String qna_board_content, int qna_board_like_cnt,
			Date qna_board_date, int qna_board_scrap) {
		this.qna_board_no = qna_board_no;
		this.qna_board_category_1 = qna_board_category_1;
		this.qna_board_category_2 = qna_board_category_2;
		this.qna_board_title = qna_board_title;
		this.qna_board_writer = qna_board_writer;
		this.qna_board_tags = qna_board_tags;
		this.qna_board_content = qna_board_content;
		this.qna_board_like_cnt = qna_board_like_cnt;
		this.qna_board_date = qna_board_date;
		this.qna_board_scrap = qna_board_scrap;
	}

	public final int getQna_board_no() {
		return qna_board_no;
	}
	public final void setQna_board_no(int qna_board_no) {
		this.qna_board_no = qna_board_no;
	}

	public final String getQna_board_category_1() {
		return qna_board_category_1;
	}
	public final void setQna_board_category_1(String qna_board_category_1) {
		this.qna_board_category_1 = qna_board_category_1;
	}

	public final String getQna_board_category_2() {
		return qna_board_category_2;
	}
	public final void setQna_board_category_2(String qna_board_category_2) {
		this.qna_board_category_2 = qna_board_category_2;
	}

	public final String getQna_board_title() {
		return qna_board_title;
	}
	public final void setQna_board_title(String qna_board_title) {
		this.qna_board_title = qna_board_title;
	}

	public final String getQna_board_writer() {
		return qna_board_writer;
	}
	public final void setQna_board_writer(String qna_board_writer) {
		this.qna_board_writer = qna_board_writer;
	}

	public final String getQna_board_tags() {
		return qna_board_tags;
	}
	public final void setQna_board_tags(String qna_board_tags) {
		this.qna_board_tags = qna_board_tags;
	}

	public final String getQna_board_content() {
		return qna_board_content;
	}
	public final void setQna_board_content(String qna_board_content) {
		this.qna_board_content = qna_board_content;
	}

	public final int getQna_board_like_cnt() {
		return qna_board_like_cnt;
	}
	public final void setQna_board_like_cnt(int qna_board_like_cnt) {
		this.qna_board_like_cnt = qna_board_like_cnt;
	}

	public final Date getQna_board_date() {
		return qna_board_date;
	}
	public final void setQna_board_date(Date qna_board_date) {
		this.qna_board_date = qna_board_date;
	}

	public final int getQna_board_scrap() {
		return qna_board_scrap;
	}
	public final void setQna_board_scrap(int qna_board_scrap) {
		this.qna_board_scrap = qna_board_scrap;
	}

	@Override
	public String toString() {
		return "QnaBoard [qna_board_no=" + qna_board_no + ", qna_board_category_1=" + qna_board_category_1
				+ ", qna_board_category_2=" + qna_board_category_2 + ", qna_board_title=" + qna_board_title
				+ ", qna_board_writer=" + qna_board_writer + ", qna_board_tags=" + qna_board_tags
				+ ", qna_board_content=" + qna_board_content + ", qna_board_like_cnt=" + qna_board_like_cnt
				+ ", qna_board_date=" + qna_board_date + ", qna_board_scrap=" + qna_board_scrap + "]";
	}
}
