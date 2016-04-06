<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>CS Jobs - Add Degree</title>
</head>
<body background="../images/2.jpg"> 
<div class="container">
<font color="white">
<h2>CS Jobs<Right><a href="/csjobs/applicant.html" class="btn btn-info">BACK</a></Right></h2>
<form action="logout" method="post">
  <input name="_csrf" type="hidden" 
		value="${_csrf.token}" />
  <input class="btn btn-danger" name="submit" type="submit" value="Logout" />
</form>
<h3>${application.job.title}</h3>

<p>Applicant: ${application.applicant.firstName} ${application.applicant.lastName}</p>
</font>
<form:form modelAttribute="degree">
<table border="2">

<tr style="color : white;"><th>Degree</th><th>School</th><th>Year</th></tr>

<c:forEach items="${application.degrees}" var="degree">
<tr>
  <td>${degree.name}</td>
  <td>${degree.school}</td>
  <td>${degree.year}</td>
</tr>
</c:forEach>
<tr>
  <td><form:input path="name" /></td>
  <td><form:input path="school" /></td>
  <td><form:input path="year" /></td>
</tr>
</table>
<br>
<p>
  <input type="submit" name="add" value="Add" class="btn btn-info"/>
  <a href="../applicant.html" class="btn btn-success">Finish</a>
</p>
</form:form>

</div>
</body>
</html>
