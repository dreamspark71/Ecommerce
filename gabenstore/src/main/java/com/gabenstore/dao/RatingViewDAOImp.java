package com.gabenstore.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gabenstore.modal.RatingView;
import com.google.gson.Gson;
@Repository
public class RatingViewDAOImp implements RatingViewDAO
{
	@Autowired
	SessionFactory sessionFactory;
	
	public RatingView displayRating(int productID) {
		
		List<RatingView> list = sessionFactory.getCurrentSession().createQuery("from RatingView where productID="+productID).getResultList();
		return list.get(0);
	}

	public List<RatingView> displayRatingTop() 
	{
		return sessionFactory.getCurrentSession().createQuery("from RatingView").setMaxResults(3).getResultList();		
	}

}
