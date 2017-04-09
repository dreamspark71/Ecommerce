package com.gabenstore.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gabenstore.dao.ReviewDAOImp;
import com.gabenstore.modal.Review;

@Service
@Transactional
public class ReviewService 
{
	@Autowired
	ReviewDAOImp reviewDAOImp;
	public void addReview(Review review)
	{
		reviewDAOImp.addReview(review);
	}
	public List<Review> displayReview()
	{
		return reviewDAOImp.displayReview();
	}
	public void deleteReview(int reviewID)
	{		
		reviewDAOImp.deleteReview(reviewID);
	}
	public Review updateReview(int reviewID)
	{
		return reviewDAOImp.updateReview(reviewID);
	}
	
	public String displayReviewByJson()
	{
		return reviewDAOImp.displayReviewByJson();
	}
	
}
