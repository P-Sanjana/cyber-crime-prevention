<%-- 
    Document   : report
    Created on : Oct 24, 2016, 11:19:12 AM
    Author     : java4
--%>


<%@  include file="aheader.jsp"%>
<%@  page  import="java.sql.*" import="databaseconnection.*" %>
<%@  page import ="java.sql.*" import= "com.ct.*"%>
<%@  page  import="java.sql.*"  import="java.util.*"  import="com.ct.*" import="com.mysql.*" %>
<%@  page  import="java.sql.*" import="com.mysql.*" import="javax.swing.JOptionPane"%>

<%
    String msgg = (String) session.getAttribute("msg");
    String id = (String) session.getAttribute("id");
    String name = (String) session.getAttribute("name");
    String mail = (String) session.getAttribute("email");
    String gender = (String) session.getAttribute("gender");

    try {

        Connection con = DatabaseCon.getConnection();
        Statement st = con.createStatement();
        System.out.println("Print Value" + msgg);
        int i = st.executeUpdate("DELETE FROM post WHERE msg='" + msgg + "'");
        if (i != 0) {
            System.out.println("deleted valus from mysql DB");
            int in = st.executeUpdate("INSERT into bully(id, name, email, gender, bullymessage, bully) values ('" + id + "', '" + name + "', '" + mail + "', '" + gender + "','" + msgg + "','No')");
            if (in != 0) {

                response.sendRedirect("post.jsp?msgggg=success");
            } else {
                response.sendRedirect("post.jsp?msgg=Error");
            }
        }
        System.out.println("Error");
    } catch (Exception EX) {
        EX.printStackTrace();
    }
%>
