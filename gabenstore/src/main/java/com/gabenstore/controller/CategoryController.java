package com.gabenstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gabenstore.modal.Category;
import com.gabenstore.service.CategoryService;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/CategoryDB")
	public String getCategoryDBPage(Model model)
	{
		model.addAttribute("category", new Category());
		model.addAttribute("displayCategory", categoryService.displayCategoryByJson());
		return "CategoryDB";
	}
	
	@RequestMapping("/addCategory")
	public String addCategory(@ModelAttribute("category")Category category)
	{
		categoryService.addCategory(category);
		return "redirect:/CategoryDB";
	}
	
	@RequestMapping("/deleteCategory-{categoryID}")
	public String deleteCategory(@PathVariable("categoryID") int categoryID)
	{
		categoryService.deteleCategory(categoryID);
		return "redirect:/CategoryDB";
	}
	
	@RequestMapping("/updateCategory-{categoryID}")
	public String updateCategory(Model model,@PathVariable("categoryID")int categoryID)
	{
		model.addAttribute("category",categoryService.updateCategory(categoryID));
		model.addAttribute("displayCategory", categoryService.displayCategory());
		return "CategoryDB";
	}
	
}
