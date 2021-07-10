<%@ page  import="java.sql.*" import="com.mysql.*" import="GCTC.*"%>


<%@ include file="aheader.jsp"%>
										       <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='red'><blink>You Entered String is dupicate</blink></font>");
                                                       }
													   message=request.getParameter("id");
                                                       if(message!=null )
                                                       {
                                                               out.println("<script type=text/javascript> alert('Data Added !!');</script>");
                                                       }
                                               %>



<div>                                               
<CENTER><h1>Add Category</h1></CENTER>
<hr>
<%
int count=0;
Connection con1=DatabaseCon.getConnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from category");
%>	

       
<table align="center" cellpadding="5" width="80%">
<tr><td><h3><font size="" color="#000"><b><b>SNo <td><h3><font size="" color="#000"><b>Catgegory
<%while(rs.next())
	{
		%>
<tr><td><%=++count%>
<td><%=rs.getString(1)%>
<%
	}
%>	
<form method="post" action="add_1.jsp" >
<tr><td><td><input required  type="text" name="level1" size="40"><input required  type="submit" value="   ADD  ">
</form>

</table>
<hr>




<CENTER>
<h2>
Add Bullying Words
</h2>
</CENTER>
<%
count=0;
	st = con1.createStatement();
	rs=st.executeQuery("select * from words");

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
	



<%
	st = con1.createStatement();
	rs=st.executeQuery("select * from category");

%>	
<form method="post" action="add_2.jsp">
           
<table align="center" cellpadding="5">
<tr><td><h3><font size="" color="#000"><b>Select Category</font>
<tr><td><select name="level1">
<%
while(rs.next())
	{
		%>
	<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%>

<%
	}
%>	

</select><br>
	
<tr><td><input required  type="text" name="level2"  size="30"><input type="submit" value="   ADD  ">

</form>
</table>
<hr>
<!-- **********************************************************88 -->




<%@ include file="afooter.jsp"%>