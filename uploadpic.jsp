
<%@  page  import="java.sql.*" import="databaseconnection.*" %>

<%@  include file="header.jsp"%>


<%
String email=request.getParameter("id");
session.setAttribute("email",email);
%>


<form  action="upload2.jsp" ENCTYPE="multipart/form-data" method="post" >   


				<div class="error-top">
				  <div class="login"><br><br>
					<h3 class="inner-tittle t-inner">Upload Profile Pic</h3>
													<div class="buttons login">
																			<ul>
																				
																			</ul>
																		</div>
	<input type="file" name="pic" accept="image/*" required>
					<div class="submit"><input type="submit" onclick="myFunction()" value="Upload" ></div>


</form>




					<div class="clearfix"></div>
					<div class="new">
					<p>
						<p class="sign">You can skip to upload profile pic.. <a href="skip.jsp">Skip</a></p>



																			<div class="clearfix"></div>
																		</div>

														</div>

														
													</div>
													
													
												<!--//login-top-->
										   </div>


</h2>
<br><br><br><br><br>
<%@  include file="footer.jsp"%>