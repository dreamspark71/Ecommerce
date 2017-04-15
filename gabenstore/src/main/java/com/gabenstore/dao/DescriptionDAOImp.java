package com.gabenstore.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gabenstore.modal.Description;
import com.google.gson.Gson;
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

	public String displayDescriptionByJson() {
		List<Description> list=sessionFactory.getCurrentSession().createQuery("from Description").getResultList();
		Gson g=new Gson();
		String jsonList=g.toJson(list);
		return jsonList;
	}
	
	public Description getDescriptionByProduct(int productID)
	{
		List<Description>list=sessionFactory.getCurrentSession().createQuery("from Description where productID="+productID).getResultList();
		return list.get(0);
	}

}
