<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Laundry Management</title>
<style><%@include file="/css/bootstrap.min.css"%></style>
<style><%@include file="/css/materialize.min.css"%></style>
<link href='https://fonts.googleapis.com/css?family=Carter One' rel='stylesheet'>
</head>

<body background="<c:url value='/images/washing.png'/>" style="background-repeat: no-repeat; background-size: cover;" >
<div class="jumbotron ">
<div class="container" style=" text-align:center;">
    <h2 style="font-family: 'Carter One'">Laundry Management System</h2>
 	<a class="btn waves-effect waves-light btn-large" href="add.html" >Apply a Laundry Form</a>
 	<a class="btn waves-effect waves-light btn-large" href="laundries.html" >Laundry Form List</a>
</div>
</div>
<div class="container fluid" >

</div>
</body>
</html>