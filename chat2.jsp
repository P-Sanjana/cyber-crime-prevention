<%String user2=request.getParameter("user2");
%>




<%String head1="chat/ <a href=clear.jsp?user2="+user2+">ClearChat</a>";%>
<%String head2="";%>


<%@  include file="uheader2.jsp"%>

<%
    String message=request.getParameter("id");
    if(message!=null && message.equalsIgnoreCase("f")){
    out.println("<script type=text/javascript>alert('Warning! Dont post Bullying words')</script>");
	}
 %>

<%@  page   import="com.mysql.*" %>
<%@  page import="java.io.*,java.sql.*"%>



			<div class="chat-mdl-grid widget-shadow ">
			<h4 class="title3">Chat</h4>
			<div class="scrollbar" id="style-2">

			


			

<!-- <table >
<tr><td > -->

<%

String user1=(String)session.getAttribute("email");
Connection ccc=DatabaseCon.getConnection();
	Statement ss = ccc.createStatement();

	String sss = "update msgs set status='done' where chatbw='"+user2+"|"+user1+"'  ";

	ss.executeUpdate(sss);
	
	
	 sss = "select * from msgs where chatbw='"+user1+"|"+user2+"' or chatbw='"+user2+"|"+user1+"' order by sno ";
	
	ResultSet r=ss.executeQuery(sss);
	String id="";
	while(r.next())
	{	
		id=r.getString(1);
		//System.out.println("============="+id);

		if(r.getString("user_").equals(user1)){
%>



		<div class="activity-row activity-row1 activity-left">
		<div class="col-xs-9 activity-img2">
		<div class="activity-desc-sub1">
		<p><%=r.getString("msg")%></p>
		<span class="right"><%=r.getString("time_")%></span>
                <!--<p><%=r.getString("msg")%></p>
		<span class="right"><%=r.getString("time_")%></span>-->
                <!--<p><%=r.getString("msg")%></p>-->
		</div>
		</div>
		<div class="col-xs-3 activity-img"><img src="view1.jsp?id=<%=r.getString("user_")%>" class="img-responsive"  style="width:78px;height:71px;" alt=""></div>
		<div class="clearfix"> </div>
		</div>
		






<%	
		
		}else{%>

			
			<div class="activity-row activity-row1 activity-right">
			<div class="col-xs-3 activity-img"><img src="view1.jsp?id=<%=r.getString("user_")%>" class="img-responsive" alt="" style="width:78px;height:71px;">
			</div>
			<div class="col-xs-9 activity-img1">
			<div class="activity-desc-sub">
			<p><%=r.getString("msg")%></p>
			<span><%=r.getString("time_")%></span>
			</div>
			</div>
			<div class="clearfix"> </div>
			</div>



<%		}
	}
	

%>


			
			<div class="chat-bottom">
					<form method="post" action="chat3.jsp">
					<input type="hidden" name="user2" value="<%=user2%>">
			<input type="text" placeholder="Reply" required="" name="text" autofocus>
			</form>
			</div>
				 </div>




<!-- </table> -->
</body>
</html>
<BR><BR><BR><BR><BR><BR>



<script type="text/javascript">
  setTimeout(function(){
    location = ''
  },60*200)
</script>

 
 -->
<%@  include file="ufooter.jsp"%>

