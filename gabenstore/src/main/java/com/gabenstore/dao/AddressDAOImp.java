package com.gabenstore.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gabenstore.modal.Address;
import com.google.gson.Gson;

@Repository
public class AddressDAOImp implements AddressDAO 
{
	@Autowired
	SessionFactory sessionFactory;
	
	public void addAddress(Address address) {
		sessionFactory.getCurrentSession().saveOrUpdate(address);
		
	}

	public Address displayAddress(int userID) {
		List<Address> list=sessionFactory.getCurrentSession().createQuery("from Address where userID="+userID).getResultList();
		return list.get(0);
	}
	
}
