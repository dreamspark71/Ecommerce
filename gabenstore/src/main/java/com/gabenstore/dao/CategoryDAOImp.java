package com.gabenstore.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gabenstore.modal.Category;
import com.google.gson.Gson;

@Repository
public class CategoryDAOImp implements CategoryDAO 
{
	@Autowired
	SessionFactory sessionFactory;
	public void addCategory(Category category) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(category);
		
	}
	public List<Category> displayCategory() 
	{
		return sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
			
	}
	public void deteleCategory(int categoryID) {
		
			Category deleteCategory = new Category();
			deleteCategory.setCategoryID(categoryID);
			sessionFactory.getCurrentSession().delete(deleteCategory);
	}
	public Category updateCategory(int categoryID) 
	{
		List<Category> getList = sessionFactory.getCurrentSession().createQuery("from Category where categoryID = "+categoryID).getResultList();
		return getList.get(0);	
	}
	public String displayCategoryByJson() {
		List<Category> list=sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		Gson g=new Gson();
		String jsonList=g.toJson(list);
		return jsonList;	
	}

	
	
	
}
