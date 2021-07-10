<%@  page  import="java.sql.*" import="databaseconnection.*" %>
<%@  page import ="java.sql.*" import= "com.ct.*"%>
<%@  page  import="java.sql.*"  import="java.util.*"  import="com.ct.*" import="com.mysql.*" %>
<%@  page  import="java.sql.*" import="com.mysql.*" import="javax.swing.JOptionPane"%>
<%
    String email = request.getQueryString();
    Connection con = DatabaseCon.getConnection();
    Statement st = con.createStatement();
    System.out.println("Print Value" + email);
    try {
        int i = st.executeUpdate("update reg set bully = 'Yes', allows='Yes' where mail = '" + email + "'");
        if (i != 0) {
            int in = st.executeUpdate("update bully set bully = 'Yes' where email = '" + email + "'");
            if (in != 0) {
                response.sendRedirect("admin_home.jsp?msg=User account is blocked..");
            } else {
                response.sendRedirect("admin_home.jsp?msgg=Error");
            }
        }
        System.out.println("ERROR");
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
