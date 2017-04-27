package com.gabenstore.dao;

import java.util.List;

import com.gabenstore.modal.CartItems;

public interface CartDAO 
{
	public void addCart(CartItems cartItems);
	public String displayCart(int userID);
	public void deletecart(int cartItemsID);
	public void updateCart(int cartItemsID,int cartTotalAmount,int cartQuantity); 
}
