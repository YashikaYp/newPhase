package com.cg.app.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cg.app.beans.Course;

@Controller
public class URIController {

	@RequestMapping(value = "/")
	public String getIndexPage() {
		return "index";
	}
	
	@ModelAttribute("course")
	public Course getCourse()
	{
		return new Course();
	}
	@RequestMapping(value="showCourses")
	public String getAllCourse()
	{
		return "showCourses";
	}
	
	@RequestMapping(value="updateCourse")
	public String updateDetails()
	{
		return "updateCourse";
	}
}
