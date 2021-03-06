package com.gabenstore.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gabenstore.modal.Category;
import com.gabenstore.modal.CategoryView;
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
	
	public List<Product> displayTopFeatured()
	{
		return sessionFactory.getCurrentSession().createQuery("from Product where productTag='FEATURED' order by rand()").setMaxResults(3).getResultList();	
	}
	
	public List<Product> displayTopSale()
	{
		return sessionFactory.getCurrentSession().createQuery("from Product where productTag='SALE' order by rand()").setMaxResults(3).getResultList();
	}
	
	public List<CategoryView> displayRelated(String categoryName)
	{
		return sessionFactory.getCurrentSession().createQuery("from CategoryView where categoryName='"+categoryName+"' order by rand()").setMaxResults(3).getResultList();
	}
	
	public void updateQuantity(int productID,int productQuantity)
	{
		sessionFactory.getCurrentSession().createQuery("UPDATE Product set productQuantity="+productQuantity+"where productID="+productID).executeUpdate();
	}
	
	public void updateTag(int productID)
	{
		sessionFactory.getCurrentSession().createQuery("UPDATE Product set productTag='NO STOCK' where productID="+productID).executeUpdate();
	}
	
	public String productSearch(int categoryID)
	{
		List<Product> list=sessionFactory.getCurrentSession().createQuery("from Product where categoryID="+categoryID).getResultList();
		Gson g=new Gson();
		String jsonList=g.toJson(list);
		return jsonList;
	}
	
	public String productSearchSub(String productSubCategory)
	{
		List<Product> list=sessionFactory.getCurrentSession().createQuery("from Product where productSubCategory='"+productSubCategory+"'").getResultList();
		Gson g=new Gson();
		String jsonList=g.toJson(list);
		return jsonList;
	}
	
}
