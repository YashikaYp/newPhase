<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View</title>
</head>
<body>
<h1>Here is the list of all products</h1>

<center>
<table border="2">

		<tr>
			<th>Product ID</th>
			<th>Product Name</th>
			<th>Brand Name</th>
			<th>Price</th>
		</tr>
		<core:forEach items="${product}" var="products">
			<tr>
				<td><core:out value="${products.productId}" /></td>
				<td><core:out value="${products.productName}" /></td>
				<td><core:out value="${products.brandName}" /></td>
				<td><core:out value="${products.price}" /></td>
				
				<td><a href="<core:url value="update"><core:param name="id" value="${products.productId}" /></core:url>"> Update</a></td>
			</tr>
		</core:forEach>
		
	<h4 align="left"><a href="add">Add Product</a></h4>
</table>
</center>
</body>
</html>