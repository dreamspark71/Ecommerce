package com.gabenstore.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gabenstore.modal.Product;
import com.gabenstore.modal.Review;
import com.google.gson.Gson;

@Repository
public class ReviewDAOImp implements ReviewDAO 
{
	@Autowired
	SessionFactory sessionFactory;
	
	public void addReview(Review review) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(review);		
	}

	public List<Review> displayReview() {
		return sessionFactory.getCurrentSession().createQuery("from Review").getResultList();
	}

	public void deleteReview(int reviewID) 
	{
		Review reviewdelete=new Review();
		reviewdelete.setReviewID(reviewID);
		sessionFactory.getCurrentSession().delete(reviewdelete);
	}

	public Review updateReview(int reviewID) {
		List<Review> getList=sessionFactory.getCurrentSession().createQuery("from Review where reviewID="+reviewID).getResultList();
		return getList.get(0);
	}

	public String displayReviewByJson() 
	{
		List<Review> list=sessionFactory.getCurrentSession().createQuery("from Review").getResultList();
		Gson g=new Gson();
		String jsonList=g.toJson(list);
		return jsonList;
	}

}
