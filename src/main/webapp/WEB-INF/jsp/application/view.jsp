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
<title>CS Jobs - Application</title>
</head>
<body background="../images/2.jpg"> 
<div class="container">
<font color="white">
<h2>CS Jobs <Right><a href="../" class="btn btn-danger">LOGOUT</a></Right></h2>
<h3>${application.job.title}</h3>
</font>
<div class="well">
<p>Applicant: ${application.applicant.firstName} ${application.applicant.lastName}</p>
<p>Submitted: <fmt:formatDate value="${application.submitDate}" pattern="M/d/yyyy" /></p>
<p>Current Position: ${application.currentJobTitle} at ${application.currentJobInstitution}
since ${application.currentJobYear}</p>
</div>

<div class="well">
<c:forEach items="${application.degrees}" var="degree">

  <h4>Name : ${degree.name}</h4>
  <h4>School : ${degree.school}</h4>
  <h4>Year: ${degree.year}</h4>

</c:forEach>
</div>
<p><font color="white">Download link</font></p>
<c:if test="${not empty application.cv.name}">
<a class="btn btn-success" href="../download.html?filename=${application.cv.name }">CV</a>
</c:if>
<c:if test="${not empty application.researchStatement.name}">
<a class="btn btn-success" href="../download.html?filename=${application.researchStatement.name }"> RS</a>
</c:if>
<c:if test="${not empty application.teachingStatement.name}">
<a class="btn btn-success" href="../download.html?filename=${application.teachingStatement.name }"> TS</a>
</c:if>
</div>
</body>
</html>
