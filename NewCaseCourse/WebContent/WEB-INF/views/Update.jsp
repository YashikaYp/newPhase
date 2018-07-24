<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="javassist.expr.NewArray"%>
<%@page import="java.util.*"%>
<%@page import=" com.cg.beans.Courses"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.error {
	color: red;
	font_weight: bold;
}
</style>
</head>
<body>
	<center>	
	 you can edit here...
		<form:form method="POST" action="updateSave" modelAttribute="course">
			<table align="center">
				<tr>
					<td>Course Id:</td>
					<td><form:input path="id" size="30"/></td>
					<td><form:errors path="id" cssClass="error" /></td>
			</tr>
				<tr>
					<td>Course Name:</td>
					<td><form:input path="coursename"  readonly="true"/></td>
				</tr>
				
				<tr>
					<td>Duration:</td>
					<%-- <input value="${courseId.duration}"/> --%>
					<td><form:input path="duration" size="30" /></td>
					<td><form:errors path="duration" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Faculty:</td>
					<td><form:select path="faculty" > 
							<form:options items="${names}"/>
						</form:select></td>
					<td><form:errors path="faculty" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td><input type="submit" value="Update" /></td>
				</tr>
			</table>
		</form:form>
	</center>
	<div align="right">
		<a href="/payment_153059_phase4/">Main Page</a>
	</div>


</body>
</html>

