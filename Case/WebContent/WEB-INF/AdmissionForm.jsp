<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<title>admission</title>
</head>
<body>
	<h1>${headerMsg}</h1>
	<h2>STUDENT DETAILS HERE</h2>
	<form:errors path="student1.*"/>  <!-- shows the error path -->
	<form action="/Case/submitAdmissionForm.html" method="post">
		<table>
			<tr>
				<td>Student name :</td>
				<td><input type="text" name="studentname"></td>
			</tr>
			<tr>
				<td>Student hobby :</td>
				<td><input type="text" name="hobby"></td>
			</tr>
		
			<tr>
				<td>Student mobile :</td>
				<td><input type="text" name="mobile"></td>
			</tr>
			<tr>
				<td>Student DOB :</td>
				<td><input type="text" name="dob"></td>
			</tr>
			<tr>
				<td>Student SKills :</td>
				<td><select name="skills" multiple>
						<option value="JAVA CORE" > JAVA Core </option>
						<option value="SPRING"> SPRING </option>
						<option value="JDBC">JDBC </option>


				</select></td>
			</tr>
			<tr>
			<td> Student Address: </td> </tr>
			 <tr> 
			 <td>street : <input type="text" name="studentAddress.street"> </td>
			<td>city : <input type="text" name="studentAddress.city"> </td>
			<td>country : <input type="text" name="studentAddress.country"> </td>
			<td>pin : <input type="text" name="studentAddress.pinCode"> </td>
			
			</tr>
			<tr>
				<td>Gender :</td>
				<td><input name="gender" type="radio" value="Male" >Male</td>			
				<td><input name="gender" type="radio" value="Female" >Female</td>
				</tr>
			<tr>
				<td>Sports :</td>
				<td><input name="sports" type="checkbox" value="Cricket">Cricket</td>
				<td><input name="sports" type="checkbox" value="Badminton">Badminton</td>
			</tr>
				<tr>
				<td>Password :</td>
				<td><input type="password" name="password" /></td>			
				
				</tr>
		</table>
		<input type="submit" value="Click">


	</form>
</body>
</html>