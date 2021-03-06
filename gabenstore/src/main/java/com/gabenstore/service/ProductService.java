package com.gabenstore.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gabenstore.dao.ProductDAOImp;
import com.gabenstore.modal.Category;
import com.gabenstore.modal.CategoryView;
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
	
	public List<Product> displayProductFeatured()
	{
		return productDAOImp.displayProductFeatured();
	}
	
	public List<Product> displayProductLatest()
	{
		return productDAOImp.displayProductLatest();
	}
	
	public List<Product> displayTopFeatured()
	{
		return productDAOImp.displayTopFeatured();
	}
	
	public List<Product> displayTopSale()
	{
		return productDAOImp.displayTopSale();
	}
	
	public List<CategoryView> displayRelated(String categoryName)
	{
		return productDAOImp.displayRelated(categoryName);
	}
	
	public void updateQuantity(int productID,int productQuantity)
	{
		productDAOImp.updateQuantity(productID, productQuantity);
	}
	
	public String productSearch(int categoryID)
	{
		return productDAOImp.productSearch(categoryID);
	}
	
	public String productSearchSub(String productSubCategory)
	{
		return productDAOImp.productSearchSub(productSubCategory);
	}
	
	public void updateTag(int productID)
	{
		productDAOImp.updateTag(productID);
	}
}
