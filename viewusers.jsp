
<%@ include file="aheader.jsp"%>
<%@  page  import="java.sql.*" import="databaseconnection.*" %>


<%@  page  import="java.sql.*" import="com.mysql.*" import="javax.swing.JOptionPane"%>

<h2>View Users</h2>

<head>
<style>
#tab {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#tab td, #tab th {
    border: 1px solid #ddd;
    padding: 8px;
}

#tab tr:nth-child(even){background-color: #f2f2f2;}

#tab tr:hover {background-color: #ddd;}

#tab th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
</style>
</head>


<%
try{

Connection con = DatabaseCon.getConnection();
Statement st=con.createStatement();
String sql="select * from users";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
int sno=0;
%>
<table align="center"  id="tab">

<tr><th>Sno<th>Name<th>Email<th>Contact<th>City
<%
while(rs.next()){

%>
<tr><td><%=++sno%><td><%=rs.getString("name")%><td><%=rs.getString("email")%><td><%=rs.getString("ph")%>
<td><%=rs.getString("city")%>
<%
}
}
catch(Exception e){
}
%>
</table>


<%@  include file="afooter.jsp"%>



