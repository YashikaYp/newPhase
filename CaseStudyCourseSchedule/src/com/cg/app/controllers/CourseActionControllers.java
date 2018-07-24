package com.cg.app.controllers;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cg.app.beans.Course;
import com.cg.app.services.CourseServices;

@Controller
public class CourseActionControllers {

	@Autowired
	CourseServices courseService;
	
	@RequestMapping(value="/view")
	public ModelAndView viewCourse()
	{
		List<Course> course=courseService.getAllCourses();
		//System.out.println(course);
		return new ModelAndView("viewCourses","course",course);
	}
	
	@Transactional	
	@RequestMapping(value="/updateSave")
	public ModelAndView updateSave(@RequestParam("cid") int cid,@RequestParam("faculty") String faculty,
			@RequestParam("duration") int duration)
	{
		courseService.updateCourse(cid,faculty,duration);
		return new ModelAndView("updateSuccess");
	}
}

