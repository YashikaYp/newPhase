package com.cg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cg.beans.Courses;

@Controller
public class URIController {
	
	
	
	@RequestMapping("/")
	public String main() {
		return "index";
	}
	
	@ModelAttribute("course")
	public Courses getCourse()
	{
		return new Courses();
	}
}
