<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<div align="center">
<h2>Add Product</h2>
<form:form action="viewProduct" method="post" modelAttribute="customer">
<table align="center">
<tr>
<td>Product ID:</td>
<td><form:input path="productId" size="30"/></td>

</tr>

<tr>
<td>Product Name:</td>
<td><form:input path="productName" size="30"/></td>
<td><form:errors path="mobileNo" cssClass="error"/></td>
</tr>

<tr>
<td>Product Brand Name:</td>
<td><form:input path="brandName" size="30"/></td>
<td><form:errors path="wallet.balance" cssClass="error"/></td>
</tr>
<tr>
<td>Product Price:</td>
<td><form:input path="price" size="30"/></td>
<td><form:errors path="wallet.balance" cssClass="error"/></td>
</tr>

<tr>
<td><input type="submit" value="Submit"/></td>
</tr>
</table>
</form:form>
</body>
</html>