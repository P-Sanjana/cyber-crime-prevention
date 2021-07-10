<%@  page   import="com.mysql.*" %>

<%@  page import="java.io.*,java.sql.*"%>


<%Connection con=DatabaseCon.getConnection();

Statement st1 = con.createStatement();

st1.executeUpdate("update post set msg='"+request.getParameter("cont")+"' where id='"+request.getParameter("pid")+"'");
response.sendRedirect("post.jsp?id=succ");
%>



<%@  include file="ufooter.jsp"%>