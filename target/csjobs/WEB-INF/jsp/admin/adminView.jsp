<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>CSJobs - Job</title>
</head>
<body background="../images/2.jpg"> 
<div class="container">
<font color="white">
<h2> CS Jobs <Right><a href="/csjobs/admin.html" class="btn btn-info">BACK</a></Right></h2>
<form action="logout" method="post">
  <input name="_csrf" type="hidden" 
		value="${_csrf.token}" />
  <input class="btn btn-danger" name="submit" type="submit" value="Logout" />
</form>
<h3>${job.title}</h3>
</font>
<div class="well">
<p><b>Posted on:</b> <fmt:formatDate value="${job.publishDate}" pattern="M/d/yyyy" /></p>
<p><b>Close on:</b>  <fmt:formatDate value="${job.closeDate}" pattern="M/d/yyyy" /></p>
<p><b>Job Description:</b></p>
<p>${job.description}</p>
</div>
<font color="white">
<h3>Chair person</h3></font>
<div class="well">
<h4>${ job.committeeChair.firstName}</h4>
</div>
<font color="white">
<h3>Committee Members</h3></font>

<div class="well">
<c:forEach items="${ job.committeeMembers}" var="mem">
<h4>${ mem.firstName}</h4>
</c:forEach>
</div>
</div>
</body>
</html>
