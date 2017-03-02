<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errorPage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>
	About to do a risky thing: <br>
	
	<c:catch var="myException">
	 <%-- This scriptlet will DEFINITELY cause an exception...but we caught it instead of triggering the error page--%>
	   <% int x = 10/0; %>
	   After catch... <%-- You will never see THIS!!! already catch--%> 
	</c:catch>
    <%-- to get exception object in not specific designed error page, there is last chance to get 
    within catch tag using attribute var, this var you give name and this will assign to exception object --%>
	<h3>If you see this, we survive from error ! </h3>
	
	<c:if test="${myException != null}">
		There was an exception: <b> ${myException.message}</b>
	</c:if>
	</body>
</html>