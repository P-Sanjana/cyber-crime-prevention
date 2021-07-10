<%String head1="View Friends";%>
<%String head2="View Friends";%>

<%@  include file="uheader.jsp"%>
<%@  page  import="java.sql.*" import="com.mysql.*" import="CT.*" %>



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
%>
                <table class="table" width="60%">
                    <tbody>

			
<%
while(rs.next()){
String user=rs.getString(2);
//System.out.println("11="+user);
rs2=st2.executeQuery("select * from users where email='"+user+"' ");
while(rs2.next())
	{
			%>		
			
                        <tr class="table-row">
                            <td class="table-img">
							<img src="view1.jsp?id=<%=rs2.getString("email")%>" alt=" " width="90" height="90" />
                            </td>
                            <td class="table-text">
                            	<h6> <%=rs2.getString("name")%></h6>
                                <p><%=rs2.getString("email")%></p>
                            </td>
                            <td>
                            	<span class="fam">Friend</span>
                            </td>
                          
                        </tr>


			<%
}


%>


<%
}
}
catch(Exception e){
//System.out.println("11="+e);
}
%>
</table>
			</div> 

<%@  include file="ufooter.jsp"%>
