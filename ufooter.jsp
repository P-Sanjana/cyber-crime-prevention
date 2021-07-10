
																	</p>
																</div>
												
										        </div>
											
										</div>
										<!--//graph-visual-->
									</div>
									<!--//outer-wp-->
									 <!--footer section start-->
										<footer>
	
</font></h5>
										</footer>
									<!--footer section end-->
								</div>
							</div>
				<!--//content-inner-->
			<!--/sidebar-menu-->
				<div class="sidebar-menu">
			<div style="border-top:1px solid rgba(69, 74, 84, 0.7)"></div>
			<!--/down-->
							<div class="down">	
									  <a href="updatepic.jsp"><img src="view1.jsp?id=<%=session.getAttribute("email")%>" alt="" style="width:158px;height:151px;"  ></a>
									  <a href=""><span class=" name-caret"><%=session.getAttribute("name")%>
									  </span></a>
									 <p><%=session.getAttribute("email")%></p>
									<ul>
									<li><a class="tooltips" href="u_home.jsp"><span>Home</span><i class="lnr lnr-home"></i></a></li>
										<li><a class="tooltips" href="index.jsp"><span>Log out</span><i class="lnr lnr-power-switch"></i></a></li>
										</ul>
									</div>
							   <!--//down-->
								<div class="menu">
									<ul id="menu" >
										 <li id="menu-academico" ><a href="u_home.jsp"><i class="fa fa-home"></i> <span> Home</span> </a>
										</li>

										 <li id="menu-academico" ><a href="viewf.jsp"><i class="fa fa-user"></i> <span> View Friends</span> </a>
										</li>
									<li><a href="post.jsp"><i class="lnr lnr-pencil"></i> <span>Post</span></a></li>
								<li id="menu-academico" ><a href="#"><i class="lnr lnr-layers"></i> <span>Timeline</span> <span class="fa fa-angle-right" style="float: right"></span></a>
								 <ul id="menu-academico-sub" >
									<li id="menu-academico-avaliacoes" ><a href="viewwall.jsp">View Timeline</a></li>
											<li id="menu-academico-boletim" ><a href="ownwall.jsp">Own Timeline</a></li>

										  </ul>
									 </li>
						<li><a href="chat.jsp"><i class="lnr lnr-user"></i> 
						<span>Chat</span> <span  style="float: right"></span></a>
					  


								</div>
							  </div>
							  <div class="clearfix"></div>		
							</div>
					<script>
							var toggle = true;
										
							$(".sidebar-icon").click(function() {                
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }
											
											toggle = !toggle;
										});
							</script>
<!--js -->
<script src="js/css3clock.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/css3clock.js"></script>
   <script src="js/bootstrap.min.js"></script>
</body>
</html>