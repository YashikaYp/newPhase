package com.cg.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cg.beans.Courses;
import com.cg.repo.CourseRepo;
@Component(value="service")
public class CourseServiceImpl implements CourseService
{

	@Autowired
	CourseRepo repo;
	@Override
	public Courses saveCourse(Courses course) {
		
		return repo.save(course);
	}

	@Override
	public List<Courses> showAll() {
		
		return repo.findAll();
	}

	@Override
	
	public Courses update(Courses course) {
		return repo.save(course);
	}

	@Override
	public Courses findById(int id) {
		Courses course=repo.findOne(id);
		return course;
	}

}
