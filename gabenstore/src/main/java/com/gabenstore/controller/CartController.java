package com.gabenstore.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gabenstore.modal.CartItems;
import com.gabenstore.modal.Product;
import com.gabenstore.modal.User;
import com.gabenstore.service.CartService;
import com.gabenstore.service.ProductService;
import com.gabenstore.service.UserService;
import com.google.gson.Gson;

@Controller
public class CartController 
{
	@Autowired
	CartService cartService;
	@Autowired
	ProductService productService;
	@Autowired
	UserService userService;
	@Autowired
	SessionFactory sessionFactory;
	
	@RequestMapping("/addToCartHome-{productID}")
	public String addToCartHome(Principal p,@ModelAttribute("cartItems")CartItems cartItems,@PathVariable("productID")int productID,Model model,HttpServletRequest request)
	{
		try
		{
			CartItems c=cartService.displayCartProduct(productID);
			Gson g=new Gson();
			String json=g.toJson(c);
			model.addAttribute("cart","You already have this item in cart");
			return "redirect:/";
		}
		catch(Exception e)
		{
			int uid=userService.getUserByName(p.getName()).getUserID();
			cartItems.setUserID(uid);
			cartItems.setCartID(uid);
			cartItems.setProductID(productID);
			cartItems.setProductName(productService.updateProduct(productID).getProductName());
			cartItems.setCartAmount(productService.updateProduct(productID).getProductSalePrice());
			cartItems.setCartItemQuantity(1);
			int price=productService.updateProduct(productID).getProductSalePrice();
			int quant=cartItems.getCartItemQuantity();
			cartItems.setCartTotalAmount(price*quant);
			cartService.addCart(cartItems);
			return "redirect:/";
		}
		
	}
	
	@RequestMapping("/viewCart")
	public String getCart(Model model,Principal p)
	{
		int uid=userService.getUserByName(p.getName()).getUserID();
		model.addAttribute("displayCart",cartService.displayCart(uid));
		return "Cart";
	}
	
	@RequestMapping("/addToCartShop-{productID}")
	public String addToCartShop(Principal p,@ModelAttribute("cartItems")CartItems cartItems,@PathVariable("productID")int productID,Model model)
	{
		try
		{
			CartItems c=cartService.displayCartProduct(productID);
			Gson g=new Gson();
			String json=g.toJson(c);
			model.addAttribute("cart","You already have this item in cart");
			return "redirect:/Shop";
		}
		catch(Exception e)
		{
			int uid=userService.getUserByName(p.getName()).getUserID();
			cartItems.setUserID(uid);
			cartItems.setCartID(uid);
			cartItems.setProductID(productID);
			cartItems.setProductName(productService.updateProduct(productID).getProductName());
			cartItems.setCartAmount(productService.updateProduct(productID).getProductSalePrice());
			cartItems.setCartItemQuantity(1);
			int price=productService.updateProduct(productID).getProductSalePrice();
			int quant=cartItems.getCartItemQuantity();
			cartItems.setCartTotalAmount(price*quant);
			cartService.addCart(cartItems);
			return "redirect:/Shop";
		}
	}
	
	@RequestMapping("/delete-{cartItemsID}")
	public String deleteCart(@PathVariable("cartItemsID")int cartItemsID)
	{
		cartService.deletecart(cartItemsID);
		return "redirect:/viewCart";
	}
	
	@RequestMapping("/addToCartViewProduct-{productID}")
	public String addToCartViewProduct(Principal p,@ModelAttribute("cartItems")CartItems cartItems,@PathVariable("productID")int productID,Model model)
	{
		try
		{
			CartItems c=cartService.displayCartProduct(productID);
			Gson g=new Gson();
			String json=g.toJson(c);
			model.addAttribute("cart","You already have this item in cart");
			return "redirect:/viewProduct-"+productID;
		}
		catch(Exception e)
		{
			int uid=userService.getUserByName(p.getName()).getUserID();
			cartItems.setUserID(uid);
			cartItems.setCartID(uid);
			cartItems.setProductID(productID);
			cartItems.setProductName(productService.updateProduct(productID).getProductName());
			cartItems.setCartAmount(productService.updateProduct(productID).getProductSalePrice());
			int price=productService.updateProduct(productID).getProductSalePrice();
			int quant=cartItems.getCartItemQuantity();
			cartItems.setCartTotalAmount(price*quant);
			cartService.addCart(cartItems);
			return "redirect:/viewProduct-"+productID;
		}
	}
	
	@RequestMapping("/addToCartWish-{productID}")
	public String addToCartWish(Principal p,@ModelAttribute("cartItems")CartItems cartItems,@PathVariable("productID")int productID,Model model)
	{
		try
		{
			CartItems c=cartService.displayCartProduct(productID);
			Gson g=new Gson();
			String json=g.toJson(c);
			model.addAttribute("cart","You already have this item in cart");
			return "redirect:/AccountWishlist";
		}
		catch(Exception e)
		{
			int uid=userService.getUserByName(p.getName()).getUserID();
			cartItems.setUserID(uid);
			cartItems.setCartID(uid);
			cartItems.setProductID(productID);
			cartItems.setProductName(productService.updateProduct(productID).getProductName());
			cartItems.setCartAmount(productService.updateProduct(productID).getProductSalePrice());
			cartItems.setCartItemQuantity(1);
			int price=productService.updateProduct(productID).getProductSalePrice();
			int quant=cartItems.getCartItemQuantity();
			cartItems.setCartTotalAmount(price*quant);
			cartService.addCart(cartItems);
			return "redirect:/AccountWishlist";
		}
	}
}
