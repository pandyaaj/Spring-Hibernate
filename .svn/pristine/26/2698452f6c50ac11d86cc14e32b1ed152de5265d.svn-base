<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Applicant Registration</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>
<body background="../images/2.jpg"> 

<div class="container">

	<center><h1><font color="white">Registration Form</font></h1></center>
	<hr />
		<div class="well">
		<form:form modelAttribute="users">
			<h3>
				<small> Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </small> <form:input path="email" />
			</h3>
			<font color="red"><form:errors path="email" /></font>
			<h3>
				<small> Password &nbsp;&nbsp;</small><form:input type="password" path="password"  />
			</h3>
			<font color="red"><form:errors path="password" /></font>
			<h3>
				<small> First Name  </small> <form:input path="firstName"  />
			</h3>
			<font color="red"><form:errors path="firstName" /></font> 
			<h3>
				<small> Last Name  </small> <form:input path="lastName"  />
			</h3>
			<font color="red"><form:errors path="lastName" /></font>
			<h3>
				<small> Phone &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</small> <form:input path="phone"  />
			</h3>
			<font color="red"><form:errors path="phone" /></font>
			<h3>
				<small> Address &nbsp;&nbsp;&nbsp;&nbsp; </small> <form:input path="address"  />
			</h3>
			<font color="red"><form:errors path="address" /></font>
			<input type="submit" value="register" class="btn btn-success" name="register"/>
		</form:form>	
		</div>
</div>

</body>
</html>





