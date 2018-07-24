package com.cg.app.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cg.app.beans.Course;
import com.cg.app.dao.CourseDAO;

@Component(value="courseService")
public class CourseServiceImpl implements CourseServices{

	@Autowired
	CourseDAO dao;
	
	@Override
	public List<Course> getAllCourses() {
		
		return dao.findAll();
	}

	@Override
	@Transactional	
	public void updateCourse(int cid, String faculty, int duration) {
		
		 dao.updateCourse(cid, faculty, duration);
	}

}
