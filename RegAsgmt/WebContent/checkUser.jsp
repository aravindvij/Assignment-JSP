<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
<%@page import="asgmtPackage.*"%> 

<% if(request.getParameter("exists")!= null && request.getParameter("exists").equals("first"))
   {
%>  
		<h3> Registration Menu </h3>
		<form action="control" method="post">  
		Username : <input type="text" name="username"><br>  
		<input type="hidden" name ="page" value="checkUser"> 
		<input type="submit" value="Check Availability">  
		</form>
<% } 
   else if(request.getAttribute("existUser")!= null && request.getAttribute("existUser").equals("exists"))	
   {
%>		<h4> SORRY : Username taken! </h4>
		<jsp:include page='checkUser.jsp'>
   			 <jsp:param name="exists" value="first"/>
		</jsp:include>
<% } 
   else if(request.getAttribute("existUser")!= null && request.getAttribute("existUser").equals("notexists"))	
   {
%>		<h3> Registration Menu </h3>
		<form>  
		<fieldset disabled>
		Username : <input type="text" name="username" value='<%=request.getAttribute("username")%>'/><br>  
		</fieldset>
		</form>
		<form action="registration.jsp" method="post">  
		<input type="hidden" name ="username" value='<%=request.getAttribute("username")%>'/>
		</form>
		<%@ include file = "registration.jsp" %>
<% }%>   
</body>
</html>