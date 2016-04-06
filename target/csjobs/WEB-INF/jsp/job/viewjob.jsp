<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Job Details</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>
<body background="../images/2.jpg"> 

<div class="container">

	<center><h1><font color="white">Job Details</font></h1></center>
	<hr />
		<div class="well">
		<table class="table table-condensed">
			<tr>
			<td>
				 <b> Job Id </b>   </td><td> ${ job.id }
			</td>
			</tr>
			<tr>
			<td>
				 <b> Title  </b></td><td>  ${ job.title }
			</td>
			</tr>
			<tr>
			<td>
				<b>  Description</b></td><td>  ${ job.description }
			</td>
			</tr>
			<tr>
			<td>
				 <b>Publish Date</b></td><td> ${ job.publishDate }
			</td>
			</tr>
			<tr>
			<td>
				<b> Close Date</b></td><td>  ${ job.closeDate }
			
			</td>
			</tr>
			</table>
		</div>
</div>

</body>
</html>





