<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>A_View_All_Posts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style4 {font-size: 12px}
.style7 {font-size: 25px}
.style22 {color: #00CC00}
.style3 {color: #FF00FF}
.style20 {color: #FF00FF; font-weight: bold; }
.style26 {font-size: 14px}
.style26 {color: #3366FF}
.style45 {
	font-size: 13px;
	color: #0000FF;
}
.style47 {color: #6666FF}
.style51 {font-size: 15px; font-weight: bold;}
.style52 {color: #0000FF}
.style55 {font-size: 13px}
.style56 {
	color: #000000;
	font-weight: bold;
}
.style57 {color: #FFFF00}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home </span></a></li>
          <li><a href="userlogin.jsp">Users</a></li>
          <li class="active"><a href="adminmain.jsp">Admin </a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
        <h1 class="style4"><a href="#" class="style7">Block Hunter: Federated Learning for Cyber Threat Hunting in Blockchain-based IIoT Networks</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /><span><big>Block Hunter: Federated Learning for Cyber Threat Hunting in Blockchain-based IIoT Networks</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /><span><big>Block Hunter: Federated Learning for Cyber Threat Hunting in Blockchain-based IIoT Networks</big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /><span><big>Block Hunter: Federated Learning for Cyber Threat Hunting in Blockchain-based IIoT Networks</big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span class="style36 style35 style22 style3 style7">View All  Posts..</span></h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
          <div>
                 <%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
                <%
						
					
						
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from posts"; 
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
								
								String keys = "ef50a0ef2c3e3a5f";
										byte[] keyValue1 = keys.getBytes();
										Key key1 = new SecretKeySpec(keyValue1,"AES");
										Cipher c1 = Cipher.getInstance("AES");
										c1.init(Cipher.DECRYPT_MODE, key1);
										String decryptedValue = new String(Base64.decode(s4.getBytes()));
								
								
					%>
				 <table width="385" height="380" border="0" align="center"  cellpadding="0" cellspacing="2">

                <tr>
                  <td  width="103" height="28" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style55 style57" style="margin-left:20px;"><strong>Category</strong></div></td>
                  <td  width="268" valign="middle" height="28" style="color:#000000;"><div align="left" class="style40 style10 style47">
                    <div align="left"><strong>
                      <%out.println(s1);%>
                      </strong></div>
                  </div></td>
                </tr>
                <tr>
                  <td  width="103" height="24" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style55 style57" style="margin-left:20px;"><strong>Post Name </strong></div></td>
                  <td  width="268" valign="middle" height="24"><div align="left" class="style40 style10 style47">
                    <div align="left"><strong>
                      <%out.println(s2);%>
                      </strong></div>
                  </div></td>
                </tr>
                <tr>
                  <td  width="103" height="23" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style55 style57" style="margin-left:20px;"><strong>Address</strong></div></td>
                  <td  width="268" align="left" valign="middle" height="23"><div align="left" class="style40 style10 style47">
                    <div align="left"><strong>
                      <%out.println(s3);%>
                      </strong></div>
                  </div></td>
                </tr>
                <tr>
                  <td  width="103" height="58" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style55 style57" style="margin-left:20px;"><strong>Description</strong></div></td>
                  <td  width="268" align="left" valign="middle" height="58">                    <div align="left" class="style40 style10 style47">
                    <div align="left"><strong>
                      <%out.println(decryptedValue);%>
                      </strong></div>
                  </div></td>
                </tr>
                <tr>
                  <td height="22" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style55 style57" style="margin-left:20px;"><strong>Date</strong></div                        ></td>
                  <td align="left" valign="middle" height="22" style="color: #2c83b0;"><div align="left">
                      <div align="left" class="style10 style47">
                        <div align="left"><strong>
                          <%out.println(s5);%>
                            </strong></div>
                    </div></td>
                </tr>
                <tr>
                  <td   width="103" height="152" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style57 style55" style="margin-left:20px;"><strong>Post Image </strong></div                        ></td>
                  <td  width="268" align="left" valign="middle" height="152" style="color: #2c83b0;"><div align="left">
                    <div class="style7 style26" >
                      <div align="left"><strong><a class="#" id="img1" href="#" >
                        <input  name="image" type="image" src="images.jsp?value=<%="post"%>&id=<%=i%>" style="width:120px; height:120px;" />
                        </a></strong></div>
                    </div>
                  <p align="left"><span class="style51">
                 
                  </span></p></td>
                </tr>
                <tr>
                  <td height="52" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="center" class="style57"><strong>Hash Code </strong></div></td>
                  <td align="left" valign="middle" height="52" style="color: #2c83b0;"><%out.println(s6);%></td>
                </tr>  
                <%if(i!=1){%><p align="center" class="style56">-----------------------------------------------------------------------------------------</p><%}%>
          </table>
                <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
            
              <p align="right"><a href="adminmain.jsp" class="style20 style45"><strong>Back</strong></a></p>
  
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="adminmain.jsp">Home</a></strong></li>
            <li><strong><a href="index.html">Logout</a></strong></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <ul class="ex_menu">
            </li>
          </ul>
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
