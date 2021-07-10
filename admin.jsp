<%@  include file="header.jsp"%>
<%
                                                       String id=request.getParameter("id");
                                                       if(id!=null&&!id.equals("fail") )
                                                       {out.println("<script type=text/javascript>alert('Registration Success')</script>");
                                                       } 

	             %>


				<div class="error-top">
				  <div class="login">
					<h3 class="inner-tittle t-inner">Admin Login</h3>
													<div class="buttons login">
																			<ul>
																				
																			</ul>
																		</div>
					<form method="post" action="alogin.jsp">
					<input type="text" class="text" value="UserID" name="email"   required onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'E-mail address';}" >

					<input type="password" required name="pwd"   value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
					<div class="submit"><input type="submit" onclick="myFunction()" value="Login" ></div>
					<div class="clearfix"></div>
					<div class="new">
						<p class="sign">Do not have an account ? <a href="signup.jsp">Sign Up</a></p>
						<p class="sign"> <a href="admin.jsp">Admin Login</a></p>
																			<div class="clearfix"></div>
																		</div>
																	</form>
														</div>

														
													</div>
													
													
												<!--//login-top-->
										   </div>
						
										  	<!--//login-->
										    <!--footer section start-->
										
										
										
		<%@  include file="footer.jsp"%>