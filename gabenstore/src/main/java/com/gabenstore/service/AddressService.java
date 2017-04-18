package com.gabenstore.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gabenstore.dao.AddressDAOImp;
import com.gabenstore.modal.Address;

@Service
@Transactional
public class AddressService 
{
	@Autowired
	AddressDAOImp addressDAOImp;
	
	public void addAddress(Address address)
	{
		addressDAOImp.addAddress(address);
	}
	
	public Address displayAddress(int userID)
	{
		return addressDAOImp.displayAddress(userID);
	}
}
