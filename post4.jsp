
<%String head1="Serach Results";%>
<%String head2="Serach Results";%>


<%@  include file="uheader.jsp"%>
<%@  page   import="com.mysql.*" %>
<%@  page   import="details.*" %>
<%@  page import="java.io.*,java.sql.*"%>
<%@  page import="java.util.Date"%>

<%
///
int i=1;
 Date date = new Date();

//out.println(email);
	   String saveFile="";
//String contentType=request.getAttribute("file");
String contentType = request.getContentType();
if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
//
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
File f=new File(saveFile);
FileInputStream fis=new FileInputStream(saveFile);
//
// System.out.println(ff.getName());
         // open input stream test.txt for reading purpose.
		 
String pname=ff.getName().toString();
//session.setAttribute("pname",pname);

try{
Connection con = DatabaseCon.getConnection();
//b1=new Blob(b);
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from post");
if(rs.next())
{
	i=rs.getInt(1);
	i++;
}

PreparedStatement pst=con.prepareStatement("insert into post(id,userid,uname,img,pdate) values(?,?,?,?,?)");

pst.setInt(1,i);

pst.setString(2,(String)session.getAttribute("email"));
pst.setString(3,(String)session.getAttribute("name"));
pst.setBinaryStream(4,(InputStream)fis,(int)(f.length()));
pst.setString(5,date.toString());

int ii=pst.executeUpdate();
if(ii==1)
	{
// out.println("update");
response.sendRedirect("post5.jsp?id="+i);
%>








<%
	}

}catch(Exception e){
	e.printStackTrace();
}
		 
}
%>

<%@  include file="ufooter.jsp"%>