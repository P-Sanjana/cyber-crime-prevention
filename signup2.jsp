
<%@  page import="java.sql.*,com.mysql.*"%>
<html>
<head>

<%
int id=0;

PreparedStatement ps=null;

	String name = request.getParameter("name");
	String tele = request.getParameter("ph");
        String gender = request.getParameter("gender");
	String addr = request.getParameter("city");
        String email = request.getParameter("email");	
	String pwd = request.getParameter("pwd");
       try
                {	  

Connection con=DatabaseCon.getConnection();
ps=con.prepareStatement("INSERT INTO users(name,ph,city,email,pwd)VALUES(?,?,?,?,?)");


ps.setString(1,name);
ps.setString(2,tele);

ps.setString(3,addr);
ps.setString(4,email);

ps.setString(5,pwd);

int s = ps.executeUpdate();

response.sendRedirect("uploadpic.jsp?id="+email);

}

catch(Exception ex){

out.println("Error in connection : "+ex);

}




%>
       
