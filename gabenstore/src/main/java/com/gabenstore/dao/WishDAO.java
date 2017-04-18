package com.gabenstore.dao;

import com.gabenstore.modal.WishList;

public interface WishDAO 
{
	public void addWish(WishList wishList);
	public String displayWish(int userID);
	public void deleteWish(int wishID);
	public WishList updateCart(int wishID); 
}
