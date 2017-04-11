package com.gabenstore.dao;

import java.util.List;

import com.gabenstore.modal.Review;


public interface ReviewDAO 
{
	public void addReview(Review review);
	public List<Review> displayReview();
	public void deleteReview(int reviewID);
	public Review updateReview(int reviewID);
	public String displayReviewByJson(int productID);
	
}
