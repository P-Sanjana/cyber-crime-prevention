
<%@  include file="aheader.jsp"%>
<%@  page  import="java.sql.*" import="databaseconnection.*" %>
<%@  page import ="java.sql.*" import= "com.ct.*"%>
<%@  page  import="java.sql.*"  import="java.util.*"  import="com.ct.*" import="com.mysql.*" %>
<%@  page  import="java.sql.*" import="com.mysql.*" import="javax.swing.JOptionPane"%>

<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    String name = request.getParameter("name");
    session.setAttribute("Names", name);
    System.out.println("Name for image update session" + name);
    String sname = request.getParameter("uname");
    String pwd = request.getParameter("pwd");
    session.setAttribute("password",pwd);
    System.out.println("password" + pwd);
    int status = Integer.parseInt(request.getParameter("status"));
    String mail = request.getParameter("mail");
    session.setAttribute("seEmail", mail);
    String email = request.getParameter("email");
    String gender = request.getParameter("gender");
    String tele = request.getParameter("tele");
//  String com = request.getParameter("com");
    String command = request.getParameter("command");
    String key = "Yes";

    String cat = request.getParameter("cat");
    String word = request.getParameter("word");

    try {
        con = DatabaseCon.getConnection();
        st = con.createStatement();
        switch (status) {
            case 1:
                try {
                    rs = st.executeQuery("select * from reg where mail='" + mail + "' AND Password ='" +pwd+ "' AND allows='No'");
                    if (rs.next()) {
                        session.setAttribute("email", rs.getString("mail"));
                        session.setAttribute("name", rs.getString("name"));
                        session.setAttribute("gender", rs.getString("gender"));
                        session.setAttribute("id", rs.getString("id"));
                        response.sendRedirect("uhome.jsp?msg=success");
                    } else {
                        response.sendRedirect("home.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 2:

                try {
                    con = DatabaseCon.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into admin (word, bad) values ('" + cat + "','" + word + "')");
                    if (i != 0) {
                        response.sendRedirect("b_add.jsp?msg=success");
                    } else {
                        response.sendRedirect("b_add.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 3:

                try {
                    con = DatabaseCon.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into reg(name, sname, mail, email, pwd, gender) values ('" + name + "','" + sname + "','" + mail + "','" + email + "','" + pwd + "','" + gender + "')");
                    if (i != 0) {

                        response.sendRedirect("img_up.jsp?msg=success");
                    } else {
                        response.sendRedirect("index.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 5:
                try {
                    rs = st.executeQuery("select * from reg where yyys='" + pwd + "' AND role='Soldier'");
                    if (rs.next()) {
                        response.sendRedirect("s_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("s_one_p.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 6:
                try {
                    rs = st.executeQuery("select * from reg where yyys='" + pwd + "' AND role='Commander'");
                    if (rs.next()) {

                        response.sendRedirect("c_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("c_one_p.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }

                break;

            case 8:
                try {
                    if (name.equalsIgnoreCase("Admin") && pwd.equalsIgnoreCase("Admin")) {
                        response.sendRedirect("admin_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("index?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 9:

                try {
                    con = DatabaseCon.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into reg(name, sname, mail, email, pwd, gender) values ('" + name + "','" + sname + "','" + mail + "','" + email + "','" + pwd + "','" + gender + "')");
                    if (i != 0) {

                        response.sendRedirect("index.jsp?msg=success");
                    } else {
                        response.sendRedirect("index.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            default:
                response.sendRedirect("index.html");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>