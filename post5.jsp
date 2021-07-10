<%String head1="Share";%>
<%String head2="Write Something..";%>


<%@  include file="uheader.jsp"%>

			<%
			String id=request.getParameter("id");
			%>

                    <div class="panel panel-default">
                        <div class="panel-heading">
							                        </div>
                        <div class="panel-body">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#home" data-toggle="tab">Upload Image</a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="home">
                                    <p>
						<img src="view3.jsp?id=<%=id%>" width="354" height="232" border="0" alt="">
			
			         <form method="post" action="post6.jsp">
					 <input type="hidden" name="pid" value="<%=id%>">
										<table width="50%">
			<tr>
				<td><textarea class="form-control" rows="3" placeholder="Share Something..." name="cont" required></textarea> <br>
		</td>
</tr>
</table>
			<button type="submit" class="btn btn-default">Upload</button>


									</form>									</p>
                                </div>
                                <div class="tab-pane fade" id="profile">
                                    <h4>Write the thing</h4>
                                    <p>		



									</p>
                                </div>

                                
								
                                </div>
                    </div>
                </div>                </div>








<%@  include file="ufooter.jsp"%>