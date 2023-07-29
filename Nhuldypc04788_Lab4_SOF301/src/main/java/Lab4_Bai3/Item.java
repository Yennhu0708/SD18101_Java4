package Lab4_Bai3;

import java.util.Date;

public class Item {
	int itemId;
	String name;
	String image;
	double price;
	double discount;
	double newprice; 
	Date date = new Date();
	
	public Item(Integer itemId, String name, String image, double price, double discount,Date date) {
	super();
	this.itemId = itemId;
	this.name = name;
	this.image = image;
	this.price = price;
	this.discount = discount;
	this.date = date;
	}

	public int getitemId() {
		return itemId;
	}

	public void setitemId(int id) {
		this.itemId = itemId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public double getNewprice() {
		return newprice;
	}

	public void setNewprice(double newprice) {
		this.newprice = newprice;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	
}
