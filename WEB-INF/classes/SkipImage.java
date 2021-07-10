
package com.ct;
import com.mysql.*;
import java.sql.*;
import java.io.*;

public class SkipImage {
public static void main(String email) {
try{
	
	Connection con =  DatabaseCon.getConnection();
			
	PreparedStatement ps=con.prepareStatement("insert into profilepic values(?,?)");
		
	FileInputStream fin=new FileInputStream("E://user.jpg");
		
	ps.setString(1,email);
	ps.setBinaryStream(2,fin,fin.available());

	int i=ps.executeUpdate();
	System.out.println(i+" records affected");
	con.close();
			
}catch (Exception e) {e.printStackTrace();}
}
}
