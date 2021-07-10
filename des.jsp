<%@  include file="header.jsp"%>


<%@  page  import="java.sql.*" import="com.mysql.*" import="javax.swing.JOptionPane"%>
<%
String pass=null,uid=null;

String id = request.getParameter("email");



try
{

	Connection con1 = DatabaseCon.getConnection();

	Statement st1 = con1.createStatement();
	
	String sss1 = "update users set st_='accepted' where email='"+id+"' ";
	st1.executeUpdate(sss1);
	
	
		con1=null;
	


}
catch(Exception e1)
{
out.println(e1);
}

%>
<center><h1><font color="#f3f3f3">Your Account Conformed Successfully</h3>

<%@  include file="footer.jsp"%>
