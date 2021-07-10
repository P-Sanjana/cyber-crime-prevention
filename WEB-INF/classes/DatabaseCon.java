


package com.mysql;
import java.sql.*;

public class DatabaseCon 
{
	static Connection co;
	public static Connection getConnection()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			co = DriverManager.getConnection("jdbc:mysql://localhost:3306/SocialMonitor","root","root");
		}
		catch(Exception e)
		{
			System.out.println("Database Error"+e);
		}
		return co;
	}
	
}
