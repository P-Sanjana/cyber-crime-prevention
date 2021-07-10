
<%
String pass=null,uid=null;

String a = request.getParameter("email");
String b= request.getParameter("pwd");



try
{
if(a.equals("Admin")&&b.equals("admin"))
{
response.sendRedirect("admin_home.jsp");
}
	
	else
	{
     	response.sendRedirect("admin.jsp?m=fail");
	}

	}
catch(Exception e1)
{
out.println(e1);
}

%>