package com.kitri.dokky.category;

//게시물 카테고리 Bean
public class Category {
	private int category_no;
	private String category_title;
	private String category_image;
	
	public Category() {
	}

	public Category(int category_no, String category_title, String category_image) {
		this.category_no = category_no;
		this.category_title = category_title;
		this.category_image = category_image;
	}

	final int getCategory_no() {
		return category_no;
	}
	final void setCategory_no(int category_no) {
		this.category_no = category_no;
	}

	final String getCategory_title() {
		return category_title;
	}
	final void setCategory_title(String category_title) {
		this.category_title = category_title;
	}

	final String getCategory_image() {
		return category_image;
	}
	final void setCategory_image(String category_image) {
		this.category_image = category_image;
	}

	@Override
	public String toString() {
		return "Category [category_no=" + category_no + ", category_title=" + category_title + ", category_image="
				+ category_image + "]";
	}
}
