package com.cg.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cg.beans.Courses;

public interface CourseRepo extends JpaRepository<Courses, Integer>
{

}
