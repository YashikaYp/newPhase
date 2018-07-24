<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
    
<%@page import="javassist.expr.NewArray"%>
<%@page import="java.util.*"%>
<%@page import="com.cg.app.beans.Course"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Courses</title>
</head>
<body>
<center>
	<table border="1">	
		<tr>
			<th>Course ID</th>
			<th>Course Name</th>
			<th>Duration</th>
			<th>Faculty</th>
		</tr>
		<core:forEach items="${course}" var="course">
			<tr>
				<td><core:out value="${course.cid}" /></td>
				<td><core:out value="${course.cname}" /></td>
				<td><core:out value="${course.duration}" /></td>
				<td><core:out value="${course.faculty}" /></td>
				<td><a href="updateCourse">Update</a></td>
			</tr>
		</core:forEach>
	</table>
	</center>
	<div align="right">
		<a href="/CaseStudyCourseSchedule/">Home Page</a>
	</div>


</body>
</html>