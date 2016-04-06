<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CS Jobs</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>
<body background="images/2.jpg"> 
<center><h2><font color="white">CS Jobs</font></h2></center>

<c:if test="${empty authenticatedUser}">
<center><h3>

  <a class = "btn btn-info" href="<c:url value='/register.html' />">Register</a> |
  <a class = "btn btn-info" href="<c:url value='/login.html' />">Login</a>

</h3></center>
</c:if>

<c:if test="${not empty authenticatedUser}">
<p>You are logged in as <em>${authenticatedUser.firstName}, ${authenticatedUser.lastName}</em>.

<form action="logout" method="POST">
  <input name="_csrf" type="hidden" 
		value="${_csrf.token}" />
  <input class="btn btn-danger" name="submit" type="submit" value="Logout" />

</c:if>
<div class="container" >
<h3><font color="white">Open Job Positions</font></h3>
<div class="well">
<ul>

<c:forEach items="${openJobs}" var="job">
  <li><a href="<c:url value='/job/view.html?id=${job.id}' />">${job.title}</a></li>
</c:forEach>
</div>
</ul>
</div>
</body>
</html>
