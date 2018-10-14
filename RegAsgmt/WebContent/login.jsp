<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

<h3> Login Menu </h3>

<form action="control" method="post">  
Username :<input type="text" name="username"><br>  
Password :<input type="password" name="password"><br> 
<input type="hidden" name ="page" value="login"> 
<input type="submit" value="Login">  
</form>

<br><br>
New here? : <form action="checkUser.jsp" method="post">
<input type="hidden" name ="exists" value="first"> 
<input type="submit" value="Register New User">  
</form>

</body>
</html>