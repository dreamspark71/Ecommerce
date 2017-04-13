package com.gabenstore.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gabenstore.dao.ProductDAOImp;
import com.gabenstore.modal.Category;
import com.gabenstore.modal.Product;

@Service
@Transactional
public class ProductService 
{
	@Autowired
	ProductDAOImp productDAOImp;
	public void addProduct(Product product)
	{
		productDAOImp.addProduct(product);
	}
	
	public List<Product> displayProduct()
	{
		return productDAOImp.displayProduct();
	}
	
	public void deleteProduct(int productID) 
	{
		productDAOImp.deleteProduct(productID);
	}
	
	public Product updateProduct(int productID)
	{
		return productDAOImp.updateProduct(productID);
	}

	public String displayProductByJson()
	{
		return productDAOImp.displayProductByJson();
	}
	
	public String displayProductFeatured()
	{
		return productDAOImp.displayProductFeatured();
	}
	
	public String displayProductLatest()
	{
		return productDAOImp.displayProductLatest();
	}
}
