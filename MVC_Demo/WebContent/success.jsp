<!--  Errors are not reported ... Instead we get a different / no output -- for html/css/bs etc. ...  -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file = "header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success_Page - E-Kart</title>
</head>
<body>
	
		<h2 align = "center">Welcome ${requestScope.username} :  </h2> <!-- LHS in Login_Controller -->
		<h3 align = "left">Success - Welcome to user Home page .... </h3>


</body>
</html>