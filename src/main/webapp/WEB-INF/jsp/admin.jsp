<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CS Jobs - Admin</title>
</head>
<body background="images/2.jpg"> 
<div class="container">
<font color="white">
<h2>CS Jobs </h2>
<%-- 
<p>You are logged in as <em>${authenticatedUser.firstName} ${authenticatedUser.lastName}</em>. --%>
<form action="logout" method="post">
  <input name="_csrf" type="hidden" 
		value="${_csrf.token}" />
  <input class="btn btn-danger" name="submit" type="submit" value="Logout" />
</form>
<h3>Admin Home</h3>
</font>
<h3><a href="admin/addjob.html">Add New Job</a></h3>




<c:forEach items="${openJobs}" var="job">
<div class="well">
<h4> Job : <a href="<c:url value='/admin/adminView.html?id=${job.id}' />">${job.title}</a></h4>
<h4>Publish Date : <fmt:formatDate value="${job.publishDate}" pattern="M/d/yyyy" /> </h4>
<h4>Close Date : <fmt:formatDate value="${job.closeDate}" pattern="M/d/yyyy" /></h4>
<h4>Operation : <a href="admin/editJob.html?id=${job.id}">EDIT</a></h4>
<h4>Operation : <a href="/csjobs/admin/viewApplicant.html?id=${job.id}">View applied Applicants</a></h4>
</div>
</c:forEach>

</div>
</body>
</html>
