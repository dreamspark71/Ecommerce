package com.gabenstore.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gabenstore.dao.CartDAOImp;
import com.gabenstore.modal.CartItems;

@Transactional
@Service
public class CartService 
{
	@Autowired
	CartDAOImp cartDAOImp;
	public void addCart(CartItems cartItems)
	{
		cartDAOImp.addCart(cartItems);
	}
	
	public String displayCart(int userID)
	{
		return cartDAOImp.displayCart(userID);
	}
	
	public void deletecart(int cartItemsID) 
	{
		 cartDAOImp.deletecart(cartItemsID);
	}	
}

