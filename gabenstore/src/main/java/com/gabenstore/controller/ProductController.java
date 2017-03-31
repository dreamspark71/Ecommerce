package com.gabenstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import com.gabenstore.modal.Product;
import com.gabenstore.service.ProductService;
import com.gabenstore.service.CategoryService;

@Controller
public class ProductController 
{
	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;
	@RequestMapping("/ProductDB")
	public String getProductDBPage(Model model)
	{
		model.addAttribute("product", new Product());
		model.addAttribute("displayCategory", categoryService.displayCategory());
		model.addAttribute("displayProduct", productService.displayProduct());
		return "ProductDB";
	}
	
	@RequestMapping("/addProduct")
	public String addProduct(@ModelAttribute("product")Product product)
	{
		productService.addProduct(product);
		return "redirect:/ProductDB";
	}
	
	@RequestMapping("/deleteProduct-{productID}")
	public String deleteProduct(@PathVariable("productID") int productID)
	{
		productService.deleteProduct(productID);
		return "redirect:/ProductDB";
	}
	
	@RequestMapping("/updateProduct-{productID}")
	public String updateProduct(Model model,@PathVariable("productID")int productID)
	{
		model.addAttribute("product",productService.updateProduct(productID));
		model.addAttribute("displayCategory", categoryService.displayCategory());
		model.addAttribute("displayProduct", productService.displayProduct());
		return "ProductDB";
	}
}
