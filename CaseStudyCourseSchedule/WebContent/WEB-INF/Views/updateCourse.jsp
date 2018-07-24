<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="javassist.expr.NewArray"%>
<%@page import="java.util.*"%>
<%@page import=" com.cg.app.beans.Course"%>

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
		<form:form method="GET" action="updateSave" modelAttribute="course">
			<table align="center">
				<tr>
					<td>Course Id:</td>
					<td><form:input path="cid" size="30"/></td>
					<td><form:errors path="cid" cssClass="error" /></td>
			</tr>
				<tr>
					<td></td>
					<td><form:hidden path="cname" /></td>
				</tr>
				<br>
				<tr>
					<td>Duration:</td>
					<td><form:input path="duration" size="30" /></td>
					<td><form:errors path="duration" cssClass="error" /></td>
				</tr>
				<br>
				<tr>
					<td>Faculty:</td>
					<td><form:select path="faculty">
							<form:option value="None" label="---Select---"></form:option>
							<form:option value="Steve">Steve</form:option>
							<form:option value="William">William</form:option>
							<form:option value="Johnson S">Johnson S</form:option>
							<form:option value="Serena">Serena</form:option>
						</form:select></td>
					<td><form:errors path="faculty" cssClass="error" /></td>
				</tr>
				<br>
				<tr>
					<td><input type="submit" value="Update" /></td>
				</tr>
			</table>
		</form:form>
	</center>
	<div align="right">
		<a href="/CaseStudyCourseSchedule/">Home Page</a>
	</div>


</body>
</html>
</body>
</html>