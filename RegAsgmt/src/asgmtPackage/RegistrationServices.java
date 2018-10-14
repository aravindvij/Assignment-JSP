package asgmtPackage;

import java.sql.*;

public class RegistrationServices 
{
	Connection con = null;
	Statement stmt = null;
	
	public RegistrationServices() throws Exception 
	{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspassignment","root","admin1234");  
		stmt=con.createStatement();  
	}
	
	public boolean checkUsernameExists(String username) throws Exception
	{
		ResultSet rs=stmt.executeQuery("select username from userdetails where username = \"" + username + "\"");  
		if(!rs.next())  
		{
			con.close();
			con = null;
			return false;
		}
		else 
		{
			con.close();
			con = null;
			return true;
		}
	}
	
	public boolean registerUser(RegistrationBean user) throws Exception
	{
		int i = stmt.executeUpdate("insert into userdetails values (\""+user.getUsername() 
												        +"\",\"" + user.getPassword() 
												        +"\",\"" + user.getEmail() 
												        +"\"," + user.getPhone()+ ")");
		if(i == 1)
		{
			con.close();
			con = null;
			return true;
		}
		else 
		{
			con.close();
			con = null;
			return false;
		}
	}
	
	public RegistrationBean getUser(String username) throws Exception
	{
		ResultSet rs=stmt.executeQuery("select * from userdetails where username = \"" + username + "\"");
		if(!rs.next())
		{
			con.close();
			con = null;
			return null;
		}
		RegistrationBean user = new RegistrationBean();
		user.setUsername(username);
		user.setPassword(rs.getString(2));
		user.setEmail(rs.getString(3));
		user.setPhone(rs.getLong(4));
		con.close();
		con = null;
		return user;
	}
}
