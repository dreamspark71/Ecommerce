package com.gabenstore.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.gabenstore.modal.RatingView;
import com.gabenstore.modal.Review;
import com.gabenstore.service.DescriptionService;
import com.gabenstore.service.ProductService;
import com.gabenstore.service.RatingViewService;
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
	@Autowired
	RatingViewService ratingViewService;
	
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
	 
	@RequestMapping("/viewProduct-{descriptionID}")
	public String viewDescription(@PathVariable("descriptionID")int descriptionID,Model model,HttpSession session)
	{
		Description d=descriptionService.updateDescription(descriptionID);
		Gson g=new Gson();
		String jsonView=g.toJson(d);
		session.setAttribute("idProduct", d.getProductID());
		model.addAttribute("description",jsonView);
		model.addAttribute("review",new Review());
		model.addAttribute("displayReview",reviewService.displayReviewByJson(d.getProductID()));
		model.addAttribute("topFeatured",productService.displayTopFeatured());
		/*RatingView rv=ratingViewService.displayRating(descriptionID);
		String jsong=g.toJson(rv);
		model.addAttribute("rating",jsong);*/
		DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		Date date = new Date();
		model.addAttribute("date",dateFormat.format(date));
		return "ProductDescription";
	}	
	
	@RequestMapping("/addReview")
	public String addReview(@ModelAttribute("review")Review review,HttpSession session,Model model)
	{	
		int a=(Integer) session.getAttribute("idProduct");
		reviewService.addReview(review);
		return "redirect:/viewProduct-"+a;
		
	}
	
}
