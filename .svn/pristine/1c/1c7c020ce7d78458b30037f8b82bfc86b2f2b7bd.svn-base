<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CS Jobs - Applicant</title>
</head>
<body background="images/2.jpg"> 

<div class="container">
<font color="white">
<h2>CS Jobs </h2>
<%-- 
<p>You are logged in as <em>${authenticatedUser.firstName} ${authenticatedUser.lastName}</em>. --%>

<form action="logout" method="POST">
  <input name="_csrf" type="hidden" 
		value="${_csrf.token}" />
  <input class="btn btn-danger" name="submit" type="submit" value="Logout" />
  
<h3>Job Positions Applied</h3></font>
<div class="well">
<c:if test="${user.applications.size() > 0}">
<ul>
  <c:forEach items="${user.applications}" var="application">
  <li><a  href="<c:url value='/job/view.html?id=${application.job.id}' />">${application.job.title}</a>
    <a class="btn btn-info" href="<c:url value='/application/view.html?id=${application.id}' />">Application</a>
  	
  </li>
  </c:forEach>
</ul>
</c:if>
</div>
<font color="white">
<h3>Job Positions Available</h3>
</font>
<div class="well">
<c:if test="${availableJobs.size() > 0}">
<ul>
  <c:forEach items="${availableJobs}" var="job">
  <li><a  href="<c:url value='/job/view.html?id=${job.id}' />">${job.title}</a>
    <a class="btn btn-info" href="<c:url value='/application/apply.html?jobId=${job.id}' />">Apply</a>
  </li>
  </c:forEach>
</ul>
</c:if>
</div>
</div>
</body>
</html>
	