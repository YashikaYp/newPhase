package com.cg.service;

import java.util.List;

import com.cg.beans.Courses;

public interface CourseService 
{
	public Courses saveCourse(Courses course);
	public List<Courses> showAll();
	public Courses update(Courses course);
	public Courses findById(int id);
}
