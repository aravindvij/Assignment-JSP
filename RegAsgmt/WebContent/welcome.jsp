<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<%@page import="asgmtPackage.RegistrationBean"%>  
<%  
RegistrationBean bean=(RegistrationBean)request.getAttribute("bean");  
out.print("<h3> Welcome "+ bean.getUsername() + "</h3>");  
%>

<form action="view.jsp" method="post">  
<input type="hidden" name ="username" value="<%=bean.getUsername()%>"> 
<input type="submit" value="View Details"> 
</form>
  <form action="login.jsp" method="post">  
<input type="submit" value="Back"> 
</form>

</body>
</html>