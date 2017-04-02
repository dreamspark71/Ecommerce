package com.gabenstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gabenstore.modal.Description;
import com.gabenstore.modal.Product;
import com.gabenstore.service.DescriptionService;
import com.gabenstore.service.ProductService;

@Controller
public class DescriptionController 
{
	@Autowired
	DescriptionService descriptionService;
	@Autowired
	ProductService productService;
	
	@RequestMapping("/DescriptionDB")
	public String getDescriptionDBPage(Model model)
	{
		model.addAttribute("description", new Description());
		model.addAttribute("displayProduct", productService.displayProduct());
		model.addAttribute("displayDescription", descriptionService.displayDescription());
		return "DescriptionDB";
	}
	
	@RequestMapping("/addDescription")
	public String addDescription(@ModelAttribute("description")Description description)
	{
		descriptionService.addDescription(description);
		return "redirect:/DescriptionDB";
	}
	
	@RequestMapping("/deleteDescription-{descriptionID}")
	public String deleteDescription(@PathVariable("descriptionID") int descriptionID)
	{
		descriptionService.deteleDescription(descriptionID);
		return "redirect:/DescriptionDB";
	}
	
	@RequestMapping("/updateDescription-{descriptionID}")
	public String updateDescription(Model model,@PathVariable("descriptionID")int descriptionID)
	{
		model.addAttribute("description",descriptionService.updateDescription(descriptionID));
		model.addAttribute("displayProduct", productService.displayProduct());
		model.addAttribute("displayDescription", descriptionService.displayDescription());
		return "DescriptionDB";
	}
	 
}
