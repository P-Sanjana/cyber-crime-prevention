
<%@  page  import="java.sql.*" import="databaseconnection.*" %>

<%String head1="Update Profile Pic";%>
<%String head2="";%>

<%@  include file="uheader.jsp"%>





<form  action="updatepic2.jsp" ENCTYPE="multipart/form-data" method="post" >   


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
														</div>

														
													</div>
													
													
												<!--//login-top-->
										   </div>


</h2>
<br><br><br><br><br>
<%@  include file="ufooter.jsp"%>