package com.gabenstore.modal;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import com.gabenstore.modal.Category;
@Entity
public class Product 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int productID;
	private String productName;
	private String productSubCategory;
	private int productOriginalPrice;
	private int productSalePrice;
	private int productQuantity;
	private String productTag;
	@Transient
	private MultipartFile productImage;
	private int categoryID;
	@ManyToOne
	@JoinColumn(name="categoryID",nullable=false,updatable=false,insertable=false)
	private Category category;
	
	public MultipartFile getProductImage() {
		return productImage;
	}
	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}
	
	public String getProductTag() {
		return productTag;
	}
	public void setProductTag(String productTag) {
		this.productTag = productTag;
	}
	
	
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public String getProductSubCategory() {
		return productSubCategory;
	}
	public void setProductSubCategory(String productSubCategory) {
		this.productSubCategory = productSubCategory;
	}
	public int getProductOriginalPrice() {
		return productOriginalPrice;
	}
	public void setProductOriginalPrice(int productOriginalPrice) {
		this.productOriginalPrice = productOriginalPrice;
	}
	public int getProductSalePrice() {
		return productSalePrice;
	}
	public void setProductSalePrice(int productSalePrice) {
		this.productSalePrice = productSalePrice;
	}
	public int getProductQuantity() {
		return productQuantity;
	}
	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}

}
