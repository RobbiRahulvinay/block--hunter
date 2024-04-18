<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

 
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
 
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<title>Add Posts Status.</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style5 {
	font-size: 27px;
	color: #66CCCC;
}
.style6 {font-size: 24px}
.style8 {color: #999999}
.style9 {
	color: #666666;
	font-weight: bold;
}
.style10 {font-size: 25px; color: #FFFFFF; }
.style11 {font-size: 25px; }
.style20 {font-size: 16px}
.style17 {font-size: 14px; color: #FF00FF; }
.style21 {color: #00FF33}
.style23 {color: #999999; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="UserLogin.jsp"><span>User</span></a></li>
          <li class="active"><a href="adminlogin.jsp">Admin</a></li>
          <li></li>
        </ul>
        <p>&nbsp;</p>
      </div>
      <div class="mainbar">
        <h1 align="left"><a href="index.html"><span class="content style5 style6">Block Hunter Federated Learning for Cyber Threat Hunting in Blockchain-based IIoT Networks</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="271" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="271" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="940" height="271" alt="" /> </a> </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style6">Add Posts Status.</h2>
          <div class="entry">
            <div id="templatemo_right_section">
              <div class="templatemo_h_line"> </div>
                 
              <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String categorie=null,name=null,address=null,desc=null,image=null,bin = "", paramname=null;
					
					FileInputStream fs=null;
					
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("categorie"))
							{
								categorie=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("name"))
							{
								name=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								address=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("desc"))
							{
								desc=multi.getParameter(paramname);
							}
							
							}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								
							}		
						}
						
					if(categorie.equals("--Select--"))
					{
					%>
              </p>
              <br/><p class="style20 style21">Please Select the Categorie</p>
              <p class="style20 style21"> <a href="usermain.jsp" class="style17">Back</a></p>
              <p>
                <%
					}	
		
		            else
					{
						FileInputStream fs1 = null;
			 			String query1="select * from posts  where title='"+name+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		//out.print("post Name Already Exist");
							
							
				%> 
              <br/><p class="style20 style21">Post Name Already Exist </p>
              <p><a href="usermain.jsp" class="style17">Back</a></p>
              <%
				
					   }
					   else
					   {
					   
		     String user=(String)application.getAttribute("user");
					   
			String filename="filename.txt";
      		PrintStream p = new PrintStream(new FileOutputStream(filename));
			p.print(new String(categorie));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(filename);
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
 
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			String h1 = bi1.toString(16);
					   
					   
					   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			           Date now = new Date();

			           String strDate = sdfDate.format(now);
			           String strTime = sdfTime.format(now);
			           String dt = strDate + "   " + strTime;
			
					    int rank =0;
						
				
					
				String keys = "ef50a0ef2c3e3a5f";
			    byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue,"AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE,key);
				String keyy = String.valueOf(keyValue);
				
      	        String encryptedDesc = new String(Base64.encode(desc.getBytes()));
						 
					PreparedStatement ps=connection.prepareStatement("insert into posts(cat,title,address,description,image,rank,dt,hcode,uname) values(?,?,?,?,?,?,?,?,?)");
						
						ps.setString(1,categorie);
						ps.setString(2,name);
						ps.setString(3,address);
						ps.setString(4,encryptedDesc);	
				        ps.setBinaryStream(5, (InputStream)fs, (int)(file1.length()));	
				        ps.setInt(6,rank);
						ps.setString(7,dt);
						ps.setString(8,h1);
						ps.setString(9,user);
						ps.executeUpdate();
					   
			%> <br/><p class="style21">Post Uploaded Successfully </p>
              <p><a href="usermain.jsp" class="style17">Back</a></p>
              <%
						}}
					}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
            </div>
          </div>
        </div>
      </div>
      <div class="sidebar">
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            
            <li class="style23"><a href="usermain.jsp">Home</a></li>
            <li class="style9"><a href="index.html">Log Out</a></li>
            <li class="style8"></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
