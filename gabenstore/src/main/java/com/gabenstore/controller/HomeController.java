package com.gabenstore.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController 
{
	@RequestMapping("/")
	public String getHome()
	{
     
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
	
	@RequestMapping("/Cart")
	public String getCart()
	{
		return "Cart";
	}
	
	@RequestMapping("/Shop")
	public String getShop()
	{
		return "Shop";
	}
	
}
