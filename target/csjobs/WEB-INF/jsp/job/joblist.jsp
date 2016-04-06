<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
     
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Job List</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>
<body background="images/2.jpg"> 

<div class="container" >

<h2 align="center"><font color="white"> List of Jobs</font></h2>
<hr />
<div class="well">
<table class="table table-condensed">
<tr>
	<th>Jobs List</th>
</tr>

<c:forEach items="${jobs}" var="job">
<c:choose>
<c:when test="${empty job}"><tr><td>Currently no job openings</td></tr></c:when>
<c:otherwise><tr>
	<td><a href="/csjobs/job/viewjob.html?id=${job.id}">${job.title }</a></td>
</tr></c:otherwise></c:choose>
</c:forEach>
</table>
<c:if test="${fn:length(jobs) eq 0 }">
		<div class="well">
				<table class="table table-condensed">
					<tr>
						<th>Currently No open position</th>
						
					</tr>
					</table>
					</div>
		</c:if>
</div>
</div>

<center><a type="button" class="btn btn-success"  href="user/login.html">LOGIN</a> &nbsp;&nbsp;&nbsp;<a type="button" class="btn btn-info"  href="user/register.html">REGISTER</a></center>
</body>
</html>