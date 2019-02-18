package com.kitri.dokky.board.like;

import java.sql.Date;

//게시판에 대한 좋아요 Bean
public class Like {
	private int board_like_no;
	private int board_no;
	private String mem_id;
	private Date board_like_date;

	public Like() {
	}

	public Like(int board_like_no, int board_no, String mem_id, Date board_like_date) {
		this.board_like_no = board_like_no;
		this.board_no = board_no;
		this.mem_id = mem_id;
		this.board_like_date = board_like_date;
	}
	
	final int getBoard_like_no() {
		return board_like_no;
	}
	final void setBoard_like_no(int board_like_no) {
		this.board_like_no = board_like_no;
	}
	
	final int getBoard_no() {
		return board_no;
	}
	final void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	
	final String getMem_id() {
		return mem_id;
	}
	final void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	final Date getBoard_like_date() {
		return board_like_date;
	}
	final void setBoard_like_date(Date board_like_date) {
		this.board_like_date = board_like_date;
	}
	@Override
	public String toString() {
		return "Like [board_like_no=" + board_like_no + ", board_no=" + board_no + ", mem_id=" + mem_id + "]";
	}
}
