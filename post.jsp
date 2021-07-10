<%String head1="Share";%>
<%String head2="Share post..";%>


<%@  include file="uheader.jsp"%>
                        <div class="panel-heading">

							                  <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null )
                                                       {
                                                               out.println("<br><blink> <font color=#00ffcc size=4><b>Your Post Posted Successfull..</b>  </blink></font>");
                                                       }
													   else {%>
												
                                               <%}%>

							                        </div>
                        <div class="panel-body">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#home" data-toggle="tab">Upload Image</a>
                                </li>
                                <li class=""><a href="#profile" data-toggle="tab">Only Text</a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="home">
                                    <h4>Upload Image</h4>
                                    <p>
<form  action="post4.jsp" ENCTYPE="multipart/form-data" method="post" >   
			
			<br><input type="file" name="pic" accept="image/*" required><br><br>
			<button type="submit" class="btn btn-default">Upload</button>
			</form>
									</p>
                                </div>
                                <div class="tab-pane fade" id="profile">
                                    <h4>Share Something..</h4>
                                    <p>		
			         <form method="post" action="post3.jsp">
<br>
										<table width="50%">
			<tr>
				<td><textarea class="form-control" rows="3" placeholder="Enter some text" name="post" required></textarea>

				<br>
		</td>
</tr>
</table>

			<button type="submit" class="btn btn-default">Upload</button>
</form>


									</p>
                                </div>

                                
								
                                </div>
                    </div>
                </div>                </div>








<%@  include file="ufooter.jsp"%>