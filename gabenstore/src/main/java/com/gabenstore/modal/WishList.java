package com.gabenstore.modal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class WishList 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int wishID;
	private int userID;
	private String productName;
	private int productPrice;
	private int productID;
	
	@ManyToOne
	@JoinColumn(name="userID",nullable=false,insertable=false,updatable=false)
	private User user;
	
	@ManyToOne
	@JoinColumn(name="productID",nullable=false,insertable=false,updatable=false)
	private Product product;
	
	
	
	public int getProductID() {
		return productID;
	}

	public void setProductID(int productID) {
		this.productID = productID;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getWishID() {
		return wishID;
	}

	public void setWishID(int wishID) {
		this.wishID = wishID;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
		
}
