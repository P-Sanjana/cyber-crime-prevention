
<%@  page   import="com.mysql.*" %>
<%@  page   import="com.ct.*" %>

<%@  page import="java.io.*,java.sql.*"%>
<%@  page import="java.util.*"%>
<%@  page import="java.util.Date"%>
<%
String catt="";
String color="blue";
///
try{
	int i=0;

Connection con=DatabaseCon.getConnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
st2.executeUpdate("delete from temp2 ");
ResultSet rs=st.executeQuery("select max(id) from post");
if(rs.next())
{
	i=rs.getInt(1);
	i++;
}

String post=request.getParameter("post");
    List<String> l=ExtractUrl.extractUrls(post);
		if (l.size()>0){
		String url=l.get(0);	
		System.out.println(url);

		String data=CrawlText.main(url);
				System.out.println(data);
rs=st.executeQuery("select * from category");
while(rs.next())
{
	String cat=rs.getString(1);
	double d=Naive2.main(data,cat);
	System.out.println(cat+".."+d);
	st2.executeUpdate("insert into temp2 values ('"+cat+"','"+d+"')");
	
		
}		

	
	}

	ResultSet rsss=st2.executeQuery("select cat from temp2 where sc>0 order by sc desc limit 1");
	if(rsss.next()){
		
		color="red";
		catt=rsss.getString(1);
	}
	

String non="non";
 Date date = new Date();
PreparedStatement pst=con.prepareStatement("insert into post(id,msg,userid,uname,img,pdate,category, color) values(?,?,?,?,?,?,?,?)");
pst.setInt(1,i);
pst.setString(2,post);

pst.setString(3,(String)session.getAttribute("email"));
pst.setString(4,(String)session.getAttribute("name"));
pst.setString(5,non);
pst.setString(6,date.toString());
pst.setString(7,catt);
pst.setString(8,color);

int ii=pst.executeUpdate();

// out.println("update");
response.sendRedirect("post.jsp?id=succ");
%>








<%


}catch(Exception e){
	e.printStackTrace();
}
		 

%>

<%@  include file="ufooter.jsp"%>
