package com.gabenstore.modal;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class CategoryView 
{
	@Id
	private int productID;
	private String productSubCategory;
	private int productSalePrice;
	private int productOriginalPrice;
	private String productName;
	private String categoryName;
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductSubCategory() {
		return productSubCategory;
	}
	public void setProductSubCategory(String productSubCategory) {
		this.productSubCategory = productSubCategory;
	}
	public int getProductSalePrice() {
		return productSalePrice;
	}
	public void setProductSalePrice(int productSalePrice) {
		this.productSalePrice = productSalePrice;
	}
	public int getProductOriginalPrice() {
		return productOriginalPrice;
	}
	public void setProductOriginalPrice(int productOriginalPrice) {
		this.productOriginalPrice = productOriginalPrice;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	
}
