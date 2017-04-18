package com.gabenstore.dao;

import com.gabenstore.modal.Address;

public interface AddressDAO 
{
	public void addAddress(Address address);
	
	public Address displayAddress(int userID);
	
}
