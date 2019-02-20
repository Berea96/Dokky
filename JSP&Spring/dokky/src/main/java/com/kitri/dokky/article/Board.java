package com.kitri.dokky.article;

import java.sql.Date;

//모든 게시판에 대한 Bean
public class Board {
	private int board_no;
	private String board_category_1;
	private String board_category_2;
	private String board_title;
	private String board_write;
	private String board_tags;
	private String board_content;
	private int board_like_cnt;
	private Date board_date;
	private int board_scrap_cnt;
	
	public Board() {
	}

	public Board(int board_no, String board_category_1, String board_category_2, String board_title, String board_write,
			String board_tags, String board_content, int board_like_cnt, Date board_date, int board_scrap_cnt) {
		this.board_no = board_no;
		this.board_category_1 = board_category_1;
		this.board_category_2 = board_category_2;
		this.board_title = board_title;
		this.board_write = board_write;
		this.board_tags = board_tags;
		this.board_content = board_content;
		this.board_like_cnt = board_like_cnt;
		this.board_date = board_date;
		this.board_scrap_cnt = board_scrap_cnt;
	}

	public final int getBoard_no() {
		return board_no;
	}
	public final void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public final String getBoard_category_1() {
		return board_category_1;
	}
	public final void setBoard_category_1(String board_category_1) {
		this.board_category_1 = board_category_1;
	}

	public final String getBoard_category_2() {
		return board_category_2;
	}
	public final void setBoard_category_2(String board_category_2) {
		this.board_category_2 = board_category_2;
	}

	public final String getBoard_title() {
		return board_title;
	}
	public final void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public final String getBoard_write() {
		return board_write;
	}
	public final void setBoard_write(String board_write) {
		this.board_write = board_write;
	}

	public final String getBoard_tags() {
		return board_tags;
	}
	public final void setBoard_tags(String board_tags) {
		this.board_tags = board_tags;
	}

	public final String getBoard_content() {
		return board_content;
	}
	public final void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public final int getBoard_like_cnt() {
		return board_like_cnt;
	}
	public final void setBoard_like_cnt(int board_like_cnt) {
		this.board_like_cnt = board_like_cnt;
	}

	public final Date getBoard_date() {
		return board_date;
	}
	public final void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}

	public final int getBoard_scrap_cnt() {
		return board_scrap_cnt;
	}
	public final void setBoard_scrap_cnt(int board_scrap_cnt) {
		this.board_scrap_cnt = board_scrap_cnt;
	}

	@Override
	public String toString() {
		return "Board [board_no=" + board_no + ", board_category_1=" + board_category_1 + ", board_category_2="
				+ board_category_2 + ", board_title=" + board_title + ", board_write=" + board_write + ", board_tags="
				+ board_tags + ", board_content=" + board_content + ", board_like_cnt=" + board_like_cnt
				+ ", board_date=" + board_date + ", board_scrap_cnt=" + board_scrap_cnt + "]";
	}
}
