
<%@  include file="aheader.jsp"%>
<%@  page  import="java.sql.*" import="databaseconnection.*" %>


<%@  page  import="java.sql.*" import="com.mysql.*" import="javax.swing.JOptionPane"%>

<h2>View Chat</h2>

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
String email=request.getParameter("email");

try{

Connection con = DatabaseCon.getConnection();
Statement st=con.createStatement();
st.executeUpdate("update users set st_=st_+1 where email='"+email+"'");
}
catch(Exception e){
}
response.sendRedirect("malicioususer.jsp");
%>


<%@  include file="afooter.jsp"%>



