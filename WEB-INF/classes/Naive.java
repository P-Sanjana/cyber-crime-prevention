package com.ct;

import com.mysql.*;


import java.io.*;
import java.util.*;
import java.sql.*; 

public class Naive {  

            
		


	
	public static double main(String text)throws Exception{

			
			Connection con = DatabaseCon.getConnection();
			Statement st = con.createStatement();
			PreparedStatement ps= con.prepareStatement("insert into temp values(?)");
			ps.setString(1,text);
			ps.executeUpdate();



	 String[] cmd = {
      "python",
      "E:\\PythonCyber\\Algorithm.py"};

	Process p = Runtime.getRuntime().exec(cmd);
	BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));


	try{Thread.sleep(2000);}
	catch(Exception e){}

	
	ResultSet rs=st.executeQuery("select * from temp");
	rs.next();
	double d=rs.getDouble(1);


	return d;

	}
	public static void main(String[] args) throws Exception
	{
		System.out.println(Naive.main("mind it"));
	}

}