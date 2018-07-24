package com.cg.app.dao;


import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cg.app.beans.Course;

public interface CourseDAO extends JpaRepository<Course, Integer>{

	@Transactional
	@Modifying
	@Query("UPDATE Course c SET c.faculty=:faculty, c.duration=:duration where c.cid=:cid")
	public void updateCourse(@Param("cid") int cid,@Param("faculty") String faculty,@Param("duration") int duration);	
}
