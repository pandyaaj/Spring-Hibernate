<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Applicant Registration</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>
<body background="../images/2.jpg"> 

<div class="container">

	<center><h1><font color="white">Applicant Profile</font></h1></center>
	<hr /><div align="right">
	<a href="applicant.html?applicantId=${applicant.applicant.id}" class="btn btn-info">Application</a>
	<a href="/csjobs" class=" btn btn-danger"> LOGOUT</a></div>
		<br/>
		<div class="well">
		
<table class="table table-condensed">
<tr>
<th>Applicant Job Details</th></tr>
<tr>
<td>Applied Job Title</td><td><b>${applicant.job.title}</b></td>
</tr>
<tr>
<td>Applied on</td><td><b>${applicant.submitDate}</b></td>
</tr>
<tr>
<td>Current Job Title</td><td><b>${applicant.currentJobTitle}</b></td>
</tr>
<tr>
<td>Current Job Institution</td><td><b>${applicant.currentJobInstitution}</b></td>
</tr>
<tr>
<td>Current Job Year</td><td><b>${applicant.currentJobYear}</b></td>
</tr>

</table>
</div>
			<div class="well">
			<table class="table table-condensed">
			<tr>
			<th>Applicant Degrees Details</th></tr>
			<c:forEach items="${applicant.degrees}" var="degree">
			<tr>
			<td> Degree  </td><td><b>${degree.name }</b></td>
			</tr>
			<tr> <td>University  </td><td><b> ${ degree.school }</b></td>
			</tr>	
			<tr> <td>Year</td><td><b>${ degree.year }</b><hr>
			</td>
			</tr>
			</c:forEach>
			</table>
			</div>

</div>

</body>
</html>