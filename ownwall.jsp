<%String head1="View Own Timeline";%>
<%String head2="Your Post's";%>

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
String sql="SELECT * FROM post where userid='"+session.getAttribute("email")+"' order by pdate desc";
//System.out.println(sql+"-----");


ResultSet rs=st.executeQuery(sql);



while(rs.next()){
%>
<br><br><br>


<table>
<tr><td><font size="4" color="#4991de"><b><%=rs.getString("uname")%> </b></font><font size="4" color="#89bbe4">shared at</font> <%=rs.getString("pdate")%>

<tr><td><font size="3" color="#7bc2fd"><b><font size="" color=<%=rs.getString("color")%>><%=rs.getString("msg")%></font>
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
