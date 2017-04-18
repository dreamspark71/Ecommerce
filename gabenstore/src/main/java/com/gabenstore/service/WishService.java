package com.gabenstore.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gabenstore.dao.WishDAOImp;
import com.gabenstore.modal.WishList;

@Service
@Transactional
public class WishService 
{
	@Autowired
	WishDAOImp wishDAOImp;
	public void addWish(WishList wishList)
	{
		wishDAOImp.addWish(wishList);
	}
	
	public String displayWish(int userID) 
	{
		return wishDAOImp.displayWish(userID);
	}
	
	public void deleteWish(int wishID)
	{
		wishDAOImp.deleteWish(wishID);
	}
	
}
