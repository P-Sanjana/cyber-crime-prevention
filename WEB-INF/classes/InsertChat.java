
package com.ct;
import com.mysql.*;
import java.sql.*;


public class InsertChat
{

public static void main(String data,String user1,String user2){ 
		
try{
	Connection con = DatabaseCon.getConnection();
	PreparedStatement ps=con.prepareStatement("insert into msgs(msg,user_,time_, chatbw) values(?,?,?,?)");
	ps.setString(1,data);
	ps.setString(2,user1);
	ps.setString(3,DateDemo.getTime());
	ps.setString(4,user1+"|"+user2);
	ps.executeUpdate();
	}
	catch(Exception e){
		System.out.println(e);
	}
	
	
}
public static void clear(String user1,String user2){ 
		
try{
	Connection con = DatabaseCon.getConnection();
	PreparedStatement ps=con.prepareStatement("delete from msgs where chatbw=? or chatbw=? ");
	ps.setString(1,user1+"|"+user2);
	ps.setString(2,user2+"|"+user1);
	ps.executeUpdate();
	}
	catch(Exception e){
		System.out.println(e);
	}
	
	
}
	public static void main(String[] args) 
	{
		System.out.println("Hello World!");
	}
}
