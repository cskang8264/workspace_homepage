package com.mingo.myapp.VO;

public class ProductVO {
	private String name;
	private double price;
	
	public ProductVO(String name, double price) {
		super();
		this.name = name;
		this.price = price;
		
	}
	public String getName() {
		return this.name;
		
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public double getPrice() {
		return this.price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "ProductVO [name=" +name+", price="+price+"]";
	}

}
