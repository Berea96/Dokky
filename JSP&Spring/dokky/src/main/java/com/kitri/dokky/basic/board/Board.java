package com.kitri.dokky.basic.board;

import java.sql.Date;

public class Board {
	private int board_no;
	private String board_category_1;
	private String board_category_2;
	private String board_title;
	private String board_writer;
	private String board_tags;
	private String board_content;
	private int board_like_cnt;
	private Date board_date;
	private int board_scrap_cnt;
	
	public Board() {
	}

	public Board(int board_no, String board_category_1, String board_category_2, String board_title,
			String board_writer, String board_tags, String board_content, int board_like_cnt, Date board_date,
			int board_scrap_cnt) {
		this.board_no = board_no;
		this.board_category_1 = board_category_1;
		this.board_category_2 = board_category_2;
		this.board_title = board_title;
		this.board_writer = board_writer;
		this.board_tags = board_tags;
		this.board_content = board_content;
		this.board_like_cnt = board_like_cnt;
		this.board_date = board_date;
		this.board_scrap_cnt = board_scrap_cnt;
	}
	
	final int getBoard_no() {
		return board_no;
	}
	final void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	
	final String getBoard_category_1() {
		return board_category_1;
	}
	final void setBoard_category_1(String board_category_1) {
		this.board_category_1 = board_category_1;
	}
	
	final String getBoard_category_2() {
		return board_category_2;
	}
	final void setBoard_category_2(String board_category_2) {
		this.board_category_2 = board_category_2;
	}
	
	final String getBoard_title() {
		return board_title;
	}
	final void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	
	final String getBoard_writer() {
		return board_writer;
	}
	final void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	
	final String getBoard_tags() {
		return board_tags;
	}
	final void setBoard_tags(String board_tags) {
		this.board_tags = board_tags;
	}
	
	final String getBoard_content() {
		return board_content;
	}
	final void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	
	final int getBoard_like_cnt() {
		return board_like_cnt;
	}
	final void setBoard_like_cnt(int board_like_cnt) {
		this.board_like_cnt = board_like_cnt;
	}
	
	final Date getBoard_date() {
		return board_date;
	}
	final void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}
	
	final int getBoard_scrap_cnt() {
		return board_scrap_cnt;
	}
	final void setBoard_scrap_cnt(int board_scrap_cnt) {
		this.board_scrap_cnt = board_scrap_cnt;
	}
	
	@Override
	public String toString() {
		return "Board [board_no=" + board_no + ", board_category_1=" + board_category_1 + ", board_category_2="
				+ board_category_2 + ", board_title=" + board_title + ", board_writer=" + board_writer + ", board_tags="
				+ board_tags + ", board_content=" + board_content + ", board_like_cnt=" + board_like_cnt
				+ ", board_date=" + board_date + ", board_scrap_cnt=" + board_scrap_cnt + "]";
	}
}
