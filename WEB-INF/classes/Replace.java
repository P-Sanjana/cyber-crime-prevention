package com.ct;

import java.sql.*;
import java.util.*;
import com.mysql.*;

public class Replace 
{
	public static String main(String text)throws Exception 
	{
		String word="";
		text=text.toLowerCase();
		Connection con = DatabaseCon.getConnection();
		Statement st=con.createStatement();
		String sql="select * from words ";
//		System.out.println(sql);
		ResultSet rs=st.executeQuery(sql);
		while(rs.next())
		{
			word=rs.getString(3);
			word=word.toLowerCase();
			String rp=star(word);
			text=text.replaceAll(word,rp);


		}
		return text;
	}
	
	
	public static String star(String word)throws Exception
	{
		int l=word.length();
		String r="";
		for (int i=0;i<l ;i++ )
		{
			r=r+"*";
		}


		return r;
	}

	public static void main(String[] args) throws Exception 
	{
		System.out.println(main("hello java how are u"));
	}

}
