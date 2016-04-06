<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>CS Jobs - Registration</title>

</head>
<body background="images/2.jpg"> 
<center><h2><font color="white">Applicant Registration</font></h2></center>

<form:form modelAttribute="user">
<div class="well">
<center>
<h4>Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input path="email" /></h4> 
<small><font color="red"><form:errors path="email" /></font></small>

<h4>Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:password path="password" /> </h4>
<small><font color="red"><form:errors path="password" /></font></small>
  
<h4>Password again&nbsp;&nbsp;&nbsp;<form:password path="password2" /></h4>
<small><font color="red"><form:errors path="password2" /></font></small>

<h4>Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input path="lastName" /> </h4>
<small><font color="red"><form:errors path="lastName" /></font></small>

<h4>First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input path="firstName" /> </h4>
<small><font color="red"><form:errors path="firstName" /></font></small>

<h4>Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input path="phone" /> </h4>
<small><font color="red"><form:errors path="phone" /></font></small>
 
<h4>Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input path="address" /> 
<small><font color="red"><form:errors path="address" /></font></small></h4>
<h4><input type="submit" name="register" value="register" class="btn btn-success" /></h4>
 </center>

</div>
</form:form>
</body>
</html>
