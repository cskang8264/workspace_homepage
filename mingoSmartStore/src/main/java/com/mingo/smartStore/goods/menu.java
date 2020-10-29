package com.mingo.smartStore.goods;

public class menu {
	
	private int goods_pk;
	private String goods_no;
	private int sales_price;
	
	public menu() {};
	
	public menu(String goods_no, int sales_price) {
		this.goods_no = goods_no;
		this.sales_price = sales_price;
		
	}
	
	public menu(int goods_pk,String goods_no, int sales_price) {
		this.goods_pk = goods_pk;
		this.goods_no=goods_no;
		this.sales_price=sales_price;
	}
	
	public int getId() {
		return this.goods_pk;
	}
	public void setId(int id ){
		this.goods_pk =id;
	}
	
	public String getMenuName() {
		return  this.goods_no;
	}
	public void setMenuName(String name) {
		this.goods_no =name;
		
	}
	
	public int getMenuPrice() {
		return this.sales_price;
	}
	public void setMenuPRICE(int price) {
		this.sales_price = price;
	}
	
	@Override
	public String toString() {
		return "menu [id=" + goods_pk + ", name=" + goods_no + ", price=" + sales_price+ "]";
	}
	
	 

}
