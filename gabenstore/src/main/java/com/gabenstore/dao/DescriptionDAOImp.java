package com.gabenstore.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gabenstore.modal.Description;
@Repository
public class DescriptionDAOImp implements DescriptionDAO 
{
	@Autowired
	SessionFactory sessionFactory;
	public void addDescription(Description description) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(description);		
	}

	public List<Description> displayDescription() 
	{
		return sessionFactory.getCurrentSession().createQuery("from Description").getResultList();
	}

	public void deteleDescription(int descriptionID) 
	{
		Description deleteDescription =new Description();
		deleteDescription.setDescriptionID(descriptionID);
		sessionFactory.getCurrentSession().delete(deleteDescription);	
	}

	public Description updateDescription(int descriptionID) 
	{
		List<Description> getList=sessionFactory.getCurrentSession().createQuery("from Description where descriptionID ="+descriptionID).getResultList();
		return getList.get(0);
	}

}
