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
		List<CartItems> list=sessionFactory.getCurrentSession().createQuery("from CartItems where cartItemFlag='FALSE' and userID="+userID).getResultList();
		Gson g=new Gson();
		String json=g.toJson(list);
		return json;
	}

	public void deletecart(int cartItemsID) {
		CartItems cartDelete=new CartItems();
		cartDelete.setCartItemsID(cartItemsID);
		sessionFactory.getCurrentSession().delete(cartDelete);	
	}

	

	public void addCart(CartItems cartItems) {
		sessionFactory.getCurrentSession().saveOrUpdate(cartItems);		
	}

	public CartItems displayCartProduct(int productID)
	{
		List<CartItems> list=sessionFactory.getCurrentSession().createQuery("from CartItems where cartItemFlag='FALSE' and productID="+productID).getResultList();
		return list.get(0);
	}
	
	public List<CartItems> displayAddedCart(int userID)
	{
		return sessionFactory.getCurrentSession().createQuery("from CartItems where cartItemFlag='FALSE' and userID="+userID).getResultList();
	}
	
	public List<CartItems> displayCart1(int userID) {
		return sessionFactory.getCurrentSession().createQuery("from CartItems where cartItemFlag='FALSE' and userID="+userID).getResultList();
	}

	public void updateCart(int cartItemsID, int cartTotalAmount, int cartQuantity) 
	{
		sessionFactory.getCurrentSession().createQuery("UPDATE CartItems set cartItemQuantity="+cartQuantity+",cartTotalAmount="+cartTotalAmount+"where cartItemsID="+cartItemsID).executeUpdate();
	}
	
	public void updateCartOrders(int userID)
	{
		sessionFactory.getCurrentSession().createQuery("UPDATE CartItems set cartItemFlag='TRUE' where userID="+userID).executeUpdate();
	}
}
