<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>A_View_All_Posts_By_Blockchain</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-900.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {font-size: 36}
.style3 {padding:0; margin:0; width:100%; line-height:0; clear: both;}
.style4 {font-size: 36px}
.style5 {
	font-weight: bold;
	color: #000000;
}
.style6 {
	color: #FF00FF;
	font-size: 24px;
}
.style10 {color: #FFFF00}
.style11 {color: #FF0000}
.style12 {font-weight: bold}
.style13 {font-weight: bold}
.style14 {font-weight: bold}
.style15 {font-weight: bold}
.style18 {font-weight: bold}
.style19 {color: #FF0000; font-weight: bold; }
.style21 {font-weight: bold}
-->
</style>
</head>

<body>
<div class="main style2">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style4"><a href="index.html">Block Hunter: Federated Learning for Cyber Threat Hunting in Blockchain-based IIoT Networks</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home Page</a></li>
        </ul>
      </div>
      <div class="style3"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="style3"></div>
      </div>
      <div class="style3"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
         <h2><span class="style6">View All Posts By Blockchain...</span></h2>
       	
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


          <h2 class="style3">&nbsp;</h2>
         
          <div class="clr"></div>
           <%
					  
						// Creation Of Blockchain 
						
						String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,hsign;
						int i=0,j=1,k=0,rank=0;
												
						int count1=0;
						
						try 
						{
						String str1 = " select distinct(hcode) from category ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						hsign = rs1.getString(1);
//						count1=count1+1;
						   	String query="select * from posts where hcode = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							s1=rs.getString(2);
							
							
							%>
         <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
         </style>
				 
		 
		 
         <h3 align="center">
<p align="center" class="style1"><span class="style1">Post Category  Block Chain--->::</span> <%=s1%><br>
			    <span class="style1">Post Category Hash Code --->::</span><%=hsign%></p>
	     </h3>
			<div align="center">
			  <%
							
							}
			 					count1=count1+1;
								
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
	      </div>
		  
 	 <table width="385" height="380" border="0" align="center"  cellpadding="0" cellspacing="2">

                <tr>
                  <td  width="103" height="28" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style55 style57 style10" style="margin-left:20px;"><strong>Category</strong></div></td>
                  <td  width="268" valign="middle" height="28" style="color:#000000;"><div align="left" class="style40 style47 style11 style12">
                    <div align="left">
                      <%out.println(s1);%>
                      </div>
                  </div></td>
                </tr>
                <tr>
                  <td  width="103" height="24" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style55 style57 style10" style="margin-left:20px;"><strong>Post Name </strong></div></td>
                  <td  width="268" valign="middle" height="24"><div align="left" class="style40 style47 style11 style13">
                    <div align="left">
                      <%out.println(s2);%>
                      </div>
                  </div></td>
                </tr>
                <tr>
                  <td  width="103" height="23" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style55 style57 style10" style="margin-left:20px;"><strong>Address</strong></div></td>
                  <td  width="268" align="left" valign="middle" height="23"><div align="left" class="style40 style47 style11 style14">
                    <div align="left">
                      <%out.println(s3);%>
                      </div>
                  </div></td>
                </tr>
                <tr>
                  <td  width="103" height="58" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style55 style57 style10" style="margin-left:20px;"><strong>Description</strong></div></td>
                  <td  width="268" align="left" valign="middle" height="58">                    <div align="left" class="style40 style47 style11 style15">
                    <div align="left">
                      <%out.println(decryptedValue);%>
                      </div>
                  </div></td>
                </tr>
                <tr>
                  <td height="22" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style55 style57 style10" style="margin-left:20px;"><strong>Date</strong></div                        ></td>
                  <td align="left" valign="middle" height="22" style="color: #2c83b0;"><div align="left">
                      <div align="left" class="style47 style11 style18">
                        <div align="left">
                          <%out.println(s5);%>
                            </div>
                    </div></td>
                </tr>
                <tr>
                  <td   width="103" height="152" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="left" class="style15 style57 style55 style10" style="margin-left:20px;"><strong>Post Image </strong></div                        ></td>
                  <td  width="268" align="left" valign="middle" height="152" style="color: #2c83b0;"><div align="left">
                    <div class="style7 style26 style11 style21" >
                      <div align="left"><a class="#" id="img1" href="#" >
                        <input  name="image" type="image" src="images.jsp?value=<%="post"%>&id=<%=i%>" style="width:120px; height:120px;" />
                        </a></div>
                    </div>
                  <p align="left" class="style19">&nbsp;                  </p></td>
                </tr>
                <tr>
                  <td height="52" align="left" valign="middle" bgcolor="#FF00FF" style="color: #2c83b0;"><div align="center" class="style57 style10"><strong>Hash Code </strong></div></td>
                  <td align="left" valign="middle" height="52" style="color: #2c83b0;"><span class="style19">
                  <%out.println(s6);%>
                  </span></td>
                </tr>  </table>
                <%if(i!=1){%><p align="center" class="style56">-----------------------------------------------------------------------------------------</p><%}%>
          
							
	    <%
					 
			   }
			   
			    }
				
				
			 
			 
%>

<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>  
         
		
		<p align="right"><a href="adminmain.jsp" class="style2">Back</a></p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Sidebar Menu</h2>
          <div class="style3"></div>
          <ul class="sb_menu style5"><li><a href="adminmain.jsp">Home</a></li>
            <li><a href="A_Login.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="style3"></div>
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
