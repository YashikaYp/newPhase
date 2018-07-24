<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>${headerMsg}</h1>
	<h2>You have registered yourself</h2>
	<table>
		<tr>
			<td>Student Name:</td>
			<td>${student1.studentname}</td>
		</tr>
	<tr>
			<td>Your Password:</td>
			<td>${student1.password}</td>
		</tr>
		<tr>
			<td>Student Hobby:</td>
			<td>${student1.hobby}</td>
		</tr>

		<tr>
			<td>Student Mobile:</td>
			<td>${student1.mobile}</td>
		</tr>
		<tr>
			<td>Student DOB:</td>
			<td>${student1.dob}</td>
		</tr>
		<tr>
			<td>Student Gender:</td>
			<td>${student1.gender}</td>
		</tr>
		<tr>
			<td>Sports:</td>
			<td>${student1.sports}</td>
		</tr>
		<tr>
			<td>Student SKill:</td>
			<td>${student1.skills}</td>
		</tr>
		<tr>
			<td>Student Address:</td>
		</tr>
		<tr>
			<td>Street:${student1.studentAddress.street}</td>
			<td>City:${student1.studentAddress.city}</td>
			<td>Country:${student1.studentAddress.country}</td>
			<td>Pin:${student1.studentAddress.pinCode}</td>
		</tr>
	</table>
</body>
</html>