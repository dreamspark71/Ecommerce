package com.gabenstore.dao;

import java.security.Principal;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gabenstore.modal.CartItems;
import com.gabenstore.modal.User;
import com.google.gson.Gson;

@Repository
public class CartDAOImp implements CartDAO 
{
	@Autowired
	SessionFactory sessionFactory;
	
	public String displayCart(int userID) {
		List<CartItems> listcart=sessionFactory.getCurrentSession().createQuery("from CartItems where userID="+userID).getResultList();
		Gson g=new Gson();
		String jsonList=g.toJson(listcart);
		return jsonList;
	}

	public void deletecart(int cartItemsID) {
		CartItems cartDelete=new CartItems();
		cartDelete.setCartItemsID(cartItemsID);
		sessionFactory.getCurrentSession().delete(cartDelete);	
	}

	public CartItems updateCart(int cartItemsID) {
		// TODO Auto-generated method stub
		return null;
	}

	public void addCart(CartItems cartItems) {
		sessionFactory.getCurrentSession().saveOrUpdate(cartItems);		
	}

}
