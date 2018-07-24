<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SKIT tutorials point</title>
</head>
<body>
	
</body>
<center>

	<table border="2">

		<tr>
			<th>Course ID</th>
			<th>Course Name</th>
			<th>Duration</th>
			<th>Faculty</th>
		</tr>
		<core:forEach items="${course}" var="course">
			<tr>
				<td><core:out value="${course.id}" /></td>
				<td><core:out value="${course.coursename}" /></td>
				<td><core:out value="${course.duration}" /></td>
				<td><core:out value="${course.faculty}" /></td>
				<td><a href="<core:url value="updateCourse"><core:param name="id" value="${course.id}" /></core:url>"> Update</a></td>
			</tr>
		</core:forEach>
	</table>
</center>

</html>