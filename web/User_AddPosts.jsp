<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Posts.</title>
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
.style9 {color: #666666}
.style16 {color: #FF00FF}
.style7 {font-size: 14px}
.style18 {font-size: 15px}
.style19 {color: #FFFFFF; font-weight: bold; }
.style20 {color: #FFFFFF}
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
          <li><a href="userlogin.jsp"><span>User</span></a></li>
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
          <h2 class="style6">Add Posts.</h2>
          <div id="templatemo_right_section">
            <p>
              <%@page import ="java.util.*"%>
              <%@ include file="connect.jsp" %>
              <%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select category FROM category"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("category"));
		
	   }
	   
		
		
%>
            </p>
            <form action="User_AddPosts1.jsp" method="post" enctype="multipart/form-data" id="s" ">
              <table width="405" border="0" align="center">
                <tr>
                  <td width="165" height="33" bgcolor="#FF0000"><div align="justify" class="style19 style20"><span class="style3 style18">Select the Categorie </span></div></td>
                  <td width="230"><label>
                    <select id="s1" name="categorie">
                      <option>--Select--</option>
                      <% for(int i=0;i<a1.size();i++)
        	 		 {%>
        	 		  <option><%= a1.get(i)%></option>
                      <%}%>
                    </select>
                  </label></td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="justify" class="style19"><span class="style3 style18"> Post Name </span> </div></td>
                  <td><label>
                    <input type="text" id="t1" name="name" />
                  </label></td>
                </tr>
                <tr>
                  <td height="35" bgcolor="#FF0000"><div align="justify" class="style19"><span class="style3 style18">Address</span></div></td>
                  <td><label>
                    <textarea name="address" cols="20" rows="5" id="t3"></textarea>
                  </label></td>
                </tr>
                <tr>
                  <td height="51" bgcolor="#FF0000"><div align="justify" class="style19"><span class="style3 style18"> Description </span></div></td>
                  <td><label>
                    <textarea name="desc" id="t2"></textarea>
                  </label></td>
                </tr>
                <tr>
                  <td height="38" bgcolor="#FF0000"><div align="justify" class="style19"><span class="style3 style18"> Image </span></div></td>
                  <td><input type="file" id="userImage" name="image" style="width:100%" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="26"><div align="right"></div></td>
                  <td><input type="submit" name="Submit" value="Add Post" /></td>
                </tr>
              </table>
            </form>
            <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
            <div align="right" class="style7">
              <div align="left"><a href="usermain.jsp" class="style16">Back</a></div>
            </div>
          </div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.jpg" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li class="style8"><a href="usermain.jsp">Home</a></li>
            <li class="style9"><a href="index.html">Log Out</a></li>
            <li class="style9"></li>
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
