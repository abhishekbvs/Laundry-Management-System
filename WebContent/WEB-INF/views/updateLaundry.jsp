<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Update Laundry Form Status</title>
	<style><%@include file="/css/bootstrap.min.css"%></style>
	<style><%@include file="/css/materialize.min.css"%></style>
	
</head>
<body>
<nav>
    <div class="nav-wrapper teal lighten-1">
    <p class="brand-logo" style="font-family:'Passion One'; padding-left: 30px;">LMS</p>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
      <li><a class="btn" href="/ALMS">Home</a></li>
       <li><a class="btn" href="add.html">Apply a Laundry Form</a></li>
       <li><a class="btn" href="laundries.html">List of Laundry Form</a></li>
       </ul>
    </div>
 </nav>

<div class="container">
	<form:form method="POST" action="/ALMS/save.html">
	<h3>Update Status</h3>
	<form:label path="name"><h6>Name</h6></form:label>
	<form:input path="name" value="${laundry.name}" readonly="true"/>
	<button class="btn waves-effect waves-light" type="submit" name="action">Submit</button>
	</form:form>
	
</div>
</body>
</html>