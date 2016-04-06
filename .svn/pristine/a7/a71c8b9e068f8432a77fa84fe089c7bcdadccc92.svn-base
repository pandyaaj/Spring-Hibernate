<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Admin- Add Job</title>
</head>
<body background="../images/2.jpg"> <body>
<div class="container">
<font color="white">
<h2> CS Jobs <Right><a href="/csjobs/admin.html" class="btn btn-info">BACK</a></Right></h2>

<h3> Add a new Job </h3>
</font>
<div class="well">
<form:form modelAttribute="job" >

<h4> Job Title &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="title" /></h4>
<h4> Job Description &nbsp;&nbsp; <input name="description" /></h4>
<h4> Start Date &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input  name="publishDate" /></h4>
<h4> End Date &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input   name="closeDate" /></h4>
<h4> Committee Chair&nbsp;  <select name="rev_id">

<c:forEach items="${reviewers}" var="mem">

<option value="${mem.id} ">${mem.firstName}</option>
</c:forEach>
</select>
</h4>
<h4>Committee Members </h4>
<div class="well">
<c:forEach items="${reviewers}" var="mem">
<h4>
<input type="checkbox" name="reviewer2" value="${mem.email}">${mem.firstName}
</input>
</h4>
</c:forEach>
</div>

<h4><input class="btn btn-info" type="submit" name="next" value="Add" /></h4>

</form:form>
</div>
</div>
</body>
																</html>