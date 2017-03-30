package com.gabenstore.dao;
import com.gabenstore.modal.*;
import java.util.*;
public interface CategoryDAO 
{
	public void addCategory(Category category);
	public List<Category> displayCategory();
	public void deteleCategory(int categoryID);
	public Category updateCategory(int categoryID);
}
