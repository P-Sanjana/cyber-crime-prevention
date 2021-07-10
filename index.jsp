

<%@  include file="header.jsp"%>
<%
                                                       String id=request.getParameter("id");
                                                       if(id!=null&&id.equals("fail") )
                                                       {out.println("<script type=text/javascript>alert('Login Fail')</script>");
                                                       }                                                        if(id!=null&&id.equals("b") )
                                                       {out.println("<script type=text/javascript>alert('Account Blocked')</script>");
                                                       } 

                                                       if(id!=null&&id.equals("succ"))
                                                       {out.println("<script type=text/javascript>alert('Registration Success')</script>");
                                                       } 

	             %>

</div>

				
				
				<div class="error-top">
				  <div class="login">
					<h3 class="inner-tittle t-inner"> Login</h3>
													<div class="buttons login">
																			<ul>
																				
																			</ul>
																		</div>
					<form method="post" action="ulogin.jsp">
					<input type="text" class="text" value="E-mail address" name="email" value="<%=id%>"  required onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'E-mail address';}" >

					<input type="password" required name="pwd"  value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
					<div class="submit"><input type="submit" onclick="myFunction()" value="Login" ></div>
					<div class="clearfix"></div>
					<div class="new">
						<p class="sign">Do not have an account ? <a href="signup.jsp">Sign Up</a></p>
																			<div class="clearfix"></div>
																		</div>
																	</form>
														</div>

														
													</div>
													
						
										  	<!--//login-->
										    <!--footer section start-->
										
										
										
		<%@  include file="footer.jsp"%>