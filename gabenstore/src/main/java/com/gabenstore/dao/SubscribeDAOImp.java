package com.gabenstore.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gabenstore.modal.Subscribe;

@Repository
public class SubscribeDAOImp implements SubscribeDAO 
{
	@Autowired
	SessionFactory sessionFactory;

	public void addSub(Subscribe subscribe) {
		sessionFactory.getCurrentSession().saveOrUpdate(subscribe);
		
	}

	
}
