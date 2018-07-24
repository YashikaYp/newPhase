package com.cg.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cg.product.beans.ProductEntity;

@Controller
public class URIController {

	
	@RequestMapping("/")
	public String getIndex()
	{
		return "index";
	}
	
	/*@RequestMapping("/viewProduct")
	public String viewProduct()
	{
		return "view";
	}
	
	@RequestMapping("/addProduct")
	public String add()
	{
		return "add";
	}
	
	@RequestMapping("/updateProduct")
	public String update()
	{
		return "update";
	}
	*/

	
	
	@ModelAttribute("products")
	public ProductEntity getProduct()
	{
		return new ProductEntity();
	}

}

