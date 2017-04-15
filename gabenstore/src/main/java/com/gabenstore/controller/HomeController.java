package com.gabenstore.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gabenstore.service.DescriptionService;
import com.gabenstore.service.ProductService;
import com.gabenstore.service.UserService;

@Controller
public class HomeController 
{
	@Autowired
	ProductService productService;
	@Autowired
	DescriptionService descriptionService;
	@Autowired
	UserService userService;
	
	@RequestMapping("/")
	public String getHome(Model model)
	{
		model.addAttribute("featured",productService.displayProductFeatured());
		model.addAttribute("latest",productService.displayProductLatest());
		return "Home";
	}
	
	@RequestMapping("/Return")
	public String getReturn()
	{
		return "Return";
	}
	
	@RequestMapping("/FAQ")
	public String getFAQ()
	{
		return "FAQ";
	}
	
	@RequestMapping("/Policy")
	public String getPolicy()
	{
		return "Policy";
	}
	
	@RequestMapping("/403")
	public String get403()
	{
		return "403";
	}
	
	@RequestMapping("/Shop")
	public String getShop(Model model)
	{
		model.addAttribute("displayProduct",productService.displayProductByJson());
		return "Shop";
	}
	
	
	
}
