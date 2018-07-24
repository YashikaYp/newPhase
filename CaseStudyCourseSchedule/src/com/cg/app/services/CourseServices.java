package com.cg.app.services;

import java.util.List;

import com.cg.app.beans.Course;

public interface CourseServices {
	
	public List<Course> getAllCourses();
	
	public void updateCourse(int cid,String faculty,int duration);

}
