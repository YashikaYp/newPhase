package com.cg.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cg.beans.Courses;
import com.cg.service.CourseService;

@Controller
public class CoursesActionController


{
	@Autowired
	CourseService service;
	
	@RequestMapping("/show")
	public ModelAndView getCourse()
	{
		List<Courses> course=service.showAll();
		return new ModelAndView("Main","course",course);
	}

	@RequestMapping("/updateCourse")
	public ModelAndView update(@ModelAttribute("course") Courses course)
	{
	Courses course1=service.findById(course.getId());
	List<Courses> list=service.showAll();
	ArrayList faculty=new ArrayList<>();
	for(Courses f1:list)
	{
		faculty.add(f1.getFaculty());
	}
	
		ModelAndView mv1=new ModelAndView("Update","course",course1);
		mv1.addObject("names", faculty);
		return mv1;
	
	}
	
	
	@RequestMapping(value="/updateSave",method=RequestMethod.POST)
	public ModelAndView updateCourse(@ModelAttribute("course") Courses course)
	{
		try
		{
			course=service.update(course);
			List<Courses> allcourse=service.showAll();
			
			ModelAndView mv=new ModelAndView("Main","course",allcourse);
			return mv;
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("error");

	}
}
