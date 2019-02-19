package com.kitri.dokky.member;

import java.sql.Date;

//회원 Bean
public class Member {
	private String mem_id;
	private String mem_pw;
	private String mem_email;
	private String mem_name;
	private String mem_image;
	private int mem_exp;
	private Date mem_date;
	
	public Member() {}

	public Member(String mem_id, String mem_pw, String mem_email, String mem_name,
			String mem_image, int mem_exp, Date mem_date) {
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_email = mem_email;
		this.mem_name = mem_name;
		this.mem_image = mem_image;
		this.mem_exp = mem_exp;
		this.mem_date = mem_date;
	}
	
	public final String getMem_id() {
		return mem_id;
	}
	public final void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	public final String getMem_pw() {
		return mem_pw;
	}
	public final void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	
	public final String getMem_email() {
		return mem_email;
	}
	public final void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	
	public final String getMem_name() {
		return mem_name;
	}
	public final void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	
	public final String getMem_image() {
		return mem_image;
	}
	public final void setMem_image(String mem_image) {
		this.mem_image = mem_image;
	}
	
	public final int getMem_exp() {
		return mem_exp;
	}
	public final void setMem_exp(int mem_exp) {
		this.mem_exp = mem_exp;
	}
	
	public final Date getMem_date() {
		return mem_date;
	}
	public final void setMem_date(Date mem_date) {
		this.mem_date = mem_date;
	}
	
	@Override
	public String toString() {
		return "Member [mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_email=" + mem_email + ", mem_name=" + mem_name
				+ ", mem_image=" + mem_image + ", mem_exp=" + mem_exp + ", mem_date="
				+ mem_date + "]";
	}
}
