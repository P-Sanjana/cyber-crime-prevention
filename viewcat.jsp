<%@ page  import="java.sql.*" import="com.mysql.*" import="GCTC.*"%>


<%@ include file="aheader.jsp"%>
										       






<CENTER>
<h2>
View Bullying Words
</h2>
</CENTER>
<%
int count=0;
Connection con1=DatabaseCon.getConnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from words where cat='"+request.getParameter("cat")+"'");

%>	
<table align="center" cellpadding="5" width="70%">
<tr><td><h3><font size="" color="#000"><b>Sno</font><td><h3><font size="" color="#000"><b>Category</font><td><h3><font size="" color="#000"><b>Word</font>

<%
while(rs.next())
	{
		%>
	<tr><td><%=++count%><td><%=rs.getString(2)%><td><%=rs.getString(3)%>

<%
	}
%>	
</table>
	





<%@ include file="afooter.jsp"%>