<%@  page  import="java.sql.*" import="java.io.*" import="databaseconnection.*" import="com.mysql.*"%>

<%
String level1=request.getParameter("level1");
%>
<%
int i=0;
try{

Connection con = DatabaseCon.getConnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(sno) from words");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}



Connection con1 = DatabaseCon.getConnection();
Statement st = con1.createStatement();
	try{
	i=st.executeUpdate("insert into words values('"+i+"','"+level1+"')");
	response.sendRedirect("b_add.jsp?id=level-1");
	}
	catch(Exception e)
	{
		System.out.println(e);
		return;
	}
	

%>	
<%@  include file="footer.jsp"%>
