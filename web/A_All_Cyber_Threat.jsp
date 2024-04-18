<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>A_All_Cyber_Threat</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	font-size: 35px;
	font-weight: bold;
}
.style6 {font-size: 35px}
.style31 {font-size: 30px}
.style34 {
	color: #FF6600;
	font-size: 30px;
}
.style12 {color: #009900}
.style63 {color: #9900FF;
	font-weight: bold;
	font-size: 12px;
}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style66 {color: #FF0000}
.style67 {font-size: 16px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style6"><a href="#"></a>Block Hunter: Federated Learning for Cyber Threat Hunting in Blockchain-based IIoT Networks</h1>
      </div>
      <div class="menu_nav">
        <ul>
		  <li><a href="#"></a></li>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="userlogin.jsp"><span>User </span></a></li>
          <li class="active"><a href="adminlogin.jsp"><span>Admin</span></a></li>
		  <li><a href="#"></a></li>
	    </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style1"><span class="style34"><span class="style12">View All Cyber Threat Details.. </span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
       
          <div>
            <div>
               <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>  


 <table width="778" border="1">
				  
				  <tr>
				   <td width="98" height="33" bgcolor="#FFFF00" ><div align="left" class="style4 style35 style2 style11 style5 style66 style67">
						<div align="center"><strong>ID </strong></div>
					</div></td>
					 <td width="132" bgcolor="#FFFF00" ><div align="left" class="style4 style35 style2 style11 style5 style66 style67">
						<div align="center"><strong>Category Name </strong></div>
					</div></td>
				  <td width="132" bgcolor="#FFFF00" ><div align="left" class="style4 style35 style2 style11 style5 style66 style67">
						<div align="center"><strong>Post Name </strong></div>
					</div></td>
					<td width="107" bgcolor="#FFFF00" ><div align="left" class="style4 style35 style2 style11 style5 style66 style67">
						<div align="center"><strong> Address</strong></div>
					</div></td>
					<td width="200" bgcolor="#FFFF00" ><div align="left" class="style4 style36 style2 style11 style5 style66 style67">
						<div align="center" class="style13">Description</div>
					</div></td>
					<td width="207" bgcolor="#FFFF00"><div align="left" class="style37 style4 style11 style5 style66 style67">
						<div align="center">Date and Time</div>
					</div></td>
					<td width="207" bgcolor="#FFFF00"><div align="left" class="style37 style4 style11 style5 style66 style67">
						<div align="center">HCode</div>
					</div></td>
						<td width="207" bgcolor="#FFFF00"><div align="left" class="style37 style4 style11 style5 style66 style67">
						<div align="center">Posted Username</div>
					</div></td>
				  </tr>

<%
		   			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="", pos="Threat",s22="" ;
	int i=0,poscnt=0,negcnt=0,strcnt=0;
	int count1=0;
	String ftype="Threat";
	
	try
	{
			String sql3="select uname,title from posts";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(1);
			   s7=rs3.getString(2);
			   int count=0;
			%>
<style type="text/css">
<!--
.style2 {
	font-weight: bold;
	color: #FFFFFF;
}
.style4 {font-weight: bold}
.style5 {color: #FF0000}
-->
</style>
       
				 
				  <%

				  String query="select * from posts where title='"+s7+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(8);
								s6=rs.getString(9);	
								s7=rs.getString(10);	
								
								
								String keys = "ef50a0ef2c3e3a5f";
										byte[] keyValue1 = keys.getBytes();
										Key key1 = new SecretKeySpec(keyValue1,"AES");
										Cipher c1 = Cipher.getInstance("AES");
										c1.init(Cipher.DECRYPT_MODE, key1);
										String decryptedValue = new String(Base64.decode(s4.getBytes()));
										
					
					count++;

			   
			       String sql1="select * from filter where ftype='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
			   			 	
							  if ((decryptedValue.toLowerCase().contains(t2)))
									{ 
	
			                 count1++;
									 %>
							  <tr>
							  <td width="98" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14 style66 style67"><strong><%=i%></strong></div></td>
								<td width="132" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style11 style14 style66 style67"><strong> <%=s1%></a></strong></div></td>
								<td width="107" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style11 style14 style66 style67"><strong> <%=s2%></a></strong></div></td>
								
								<td width="200" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14 style66 style67"><strong><%=s3%></strong></div></td>
								<td width="207" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14 style66 style67"><strong><%=decryptedValue%></strong></div></td>
								<td width="207" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14 style66 style67"><strong><%=s5%></strong></div></td>
								<td width="207" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14 style66 style67"><strong><textarea><%=s6%></textarea></strong></div></td>
								<td width="207" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14 style66 style67"><strong><%=s7%></strong></div></td>
		  </tr>
							  				
	    <%   					}

					      }
			      }
			        
			
				
				}
				
   			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>
        
              <p>&nbsp;</p>
            </div>
          </div>
          <div class="clr"></div>
          <div align="right"><a href="adminmain.jsp" class="style63">Back</a></div>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
