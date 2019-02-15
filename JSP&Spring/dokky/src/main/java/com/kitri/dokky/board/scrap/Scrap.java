package com.kitri.dokky.board.scrap;

import java.sql.Date;

public class Scrap {
	private int board_scrap_no;
	private int board_no;
	private String mem_id;
	private Date board_scrap_date;

	public Scrap() {
	}
	
	public Scrap(int board_scrap_no, int board_no, String mem_id, Date board_scrap_date) {
		this.board_scrap_no = board_scrap_no;
		this.board_no = board_no;
		this.mem_id = mem_id;
		this.board_scrap_date = board_scrap_date;
	}

	final int getBoard_scrap_no() {
		return board_scrap_no;
	}
	final void setBoard_scrap_no(int board_scrap_no) {
		this.board_scrap_no = board_scrap_no;
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
	
	final Date getBoard_scrap_date() {
		return board_scrap_date;
	}
	final void setBoard_scrap_date(Date board_scrap_date) {
		this.board_scrap_date = board_scrap_date;
	}
	
	@Override
	public String toString() {
		return "BoardScrap [board_scrap_no=" + board_scrap_no + ", board_no=" + board_no + ", mem_id=" + mem_id + "]";
	}
}
