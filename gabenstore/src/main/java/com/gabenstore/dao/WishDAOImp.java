package com.gabenstore.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gabenstore.modal.User;
import com.gabenstore.modal.WishList;
import com.google.gson.Gson;

@Repository
public class WishDAOImp implements WishDAO 
{
	@Autowired
	SessionFactory sessionFactory;
	
	public void addWish(WishList wishList) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(wishList);
	}

	public String displayWish(int userID) {
		List<WishList>list=sessionFactory.getCurrentSession().createQuery("from WishList where userID="+userID).getResultList();
		Gson g=new Gson();
		String jsonList=g.toJson(list);
		return jsonList;
	}

	public void deleteWish(int wishID) 
	{
		WishList wishDelete=new WishList();
		wishDelete.setWishID(wishID);
		sessionFactory.getCurrentSession().delete(wishDelete);
	}

	public WishList updateCart(int wishID) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
