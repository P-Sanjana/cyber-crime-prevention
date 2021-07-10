<%@  page  import="java.util.*" import="com.ct.*" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Chat</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Augment Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
	<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
	<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
	<!-- jQuery -->

	<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
	<!-- /js -->
<script src="js/jquery-1.10.2.min.js"></script>
<!-- //js-->


</head> 
<body>
   <div class="page-container">
   <!--/content-inner-->
	<div class="left-content">
	   <div class="inner-content">
		<!-- header-starts -->
			<div class="header-section">
						<!--menu-right-->
						<div class="top_menu">
						        <div class="main-search">

	

					<form action="usearch.jsp" method="post" >
					<input type="text" required value="User Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}" class="text" name="email"/>
					<input type="submit" value=""/>
					</form>

									<div class="close"><img src="images/cross.png" /></div>
								</div>
									<div class="srch"><button></button></div>
									<script type="text/javascript">
										 $('.main-search').hide();
										$('button').click(function (){
											$('.main-search').show();
											$('.main-search text').focus();
										}
										);
										$('.close').click(function(){
											$('.main-search').hide();
										});
									</script>


							<!--/profile_details-->
								<div class="profile_details_left">
									<ul class="nofitications-dropdown">
							
										
										
					<li class="dropdown note">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" 
					aria-expanded="false"><i class="fa fa-user"></i> <span class="badge">
					
					<% 
					int i23=Details.getFriendsCount((String)session.getAttribute("email"));
					%>
					
					<%=i23%></span></a>

											
					<ul class="dropdown-menu two first">
					<li>
					<div class="notification_header">
						<h3><%=i23%> new friend requests  </h3> 
					</div>
					</li>
					
					<%Vector<String> v=Details.getFriends((String)session.getAttribute("email"));%> 
					<%
					for(String vv:v){
					%>
					<li><a href="#">
				   <div class="user_img"><img src="view1.jsp?id=<%=session.getAttribute("email")%>" alt=" " width="30" height="30" /></div>
				   <div class="notification_desc">
					
					
					<p><%=Details.getName(vv)%></P>

				
					<table>
					<tr>
					<td>					
					<p><a href="accept.jsp?mail=<%=vv%>">Accept</a><td>					
					<p>
					<a href="reject.jsp?mail=<%=vv%>">Reject</a></span></p>
	
					</tr>
					</table>
				
					</div>
					 <div class="clearfix"></div>	
					 </a></li>
					<%}%>
					<li>
					<div class="notification_bottom">
					<a href="#">See all messages</a>
					</div> 
					</li>
					</ul>
					</li>										
							<div class="clearfix"></div>	
							<!--//profile_details-->
						</div>	</div>
						<!--//menu-right-->
					<div class="clearfix"></div>
				</div>
					<!-- //header-ends -->
						<!--outter-wp-->
							<div class="outter-wp">
									<!--sub-heard-part-->
									  <div class="sub-heard-part">
									   <ol class="breadcrumb m-b-0">
											<li><a href="u_home.jsp">Home</a></li>
											<li class="active"><%=head1%></li>
										</ol>
									   </div>
								  <!--//sub-heard-part-->
									<div class="graph-visual tables-main">
