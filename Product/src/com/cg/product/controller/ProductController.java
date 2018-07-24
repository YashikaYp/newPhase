package com.cg.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.cg.product.beans.ProductEntity;

import com.cg.product.service.ProductService;

@Controller
public class ProductController {

	@Autowired 
	ProductService service;
	
	
	
	@RequestMapping("/viewProduct")
	public ModelAndView getCourse()
	{
		List<ProductEntity> products=service.getAllProducts();
		System.out.println(products.toString());
		return new ModelAndView("view","product",products);
	}
	
	@RequestMapping("/addProduct")
	public ModelAndView save(@ModelAttribute("product")ProductEntity product)
	{
		
		return new ModelAndView("add");
	}

}
