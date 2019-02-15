package com.kitri.dokky.category;

public class Category {
	private String category_1;
	private String category_2;
	
	public Category() {
	}

	public Category(String category_1, String category_2) {
		this.category_1 = category_1;
		this.category_2 = category_2;
	}
	
	final String getCategory_1() {
		return category_1;
	}
	final void setCategory_1(String category_1) {
		this.category_1 = category_1;
	}
	
	final String getCategory_2() {
		return category_2;
	}
	final void setCategory_2(String category_2) {
		this.category_2 = category_2;
	}

	@Override
	public String toString() {
		return "Category [category_1=" + category_1 + ", category_2=" + category_2 + "]";
	}
}
