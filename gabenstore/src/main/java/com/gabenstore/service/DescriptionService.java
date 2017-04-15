package com.gabenstore.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gabenstore.dao.DescriptionDAOImp;
import com.gabenstore.modal.Description;

@Service
@Transactional
public class DescriptionService
{
	@Autowired
	DescriptionDAOImp descriptionDAOImp;
	public void addDescription(Description description)
	{
		descriptionDAOImp.addDescription(description);
	}
	public List<Description> displayDescription() 
	{
		return descriptionDAOImp.displayDescription();
	}
	public void deteleDescription(int descriptionID) 
	{
		descriptionDAOImp.deteleDescription(descriptionID);
	}
	public Description updateDescription(int descriptionID) 
	{
		return descriptionDAOImp.updateDescription(descriptionID);
	}
	public String displayDescriptionByJson() 
	{
		return descriptionDAOImp.displayDescriptionByJson();
	}
	
	public Description getDescriptionByProduct(int productID)
	{
		return descriptionDAOImp.getDescriptionByProduct(productID);
	}
	

}

