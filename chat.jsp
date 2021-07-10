
<%String head1="chat";%>
<%String head2="Chat with your friends ";%>


<%@  include file="uheader.jsp"%>
		
		
			<nav class="nav-sidebar">
			<ul class="nav tabs">


<%@  page  import="java.sql.*" import="com.mysql.*" import="com.ct.*" %>



<%
try{
String email=(String)session.getAttribute("email");

Connection con = DatabaseCon.getConnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String sql="select * from friends where user1='"+email+"' ";
//System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;
while(rs.next()){
String user=rs.getString(2);
//System.out.println("11="+user);
rs2=st2.executeQuery("select * from users where email='"+user+"' ");
while(rs2.next())
	{
			%>		



			<li class=""><a href="chat2.jsp?user2=<%=rs2.getString("email")%>" >

			<img src="view1.jsp?id=<%=rs2.getString("email")%>" alt=" " width="90" height="90" />

					<%=rs2.getString("name")%>
			
			<span><%=Details.getChatCount(rs2.getString("email"),email)%></span></li>  </a>



<%
	}
	}
}
catch(Exception e){
//System.out.println("11="+e);
}
%>

		</ul>

		</nav>


<%@  include file="ufooter.jsp"%>