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
									  <a href=""><img src="images/icon-admin_user-blue1.png" width="186" height="186" border="0" style="width:158px;height:151px;"  ></a>
									  <a href=""><span class=" name-caret">Admin
									  </span></a>
									<ul>
									<li><a class="tooltips" href="admin_home.jsp"><span>Home</span><i class="lnr lnr-home"></i></a></li>
										<li><a class="tooltips" href="index.jsp"><span>Log out</span><i class="lnr lnr-power-switch"></i></a></li>
										</ul>
									</div>
							   <!--//down-->
								<div class="menu">
									<ul id="menu" >
										 <li id="menu-academico" ><a href="admin_home.jsp"><i class="fa fa-home"></i> <span> Home</span> </a>
										</li>

										 <li id="menu-academico" ><a href="viewusers.jsp"><i class="fa fa-user"></i> <span> View Users</span> </a>
									 <li id="menu-academico" ><a href="b_user.jsp"><i class="fa fa-user"></i> <span> Blocked Users</span> </a>    
                                                                                 <li id="menu-academico" ><a href="b_add.jsp"><i class="fa fa-user"></i> <span> ADD BULLING WORDS</span> </a>    
										</li>


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
<!--<script src="js/css3clock.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
<!--<script src="js/css3clock.js"></script>
   <script src="js/bootstrap.min.js"></script-->
</body>
</html>