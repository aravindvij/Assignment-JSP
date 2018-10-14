
<%@page import="asgmtPackage.*"%> 

<form action="control" method="post">  
Password :<input type="password" name="password"><br>  
Email :<input type="text" name="email"><br>  
Phone :<input type="text" name="phone"><br>
<input type="hidden" name ="username" value = <%=request.getAttribute("username")%>
>   
<input type="hidden" name ="page" value="registration">  
<input type="submit" value="Register">  
</form>

<form action="login.jsp" method="post">  
<input type="submit" value="Back"> 
</form>
