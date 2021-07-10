

<%String head1="";%>
<%String head2="Welcome "+(String)session.getAttribute("name");%>
<%@  include file="uheader.jsp"%>
	                  <%
                                                       String message=request.getParameter("id");
                                                       
													   
													   if(message!=null && message.equalsIgnoreCase("s1"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Friend Request Sent '); </script>");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Your Post is posted successfully!! '); </script>");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("suc"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Operation successfull!! '); </script>");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("s2"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Friend Request already Sent '); </script>");
                                                       }

			    %>


																 <div class="profile-nav alt">
																	<section class="panel">
<img src="images/sm.jpg" width="880" height="520" border="0" alt="">																		</ul>

																	</section>


<br><br><br><br><br><br>
<%@  include file="ufooter.jsp"%>