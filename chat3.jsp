


<%@  page  import="java.sql.*"  import="java.util.*"  import="com.ct.*" import="com.mysql.*" %>



<%
String user2=request.getParameter("user2");
String user1=(String)session.getAttribute("email");
String text=request.getParameter("text");
String text2=text.toLowerCase();


	Connection con = DatabaseCon.getConnection();
	Statement st= con.createStatement();
st.executeUpdate("Delete from temp");
	
	Map<Double, String> hm = new TreeMap<Double, String>(Collections.reverseOrder());

try{

	List<String> list = new ArrayList<String>();
	System.out.println("-------------");

	double d=Naive.main(text);
	System.out.println("***************");

	text=Replace.main(text);
	if(d>0){

		st.executeUpdate("update users set st_=st_+1 where email='"+user1+"'");
		InsertChat.main(text,user1, user2 );
		response.sendRedirect("chat2.jsp?user2="+user2+"&&id=f");
	}else{
	
		InsertChat.main(text,user1, user2);
		response.sendRedirect("chat2.jsp?user2="+user2+"&&id=n");
	
	}


}
catch(Exception e){
System.out.println("Exception Occured"+e);
}



%>
