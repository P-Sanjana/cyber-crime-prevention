
												
<%@  include file="header.jsp"%>

	<div class="error-top up">
	
	  <div class="login">
		<h3 class="inner-tittle t-inner">Sign Up</h3>
		<form method="post" action="signup2.jsp">



		<input type="text" class="text" placeholder="Your Name"  required name="name">

		<input type="tel" class="text" placeholder="Contact Number"  pattern="[0-9]{10}" required name="ph">		
		
		<input type="text" class="text" placeholder="Enter Your City" required name="city">
		
		<input type="email" class="text" placeholder="E-mail address"  class="form-control" required name="email">
		
		<input type="password" placeholder="Password"  required name="pwd">
		<div class="submit"><input type="submit" onclick="myFunction()" placeholder="Sign up" ></div>
		<div class="clearfix"></div>
		<div class="buttons">
		<ul>
		</ul>
		<div>
		<div class="new">
		<p class="sign up">Do you have an account yet ? <a href="index.jsp"> Login here.</a></p>
																			<div class="clearfix"></div>
																		</div>
																	</form>
														</div>
														
													</div>
													 
												<!--//login-top-->
										   </div>   </div>   </div></div></div>
		<br><br><br><br><br><br><br><br><br>
		<%@  include file="footer.jsp"%>