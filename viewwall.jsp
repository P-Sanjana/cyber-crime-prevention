<%String head1="View Timeline";%>
<%String head2="Friends Posts";%>

<%@  include file="uheader.jsp"%>
<%@  page  import="java.util.Vector" import="java.sql.*" import="com.mysql.*"%>
<script language="javascript" type="text/javascript">

function popitup(url) {
	newwindow=window.open(url,'name','height=600,width=800');
	if (window.focus) {newwindow.focus()}
	return false;
}

// -->
</script>

<%
try{

Connection con = DatabaseCon.getConnection();
Statement st=con.createStatement();
String s="select * from friends where user1='"+session.getAttribute("email")+"' ";
//System.out.println(s+">>>>>");
ResultSet rs1=st.executeQuery(s);

int i=0;
String s1="";
while(rs1.next())
	{
	if(i==0)
	{
	s1=" userid='"+rs1.getString("user2")+"' ";
	++i;
	}else{
	s1=s1+" or userid='"+rs1.getString("user2")+"' ";
	}
}

String sql="SELECT * FROM post where "+s1+" order by pdate desc";
//System.out.println(sql+"-----");


ResultSet rs=st.executeQuery(sql);



while(rs.next()){
%>
<br><br><br>


<table>
<tr><td><font size="4" color="#4991de"><b><%=rs.getString("uname")%> </b></font><font size="4" color="#89bbe4">shared at</font> <%=rs.getString("pdate")%>

<tr><td><tr><td><b><font size="" color=<%=rs.getString("color")%>><%=rs.getString("msg")%></font>
<tr><td><%=rs.getString("category")%>
<tr><td>
<img src="view3.jsp?id=<%=rs.getString("id")%>" width="450" height="350" border="0" alt="">

<hr>
</table>
<%}



%>

<%
}
catch(Exception e){
//System.out.println(e);
}
%>




<%@  include file="ufooter.jsp"%>
