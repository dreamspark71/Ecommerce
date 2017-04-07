package com.gabenstore.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.coyote.http11.Http11AprProtocol;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.gabenstore.modal.Description;
import com.gabenstore.modal.Product;
import com.gabenstore.modal.Review;
import com.gabenstore.service.DescriptionService;
import com.gabenstore.service.ProductService;
import com.gabenstore.service.ReviewService;
import com.google.gson.Gson;

@Controller
public class DescriptionController 
{
	@Autowired
	DescriptionService descriptionService;
	@Autowired
	ProductService productService;
	@Autowired
	ReviewService reviewService;
	
	@RequestMapping("/DescriptionDB")
	public String getDescriptionDBPage(Model model)
	{
		model.addAttribute("description", new Description());
		model.addAttribute("displayProduct", productService.displayProductByJson());
		model.addAttribute("displayProduct",productService.displayProduct());
		model.addAttribute("displayDescription", descriptionService.displayDescriptionByJson());
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
	 
	@RequestMapping("/viewProduct-{productID}")
	public String viewDescription(@PathVariable("productID")int productID,Model model,HttpSession session)
	{
		Description d=descriptionService.updateDescription(productID);
		Gson g=new Gson();
		String jsonView=g.toJson(d);
		session.setAttribute("idProduct", d.getProductID());
		model.addAttribute("description",jsonView);
		model.addAttribute("review",new Review());
		model.addAttribute("displayReview",reviewService.displayReview());
		return "ProductDescription";
	}	
	
	@RequestMapping("/addReview")
	public String addReview(@ModelAttribute("review")Review review,HttpSession session)
	{	
		int a=(Integer) session.getAttribute("idProduct");
		reviewService.addReview(review);
		return "redirect:/viewProduct-"+a;
	}
	
}
