package com.gabenstore.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gabenstore.dao.SubscribeDAOImp;
import com.gabenstore.modal.Subscribe;

@Service
@Transactional
public class SubscribeService 
{
	@Autowired
	SubscribeDAOImp subscribeDAOImp;
	public void addSub(Subscribe subscribe) 
	{
		subscribeDAOImp.addSub(subscribe);
	}
}
