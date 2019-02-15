package com.kitri.dokky.comment.like;

import java.sql.Date;

public class Like {
	private int comment_like_no;
	private int comment_no;
	private String mem_id;
	private String type;
	private Date comment_like_date;

	public Like() {
	}
	
	public Like(int comment_like_no, int comment_no, String mem_id, String type, Date comment_like_date) {
		this.comment_like_no = comment_like_no;
		this.comment_no = comment_no;
		this.mem_id = mem_id;
		this.type = type;
		this.comment_like_date = comment_like_date;
	}
	
	final int getComment_like_no() {
		return comment_like_no;
	}
	final void setComment_like_no(int comment_like_no) {
		this.comment_like_no = comment_like_no;
	}
	
	final int getComment_no() {
		return comment_no;
	}
	final void setComment_no(int comment_no) {
		this.comment_no = comment_no;
	}
	
	final String getMem_id() {
		return mem_id;
	}
	final void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	final String getType() {
		return type;
	}
	final void setType(String type) {
		this.type = type;
	}
	
	final Date getComment_like_date() {
		return comment_like_date;
	}
	final void setComment_like_date(Date comment_like_date) {
		this.comment_like_date = comment_like_date;
	}

	@Override
	public String toString() {
		return "Like [comment_like_no=" + comment_like_no + ", comment_no=" + comment_no + ", mem_id=" + mem_id
				+ ", type=" + type + "]";
	}
}
