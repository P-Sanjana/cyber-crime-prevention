<%@  page  import="java.sql.*" import="com.mysql.*" %>
<%
String a = request.getParameter("email");
String b= request.getParameter("pwd");
String name=null,u=null,test2=null;

try{
Connection con1 = DatabaseCon.getConnection();
Statement st1 = con1.createStatement();
	



String sss1 = "select * from users where email='"+a+"' && pwd='"+b+"'  ";

ResultSet rs1=st1.executeQuery(sss1);

if(a.equals("admin")&&b.equals("admin"))
{
response.sendRedirect("admin_home.jsp");
}
	
	else
	{

        
        
        
        if(rs1.next())
	{

		if(rs1.getInt("st_")<=2){
		name=rs1.getString("name");
		session.setAttribute("name",name);
		session.setAttribute("email",a);

		response.sendRedirect("u_home.jsp");
		}else{
		response.sendRedirect("index.jsp?id=b");
		}
		}
		else{
		response.sendRedirect("index.jsp?id=fail");

		}
}

}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>