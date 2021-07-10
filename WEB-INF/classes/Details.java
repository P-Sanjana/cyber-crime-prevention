
package com.ct;

import java.sql.*;
import java.util.*;
import com.mysql.*;

public class Details 
{
	public static int getFriendsCount(String email)throws Exception 
	{
		int count=0;
		Connection con = DatabaseCon.getConnection();
		Statement st=con.createStatement();
		String sql="select count(*) from frequest where uto='"+email+"' and requ='req' ";
//		System.out.println(sql);
		ResultSet rs=st.executeQuery(sql);
		if(rs.next())
		{
			count=rs.getInt(1);
		}
		return count;
	}
	
	
	public static int getChatCount(String user1, String user2 )throws Exception 
	{
		int count=0;
		Connection con = DatabaseCon.getConnection();
		Statement st=con.createStatement();
		String sql = "select count(*) from msgs where chatbw='"+user1+"|"+user2+"' and status='non' ";
		
//		System.out.println(sql);
		ResultSet rs=st.executeQuery(sql);
		if(rs.next())
		{
			count=rs.getInt(1);
		}
		return count;
	}


	public static String getName(String email)throws Exception 
	{
		String name="";
		Connection con = DatabaseCon.getConnection();
		Statement st=con.createStatement();
		String sql="select name from users where email='"+email+"' ";
//		System.out.println(sql);
		ResultSet rs=st.executeQuery(sql);
		if(rs.next())
		{
			name=rs.getString(1);
		}
		return name;
	}



	
	public static Vector<String> getFriends(String email)throws Exception 
	{	Vector<String> v=new Vector<String>();
		int count=0;
		Connection con = DatabaseCon.getConnection();
		Statement st=con.createStatement();
		String sql="select ufrom from frequest where uto='"+email+"' and requ='req' ";
//		System.out.println(sql);
		ResultSet rs=st.executeQuery(sql);
		while(rs.next())
		{
			v.add(rs.getString(1));
		}
		return v;
	}

}
