<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CS Jobs - Reviewer</title>
</head>
<body background="images/2.jpg"> 
<div class="container">
<font color="white">
<h2>CS Jobs </h2>

<%-- <p>You are logged in as <em>${authenticatedUser.firstName} ${authenticatedUser.lastName}</em>.
 --%>
<form action="logout" method="post">
  <input name="_csrf" type="hidden" 
		value="${_csrf.token}" />
  <input class="btn btn-danger" name="submit" type="submit" value="Logout" />
</form>

<h3>Reviewer Home</h3>

<h3> Job List </h3>

</font>
<c:forEach items="${job}" var="job">
<div class="well">
<h4> Job : <a href="<c:url value='/reviewer/reviewerView.html?id=${job.id}' />">${job.title}</a></h4>
<h4>Publish Date : <fmt:formatDate value="${job.publishDate}" pattern="M/d/yyyy" /> </h4>
<h4>Close Date : <fmt:formatDate value="${job.closeDate}" pattern="M/d/yyyy" /></h4>

<c:forEach items="${job.committeeMembers}" var="rev">
<security:authorize access="hasRole('ROLE_REVIEWER')
    and principal.username == '${rev.email}'">
      <h4>Operation : <a href="/csjobs/reviewer/viewApplicant.html?id=${job.id}">View Applied Applicants</a></h4>
</security:authorize>
</c:forEach>
</div>
</c:forEach>




</div>
</body>
</html>
