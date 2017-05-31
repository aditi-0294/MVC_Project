<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login - E-Kart</title>
</head>
<body>
	<form action = "Login_Controller" method = "post">
		<table align = "center">
			<thead bgcolor = "cyan">
				<th colspan = "2">Login</th>
			</thead>
			
			<tr bgcolor = "yellow">
				<td>User Name : </td>
				<td><input type = "text" name = "uname" required /></td>
			</tr>
			
			<tr bgcolor = "yellow">
				<td>Password : </td>
				<td><input type = "password" name = "passwd" required /></td>
			</tr>
			
			<tr bgcolor = "cyan">
				<td colspan = "2"><center><input type = "submit" value = "SUBMIT" /></center></td>
			</tr>  
			
		</table>
	
	</form>

</body>
</html>