<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>
<body background="../images/2.jpg"> 

<div class="container">

	<center><h1><font color="white">Login</font></h1></center>
	<hr />
	<div align="right"><a href="/csjobs" class=" btn btn-success"> HOME</a></div>
		<br/>
		<div class="well">
		<form method="post">
	
			<h4>
				 <b>Email  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" name="email" required/>
			</h4>
			<h4>
				 <b>Password &nbsp;&nbsp;</b> <input type="password" name="password" required />
			</h4>
			<h4><font color = "red">	${invalid} </font></h4>
			<input type="submit" class="btn btn-primary" value="Login" name="login"/>
					
		</form>	
		</div>
</div>

</body>
</html>





