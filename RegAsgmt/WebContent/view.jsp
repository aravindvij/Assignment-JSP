<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details</title>
</head>
<body>
<%@page import="asgmtPackage.*"%>  

<h3>User Details Page</h3>

<%  
String username = request.getParameter("username");
RegistrationBean user = new RegistrationBean();
RegistrationServices service = new RegistrationServices();
user = service.getUser(username);
out.print("<h5> Username : "+ user.getUsername() +"</h5>");  
out.print("<h5> Password : "+user.getPassword() + "</h5>");  
out.print("<h5> Email : "+user.getEmail() + "</h5>");  
out.print("<h5> Phone : "+user.getPhone() + "</h5>");  
%>

<form action="control" method="post">  
<input type="hidden" name ="username" value="<%=user.getUsername()%>"> 
<input type="hidden" name ="password" value="<%=user.getPassword()%>"> 
<input type="hidden" name ="page" value="login"> 
<input type="submit" value="Back"> 
</form>
</body>

</html>