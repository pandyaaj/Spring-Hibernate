<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<title>Edit Job</title>
</head>
<body background="../images/2.jpg"> 

<div class="container">
<font color="white"><h2> CS Jobs <Right><a href="/csjobs/admin.html" class="btn btn-info">BACK</a></Right></h2>

<h3>Edit Job</h3></font>
<form action="logout" method="post">
  <input name="_csrf" type="hidden" 
		value="${_csrf.token}" />
  <input class="btn btn-danger" name="submit" type="submit" value="Logout" />
</form>
<div class="well">
<form:form modelAttribute="job" >

<h4> Job Title &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <form:input  path="title" /></h4>
<h4> Job Description  <form:input path="description" /></h4>
<h4>Start Date &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <form:input  path="publishDate" /></h4>
<h4> End Date &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <form:input   path="closeDate" /></h4>
<h4> Committee Chair  &nbsp;&nbsp; 
<form:select items="${reviewers}" path="committeeChair" itemValue="id" itemLabel="firstName" />
</h4> <h4>Committee Members </h4>

    <c:forEach items="${reviewers}" var="reviewer">
    <form:checkbox path="committeeMembers" value="${reviewer}" />
    ${reviewer.firstName} <br />
    </c:forEach>
  <h4><input class="btn btn-info" type="submit" name="edit" value="Edit" /></h4>

</form:form>
</div>
</div>
</body>
</html>