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
	
	@ManyToOne
	@JoinColumn(name="cartID",nullable=false,insertable=false,updatable=false)
	private Cart cart;
	
	@ManyToOne
	@JoinColumn(name="productID",nullable=false,insertable=false,updatable=false)
	private Product product;

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
