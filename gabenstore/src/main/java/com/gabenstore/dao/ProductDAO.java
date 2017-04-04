package com.gabenstore.dao;

import java.util.List;

import com.gabenstore.modal.Category;
import com.gabenstore.modal.Product;

public interface ProductDAO 
{
	public void addProduct(Product product);
	public List<Product> displayProduct();
	public void deleteProduct(int productID);
	public Product updateProduct(int productID);
	public String displayProductByJson();
}
