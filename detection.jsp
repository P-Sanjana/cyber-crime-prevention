
<%@  include file="aheader.jsp"%>
<%@  page  import="java.sql.*" import="databaseconnection.*" %>


<%@  page  import="java.sql.*" import="com.mysql.*" import="com.ct.*" import="javax.swing.JOptionPane"%>

<h2>Detection Process</h2>

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
Statement st2=con.createStatement();
String sql="select * from msgs where ver='non'";

ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;
Set<String> s=new HashSet<String>();
while(rs.next()){
System.out.println(rs.getString("msg"));
double d=Naive.main(rs.getString("msg"));
if(d>0.1){


	s.add(rs.getString("user_"));

}

	

}
	for(String ss:s){
		st2.executeUpdate("update users set st_=st_+1 where email='"+ss+"'");
		rs2=st2.executeQuery("select st_ from users where email='"+ss+"'" );
		rs2.next();
		if(rs2.getInt(1)==1){
		
		String sub="Warning Notification";
		String body="<h3><font color=orange>Hi<br><br>We find some bullying and unparliamentary words find in your chat. <br><br> We are giving a chance, next time we will block your account. <br>Good Day...";
		Mail.mail(ss,sub, body);

		}else{
				String sub="Blocking Account Notification";
		String body="<h3><font color=orange>Hi<br><br>We find some bullying and unparliamentary words find in your chat. We already gave you a warning notification <br><br> We are blocking your account. You can't use our services from now. <br>Good Day...";
		Mail.mail(ss,sub, body);

		}


	}

	st2.executeUpdate("update msgs set ver='done' ");
}
catch(Exception e){
System.out.println(e);
}
%>
</table>
Detection Completed...

<%@  include file="afooter.jsp"%>



