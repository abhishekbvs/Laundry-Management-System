<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Update Status</title>
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
       <li><a class="btn" href="laundries.html">List of Laundry Form</a></li>
       </ul>
    </div>
 </nav>

<div class="container">
	<form:form method="POST" action="/ALMS/save.html">
	<h3 style="font-family:'Patrick Hand';">Update Status</h3>
	<div class = "row"> 
	<div class="col-4">
		<label><h6>Status</h6></label>
                <select name="status" class = "browser-default">
                     <option value = "" disabled selected>Update Status</option>
                     <option value = "Washing in Progress">Washing in Progress</option>
                     <option value = "Ironing in Progress">Ironing in progress</option>
                     <option value = "Laundry Done">Laundry Done</option>
                     <option value = "Payment Done">Payment Done</option>
                  </select>
	</div>
	<div class="col-1">
		<button class="btn waves-effect waves-light" type="submit" value="save" name="save" name="action">Update</button>
	</div>
	<div class="col-2">
		<button class="btn waves-effect waves-light" type="submit" value="sms" name="sms" name="action">Update with SMS</button>
	</div>
	</div>
	<div class="row">
		<div class="col-2">
			<form:label path="id"><h6>Unique ID</h6></form:label>
			<form:input path="id" value="${laundry.id}" readonly="true"/>
		</div>
		
		<div class="col-3">
			<form:label path="name"><h6>Name</h6></form:label>
			<form:input path="name" value="${laundry.name}" readonly="true"/>
		</div>
	
		<div class="col-3">
			<form:label path="total_items"><h6>Total Items</h6></form:label>
			<form:input path="total_items" value="${laundry.total_items}" readonly="true"/>
		</div>
		<div class="col-4">
			<form:label path="total_amount"><h6>Total Amount</h6></form:label>
			<form:input path="total_amount" value="${laundry.total_amount}" readonly="true"/>
		</div>
		
	</div>
	<div class = "row">
		<div class="col-3">
			<form:label path="phno"><h6>Phone No</h6></form:label>
			<form:input path="phno" value="${laundry.phno}" readonly="true"/>
		</div>
			<div class = "col-3">
				<form:label path="batch"><h6>Batch</h6></form:label>
	            <form:input path="batch" value="${laundry.batch}"  readonly="true"/>
			</div>
			<div class = "col-3">
				<form:label path="hostel"><h6>Hostel</h6></form:label>
				<form:input path="hostel" value="${laundry.hostel}"  readonly="true"/>
			</div>
			<div class = "col-3">
				<form:label path="room"><h6>Room</h6></form:label>
				<form:input path="room" value="${laundry.room}"  readonly="true"/>
			</div>
	</div>
	
	<div class = "row">
			<div class ="col-3">
				<form:label path="shirt"><h6>Shirts</h6></form:label>
             	<form:input path="shirt" value="${laundry.shirt}" readonly="true"/>
			</div>
			<div class ="col-3">
				<form:label path="pant"><h6>Pants</h6></form:label>
				<form:input path="pant" value="${laundry.pant}" readonly="true"/>
			</div>
			<div class ="col-3"> 
				<form:label path="jeans"><h6>Jeans</h6></form:label>
				<form:input path="jeans" value="${laundry.jeans}" readonly="true"/>
			</div>
			<div class ="col-3">
				<form:label path="shorts"><h6>Shorts</h6></form:label>
				<form:input path="shorts" value="${laundry.shorts}" readonly="true"/>			
			</div>
		</div>
		<div class="row">
			<div class ="col-3"> 
				<form:label path="towel"><h6>Towels</h6></form:label>
				<form:input path="towel" value="${laundry.towel}" readonly="true"/>
			</div>
			<div class ="col-3"> 
				<form:label path="mundu"><h6>Mundu</h6></form:label>
				<form:input path="mundu" value="${laundry.mundu}" readonly="true"/>
			</div>	
			<div class ="col-3"> 
				<form:label path="bedsheet"><h6>Bed Sheets</h6></form:label>
				<form:input path="bedsheet" value="${laundry.bedsheet}" readonly="true"/>
			</div>
			<div class ="col-3"> 
				<form:label path="pillowcover"><h6>Pillow Covers</h6></form:label>
				<form:input path="pillowcover" value="${laundry.pillowcover}" readonly="true"/>
			</div>				
		</div>
		<div class="row">
			<div class ="col-3"> 
				<form:label path="status"><h6>Present Status</h6></form:label>
				<h6 style="color:red;"><strong> ${laundry.status}</strong></h6>
			</div>
			<div class ="col-4"> 
				<form:label path="washing"><h6>Washing</h6></form:label>
				<form:input path="washing" value="${laundry.washing}" readonly="true"/>
			</div>
			<div class ="col-4"> 
				<form:label path="ironing"><h6>Ironing</h6></form:label>
				<form:input path="ironing" value="${laundry.ironing}" readonly="true"/>
			</div>
						
		</div>
	</form:form>
	
</div>
</body>
</html>