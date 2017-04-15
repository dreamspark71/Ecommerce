package com.gabenstore.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gabenstore.modal.Category;
import com.gabenstore.modal.Product;
import com.google.gson.Gson;

@Repository
public class ProductDAOImp implements ProductDAO 
{
	@Autowired
	SessionFactory sessionFactory;
	public void addProduct(Product product) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}

	public List<Product> displayProduct() {
		return sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
	}

	public void deleteProduct(int productID) {
		Product deleteProduct = new Product();
		deleteProduct.setProductID(productID);
		sessionFactory.getCurrentSession().delete(deleteProduct);				
	}

	public Product updateProduct(int productID) {
		List<Product> getList = sessionFactory.getCurrentSession().createQuery("from Product where productID = "+productID).getResultList();
		return getList.get(0);
	}

	public String displayProductByJson() 
	{
		List<Product> list=sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		Gson g=new Gson();
		String jsonList=g.toJson(list);
		return jsonList;
	}
	
	public List<Product> displayProductFeatured()
	{
		return sessionFactory.getCurrentSession().createQuery("from Product where productTag='FEATURED'").getResultList();		
	}
	
	public List<Product> displayProductLatest()
	{
		return sessionFactory.getCurrentSession().createQuery("from Product where productTag='LATEST'").getResultList();
	}
		
	
}
