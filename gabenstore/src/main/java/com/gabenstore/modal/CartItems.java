package com.gabenstore.modal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class CartItems 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int cartItemsID;
	private int cartID;
	private int productID;
	private int cartItemQuantity;
	private int cartAmount;
	private int userID;
	private String productName;
	private boolean cartItemFlag=false;
	
	@ManyToOne
	@JoinColumn(name="cartID",nullable=false,insertable=false,updatable=false)
	private Cart cart;
	
	@ManyToOne
	@JoinColumn(name="productID",nullable=false,insertable=false,updatable=false)
	private Product product;

	@ManyToOne
	@JoinColumn(name="userID",nullable=false,insertable=false,updatable=false)
	private User user;
	
	public boolean isCartItemFlag() {
		return cartItemFlag;
	}

	public void setCartItemFlag(boolean cartItemFlag) {
		this.cartItemFlag = cartItemFlag;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public int getCartItemsID() {
		return cartItemsID;
	}

	public void setCartItemsID(int cartItemsID) {
		this.cartItemsID = cartItemsID;
	}

	public int getCartID() {
		return cartID;
	}

	public void setCartID(int cartID) {
		this.cartID = cartID;
	}

	public int getProductID() {
		return productID;
	}

	public void setProductID(int productID) {
		this.productID = productID;
	}

	public int getCartItemQuantity() {
		return cartItemQuantity;
	}

	public void setCartItemQuantity(int cartItemQuantity) {
		this.cartItemQuantity = cartItemQuantity;
	}

	public int getCartAmount() {
		return cartAmount;
	}

	public void setCartAmount(int cartAmount) {
		this.cartAmount = cartAmount;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
	
	
}
