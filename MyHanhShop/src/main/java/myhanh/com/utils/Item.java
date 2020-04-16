package myhanh.com.utils;

import java.io.Serializable;

import myhanh.com.entity.Product;

public class Item implements Serializable{
	
	private int id;
	private Product product;
	private long quantity;
	private float price;
	
	public Item()
	{
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public long getQuantity() {
		return quantity;
	}
	public void setQuantity(long quantity) {
		this.quantity = quantity;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	
	
	
	

}
