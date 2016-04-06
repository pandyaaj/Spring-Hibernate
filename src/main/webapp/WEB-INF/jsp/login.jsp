<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>CS Jobs - Login</title>
</head>
<body background="images/2.jpg"> 
<div class="container">

<center><h3><font color="white">CS Jobs - Login</font></h3></center>
<!-- 
<form action="login.html" method="post">
<div class="well">
  <h4>Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="email" /></h4>
<h4>Password <input type="password" name="password" /></h4>
<h4><input type="submit" name="login" class="btn btn-primary" value="Login"/></h4>
</div>
</form> -->

<form action="login" method="post">
<div class="well">
   <h4> User &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
		name="username" /> </h4>
   <h4> Password &nbsp; <input type="password"
		name="password" /></h4>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
<h4>    <input type="submit" name="submit" class="btn btn-success"
		value="Login" /></h4>
		</div>
</form>

</div>
</body>
</html>
