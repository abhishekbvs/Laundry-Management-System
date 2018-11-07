<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Laundry Form</title>
	<style><%@include file="/css/bootstrap.min.css"%></style>
	<style><%@include file="/css/materialize.min.css"%></style>
  	<link href='https://fonts.googleapis.com/css?family=Patrick Hand' rel='stylesheet'>
  	<link href='https://fonts.googleapis.com/css?family=Passion One' rel='stylesheet'>
  </head>
<body>
<nav>
    <div class="nav-wrapper teal lighten-1">
     <p  class="brand-logo" style="font-family:'Passion One'; padding-left: 30px;">LMS</p>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
      	<li><a class="btn" href="/ALMS">Home</a></li>
        <li><a class="btn" href="laundries.html">Laundry Form List</a></li>
        </ul>
    </div>
  </nav>
        
	<div class="container">
		<h2 style="font-family:'Patrick Hand';">Laundry Form</h2>
		<form:form method="POST" action="/ALMS/save.html">
		<div class="container-fluid">
		<div class="row">
			<div class="col-6"> 
				<form:label path="name"><h6>Name</h6></form:label>
				<form:input path="name" value="${laundry.name}"/>
			</div>
			<div class = "col-6">
				<form:label path="phno"><h6>Phone No.</h6></form:label>
	            <form:input path="phno" value="${laundry.phno}"/>
			</div>
		</div>
		<div class = "row">
			<div class = "col-4">
				<form:label path="batch"><h6>Batch</h6></form:label>
	            <form:input path="batch" value="${laundry.batch}"/>
			</div>
			<div class = "col-4">
				<form:label path="hostel"><h6>Hostel</h6></form:label>
				<form:input path="hostel" value="${laundry.hostel}"/>
			</div>
			<div class = "col-4">
				<form:label path="room"><h6>Room</h6></form:label>
				<form:input path="room" value="${laundry.room}"/>
			</div>
		</div>
		<div class = "row">
			<div class ="col-3">
				<form:label path="shirt"><h6>Shirts</h6></form:label>
             	<form:input id="i1" path="shirt" value="${laundry.shirt}"/>
			</div>
			<div class ="col-3">
				<form:label path="pant"><h6>Pants</h6></form:label>
				<form:input id="i2" path="pant" value="${laundry.pant}"/>
			</div>
			<div class ="col-3"> 
				<form:label path="jeans"><h6>Jeans</h6></form:label>
				<form:input id="i3" path="jeans" value="${laundry.jeans}"/>
			</div>
			<div class ="col-3">
				<form:label path="shorts"><h6>Shorts</h6></form:label>
				<form:input id="i4" path="shorts" value="${laundry.shorts}"/>			
			</div>
		</div>
		<div class="row">
			<div class ="col-3"> 
				<form:label path="towel"><h6>Towels</h6></form:label>
				<form:input id="i5" path="towel" value="${laundry.towel}"/>
			</div>
			<div class ="col-3"> 
				<form:label path="mundu"><h6>Mundu</h6></form:label>
				<form:input id="i6" path="mundu" value="${laundry.mundu}"/>
			</div>	
			<div class ="col-3"> 
				<form:label path="bedsheet"><h6>Bed Sheets</h6></form:label>
				<form:input id="i7" path="bedsheet" value="${laundry.bedsheet}"/>
			</div>
			<div class ="col-3"> 
				<form:label path="pillowcover"><h6>Pillow Covers</h6></form:label>
				<form:input id="i8" path="pillowcover" value="${laundry.pillowcover}"/>
			</div>				
		</div>
		<div class = "row">
		 	<div class="col-3">
			 	  <div class="row">
			 	  <label>
	        		<input type="checkbox" name="washing" id="i9" value="${laundry.washing}"/>
	        		<span><h6>Washing</h6></span>
	      		  </label>
			 	  </div>
			 	  <div class="row">
			 	  <label>
	        		<input type="checkbox" name="ironing" id="i10" value="${laundry.washing}"/>
	        		<span><h6>Ironing</h6></span>
	      		  </label>
			 	  </div>
		 	</div>
			 <div class="col-4">
			 	<form:label path="total_items"><h6>Ironing</h6></form:label>
				<form:input id="o1" path="total_items" readonly="true" value="${laundry.total_items}"/>
			 </div>
			 <div class="col-5">
			 	<form:label path="total_items"><h6>Total Amount </h6></form:label>
				<form:input id="o2" path="total_amount" readonly="true" value="${laundry.total_amount}"/>
			 </div>
			 
		 </div>
        
		<div class="row" >
		 	<a class="btn waves-effect waves-light" href="javascript: void(0)" onClick="calc()" >Calculate </a>   
			<button class="btn waves-effect waves-light" type="submit" value="save" name="save">Submit</button>
	   	</div>
       </div>
       </form:form>
	</div>
</body>
<script>
function calc(){
	   var t1 = Number(document.getElementById('i1').value);var wa1=10;var ir1=10;
	   var t2 = Number(document.getElementById('i2').value);var wa2=15;var ir2=15;
	   var t3 = Number(document.getElementById('i3').value);var wa3=20;var ir3=15;
	   var t4 = Number(document.getElementById('i4').value);var wa4=10;var ir4=10;
	   var t5 = Number(document.getElementById('i5').value);var wa5=6;var ir5=0;
	   var t6 = Number(document.getElementById('i6').value);var wa6=10;var ir6=10;
	   var t7 = Number(document.getElementById('i7').value);var wa7=15;var ir7=7;
	   var t8 = Number(document.getElementById('i8').value);var wa8=5;var ir8=0;
	   document.getElementById('o1').value = t1+t2+t3+t4+t5+t6+t7+t8;
	   if ((document.getElementById('i9').checked) && (document.getElementById('i10').checked)) {
		   document.getElementById('i9').value = "Yes"; document.getElementById('i10').value = "Yes";
		   document.getElementById('o2').value = (wa1+ir1)*t1+(wa2+ir2)*t1+(wa3+ir3)*t3+(wa4+ir4)*t4+(wa5+ir5)*t5+(wa6+ir6)*t6+(wa7+ir7)*t7+(wa8+ir8)*t8;
       } 
	   else if(document.getElementById('i9').checked){
		   document.getElementById('i9').value = "Yes"; document.getElementById('i10').value = "No";
		   document.getElementById('o2').value = (wa1)*t1+(wa2)*t1+(wa3)*t3+(wa4)*t4+(wa5)*t5+(wa6)*t6+(wa7)*t7+(wa8)*t8;
       }
	   else if (document.getElementById('i10').checked){
		   document.getElementById('i9').value = "No"; document.getElementById('i10').value = "Yes";
		   document.getElementById('o2').value =(ir1)*t1+(ir2)*t1+(ir3)*t3+(ir4)*t4+(ir5)*t5+(ir6)*t6+(ir7)*t7+(ir8)*t8;                                                     
       }
	   else if (!(document.getElementById('i9').checked) && !(document.getElementById('i10').checked)){
		   document.getElementById('i9').value = "No"; document.getElementById('i10').value = "No";
		   document.getElementById('o2').value=0;
	   }
	}
</script>
</html>
