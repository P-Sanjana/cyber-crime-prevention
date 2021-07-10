
<%@  page  import="java.sql.*" import="com.ct.*" %>



<%
try{
String email=(String)session.getAttribute("email");
SkipImage.main(email);
response.sendRedirect("index.jsp?id="+email+" ");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
