
<%@  page  import="java.sql.*"  import="java.util.*"  import="com.ct.*" import="com.mysql.*" %>



<%

String user2=request.getParameter("user2");
String user1=(String)session.getAttribute("email");

try{

InsertChat.clear(user1, user2 );


}
catch(Exception e){
//System.out.println("Exception Occured");
}
response.sendRedirect("chat2.jsp?user2="+user2);


%>
