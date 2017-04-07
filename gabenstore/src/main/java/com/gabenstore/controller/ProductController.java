package com.gabenstore.controller;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.gabenstore.modal.Product;
import com.gabenstore.service.ProductService;
import com.google.gson.Gson;
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
		model.addAttribute("displayCategory", categoryService.displayCategoryByJson());
		model.addAttribute("displayCategory",categoryService.displayCategory());
		model.addAttribute("displayProduct", productService.displayProductByJson());
		return "ProductDB";
	}
	
	@RequestMapping("/addProduct")
	public String addProduct(@ModelAttribute("product")Product product,MultipartFile productImage,Model model)
	{
		String Data_Folder="D:\\Projects\\gabenstore\\src\\main\\webapp\\resources\\theme1\\images\\productImages\\";
		productService.addProduct(product);
		if (!productImage.isEmpty()) 
		{
            try 
            {
                byte[] bytes = productImage.getBytes();
                File directory = new File(Data_Folder);
                if (!directory.exists()) {
                    directory.mkdirs();
                }

                File imageFile = new File(Data_Folder + product.getProductID() + ".jpg");
                BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(imageFile));
                stream.write(bytes);
                stream.close();
            }
            catch (Exception e) 
            {
                e.printStackTrace();
                model.addAttribute("fmessage", "Image Upload Failed.try again");
            }
            model.addAttribute("filemessage", "Image Upload Successful");
        } 
		else 
		{
            model.addAttribute("filemessage", "Image file is required");
        }
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
