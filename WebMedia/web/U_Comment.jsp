<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Comment Details Page..</title> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<link href="css/style.css" rel="stylesheet" type="text/css" />				
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>									
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {font-size: 22px}
.style3 {color: #FF0000}
.style4 {font-weight: bold}
-->
</style>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.com.value;
if(na3=="")

{
alert("Please Write Comment");
document.s.com.focus();
return false;
}
else
{

}
}
</script>
</head>

<body>
<div class="main"> 
  <div class="header"> 
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="AdminLogin.jsp">Admin</a></li>
          <li><a href="about.html">Stock Market Company</a></li>
          <li><a href="UserLogin.jsp">User</a></li>
          
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html"><span class="style2">Web Media and Stock Markets A Survey and Future Directions</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="940" height="310" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style4">
        <div class="article">
        <h1 class="style3"><a href="#"><span class="style2">Tweet <span class="style2"> <span class="style2"><span class="style2"><%=request.getParameter("tname")%> </span>Details...</span><span class="style2">..</span></span></span></a></h1> 
          <div class="clr"></div>
          
          <div class="post_content">
		  
		   <p>
				
			<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
    <%
          
		   String type=request.getParameter("type");
		   int one= Integer.parseInt(request.getParameter("id"));
           String s0="",s1="",Keyword="",s2="",s3="",s4="",s5="",s7="",s8="";
	       int i=0,rank=0,k=0,rank1=0;
  try 
	{	
  String str="select * from tweets where id='"+one+"' "; 
  Statement st=connection.createStatement();
   ResultSet rs=st.executeQuery(str);
   	   
	if ( rs.next() )
	   {
		i  = rs.getInt(1);
		s0 = rs.getString(3);
		s1 = rs.getString(4);
		s2 = rs.getString(2);
		s3 = rs.getString(5);
		s4 = rs.getString(6);
		
		
	
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					
					String descr = new String(Base64.decode(s3.getBytes()));
									
				
									
	
%>
          </p>
          
 <table border="1" align="center" cellpadding="0" cellspacing="0"  width="600" >
				 				<tr >
								    <td width="148" rowspan="9" bgcolor="#FFFFFF" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > 
									    <div align="center"><a class="#" id="img1" href="#" >
		                        <input  name="image" type="image" src="images.jsp?value=<%="tweet"%>&id=<%=i%>" style="width:120px; height:120px;"  />
								                                  </a> </div>
								  </div></td>
								  	<td width="128" height="27" bgcolor="#FFFFFF" >
								  <div align="center" class="style10 style7"><strong>Uploader Name </strong></div></td>
							      <td width="316" bgcolor="#FFFFFF"><div align="center" class="style8"><strong> <%= s1%> </strong> </div></td>
		  						<tr/>
									<td width="128" height="27" bgcolor="#FFFFFF" >
								  <div align="center" class="style10 style7"><strong>Tweet Name </strong></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style8"><strong><%= s0%></strong></div></td>
				    			
								<tr>
									<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style10 style7"><strong>Company Name </strong></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style8"><strong><%= s2%></strong></div></td>
				    			</tr>
				    
				    			<tr>
									<td width="128" height="27" bgcolor="#FFFFFF">
						  		  <div align="center" class="style10 style7"><strong>Tweet Description </strong></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style8"><strong><%= descr%></strong></div></td>
								</tr>
								
								<tr>
										<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style10 style7"><strong>Uploaded Date </strong></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8"><strong><%= s4%></strong></div></td>
								</tr>
								
								
						<%
						}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		</table>
			<p>&nbsp;</p>
		<form name="s" action="U_CommentIns.jsp?name=<%=s0%>&cname=<%=s2%>&id=<%=one%>&type=<%=type%>" method="post"  onSubmit="return valid()"  ons target="_top">
    
	<table width="600" border="0" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr><td></td><td></td>
 						<td   width="200" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="right" class="style9"  style="margin-left:20px;">Write Comment </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><textarea name="com" rows="3" cols="23"></textarea></div></td>
					
					  <td height="45" colspan="2" id="learn_more" align="center"  style="color:#003399;"><span style="font-size: 18px">
				      <input type="submit" value="Add Comment" style="width:100px; height:35px; background-color:#FFFFFF; color:#003399;"/>
					    </span></td>
					</tr>
          </table>


	 </form>
		
				 <h2 align="right">&nbsp;</h2>
			<% 
			if(type.equalsIgnoreCase("allfrdstweets")){%>
            <h2 align="right"><a href="U_TD.jsp?type=<%=type%>&id=<%=one%>&tname=<%=s0%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("frdsTweetsouter")){%>
            <h2 align="right"><a href="U_FTW.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("allMyTweets")){%>
            <h2 align="right"><a href="U_VTWF.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("search")){%>
            <h2 align="right"><a href="U_TD.jsp?type=<%=type%>&id=<%=one%>&tname=<%=s0%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("allUserTweets")){%>
            <h2 align="right"><a href="U_AllUserTweets.jsp" class="style4">Back</a></h2>
			<%}
			

			%>
		
			
		

          </div>
          <div class="clr"></div>
        </div>
        
        
      </div>
<!-- end #content -->
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#"><strong>Home</strong></a></li>
            <li><a href="index.html"><strong>Logout</strong></a></li>
            
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer"></div>
</div>

</body>
</html>