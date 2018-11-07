<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Laundry Forms List</title>
	<style><%@include file="/css/bootstrap.min.css"%></style>
	<style><%@include file="/css/materialize.min.css"%></style>
	<link href='https://fonts.googleapis.com/css?family=Patrick Hand' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Passion One' rel='stylesheet'>
</head>
<body>
<nav>
    <div class="nav-wrapper teal lighten-1">
    <p class="brand-logo" style="font-family:'Passion One'; padding-left: 30px;">LMS</p>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
      	<li><a class="btn" href="/ALMS">Home</a></li>
        <li><a class="btn" href="add.html">Apply a Laundry Form</a></li>
        </ul>
    </div>
  </nav>

<div class="container">
<c:if test="${!empty laundrys}">
	<h2 style="font-family:'Patrick Hand';">List of Laundry Forms</h2>
	<table align="left" border="1">
		<tr>
			<th>Sl No.</th>
			<th>Name</th>
			<th>Hostel</th>
			<th>Total Items</th>
			<th>Total Amount</th>
			<th>Status</th>			
			<th>Actions on Row</th>
		</tr>
		<c:set var="count" value="0" scope="page" />
		<c:forEach items="${laundrys}" var="laundry">
			<c:set var="count" value="${count + 1}" scope="page"/>
			<tr>
				<td><c:out value="${count}" /></td>
				<td><c:out value="${laundry.name}"/></td>
				<td><c:out value="${laundry.hostel}"/></td>
				<td><c:out value="${laundry.total_items}"/></td>
				<td><c:out value="${laundry.total_amount}"/></td>
				<td><c:out value="${laundry.status}"/></td>
				<td align="center"> 
				<a class="btn waves-effect waves-light" href="update.html?id=${laundry.id}">Update</a>  
				<a class="btn waves-effect waves-light" href="delete.html?id=${laundry.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	</c:if>
	</div>
</body>
</html>