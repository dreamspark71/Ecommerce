package com.gabenstore.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gabenstore.dao.CategoryDAOImp;
import com.gabenstore.modal.Category;

@Service
@Transactional
public class CategoryService 
{
	@Autowired
	CategoryDAOImp categoryDAOImp;
	public void addCategory(Category category)
	{
		categoryDAOImp.addCategory(category);
	}
	
	public List<Category> displayCategory()
	{
		return categoryDAOImp.displayCategory();
	}
	
	public void deteleCategory(int categoryID) 
	{
		categoryDAOImp.deteleCategory(categoryID);
	}
	
	public Category updateCategory(int categoryID)
	{
		return categoryDAOImp.updateCategory(categoryID);
	}
	
	public String displayCategoryByJson() 
	{
		return categoryDAOImp.displayCategoryByJson();
	}
}
