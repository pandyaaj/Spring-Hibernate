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
<title>CS Jobs - Application</title>
</head>
<body background="../images/2.jpg"> 
<div class="container">
<font color="white">
<h2>CS Jobs <Right><a href="/csjobs/reviewer.html" class="btn btn-info">BACK</a></Right></h2>


</font>
<div class="well">

<c:forEach items="${application}" var="application">

<p>Applicant: ${application.applicant.firstName} ${application.applicant.lastName}</p><a href="/csjobs/application/view.html?id=${application.id}" class="btn btn-info">View Application</a>
</c:forEach>
</div>


</div>
</body>
</html>
