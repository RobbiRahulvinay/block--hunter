<%@ include file="connect.jsp" %>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 


<%
	
  	try{  
	     			String value=request.getParameter("value"); 
					

			if(value.equals("user"))
			{
				int id = Integer.parseInt(request.getParameter("id"));
				Statement st=connection.createStatement();
				String strQuery = "select image from user where id="+id+"" ;
				ResultSet rs = st.executeQuery(strQuery);
				String imgLen="";
				if(rs.next())
				{
					imgLen = rs.getString(1);
				}  
				
				rs = st.executeQuery(strQuery);
				if(rs.next())
				{
					int len = imgLen.length();
					byte [] rb = new byte[len];
					InputStream readImg = rs.getBinaryStream(1);
					int index=readImg.read(rb, 0, len);  
					st.close();
					response.reset();
					response.getOutputStream().write(rb,0,len); 
					response.getOutputStream().flush();        
				}
		
		}
		else if(value.equals("post"))
		{
				int id = Integer.parseInt(request.getParameter("id"));
				Statement st=connection.createStatement();
				String strQuery = "select image from posts where id="+id+"" ;
				ResultSet rs = st.executeQuery(strQuery);
				String imgLen="";
				if(rs.next())
				{
					imgLen = rs.getString(1);
				}  
				
				rs = st.executeQuery(strQuery);
				if(rs.next())
				{
					int len = imgLen.length();
					byte [] rb = new byte[len];
					InputStream readImg = rs.getBinaryStream(1);
					int index=readImg.read(rb, 0, len);  
					st.close();
					response.reset();
					response.getOutputStream().write(rb,0,len); 
					response.getOutputStream().flush();        
				}
		
		}
		else if(value.equals("username"))
		{
				String postname=request.getParameter("postname"); 
				Statement st=connection.createStatement();
				String strQuery = "select image from user where username='"+postname+"'" ;
				ResultSet rs = st.executeQuery(strQuery);
				String imgLen="";
				if(rs.next())
				{
					imgLen = rs.getString(1);
				}  
				
				rs = st.executeQuery(strQuery);
				if(rs.next())
				{
					int len = imgLen.length();
					byte [] rb = new byte[len];
					InputStream readImg = rs.getBinaryStream(1);
					int index=readImg.read(rb, 0, len);  
					st.close();
					response.reset();
					response.getOutputStream().write(rb,0,len); 
					response.getOutputStream().flush();        
				}
		
		}
		else if(value.equals("postname"))
		{
				String postname=request.getParameter("postname"); 
				Statement st=connection.createStatement();
				String strQuery = "select image from posts where username='"+postname+"'" ;
				ResultSet rs = st.executeQuery(strQuery);
				String imgLen="";
				if(rs.next())
				{
					imgLen = rs.getString(1);
				}  
				
				rs = st.executeQuery(strQuery);
				if(rs.next())
				{
					int len = imgLen.length();
					byte [] rb = new byte[len];
					InputStream readImg = rs.getBinaryStream(1);
					int index=readImg.read(rb, 0, len);  
					st.close();
					response.reset();
					response.getOutputStream().write(rb,0,len); 
					response.getOutputStream().flush();        
				}
		
		}
		else
		{}
		
		
			
			
		
		
  	}
  	catch (Exception e){
    	e.printStackTrace();
  	}
%>

</body>
</html>