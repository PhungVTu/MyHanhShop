package myhanh.com.utils;

import java.io.Serializable;
import java.util.List;

import myhanh.com.entity.Acount;

public class Order implements Serializable {
	
	private int id;
	private Acount acount;
	private List<Item> items;
	private int status;
	public Order()
	{
		this.status=0;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Acount getAcount() {
		return acount;
	}
	public void setAcount(Acount acount) {
		this.acount = acount;
	}
	public List<Item> getItems() {
		return items;
	}
	public void setItems(List<Item> items) {
		this.items = items;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
	
	

}
