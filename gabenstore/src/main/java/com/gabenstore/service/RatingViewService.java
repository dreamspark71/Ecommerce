package com.gabenstore.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gabenstore.dao.RatingViewDAOImp;
import com.gabenstore.modal.RatingView;

@Service
@Transactional
public class RatingViewService 
{
	@Autowired
	RatingViewDAOImp ratingViewDAOImp;
	
	public RatingView displayRating(int productID)
	{
		return ratingViewDAOImp.displayRating(productID);
	}
	
	public List<RatingView> displayRatingTop()
	{
		return ratingViewDAOImp.displayRatingTop();
	}
}
