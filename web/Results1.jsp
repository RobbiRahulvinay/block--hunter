
<%@ include file="connect.jsp"%>
<%
try
{

%><html>
<head>
<title>Transaction Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0;
	
	String s1=null;
	int rank=0;
	
			        
					ResultSet rs1=connection.createStatement().executeQuery("select count(cat),cat from posts group by cat");
					
					while ( rs1.next() )
					{
								s1=rs1.getString(2);
								rank=rs1.getInt(1);
					
						
						%>		
						myData["<%=i%>"]=["<%=s1 %>",<%=rank%>];
						<%
						i++;
					
			}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#FF00FF');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#FF00FF');
	myChart.setBarValues(true);
	myChart.setTitleColor('#FF00FF');
	myChart.setAxisColor('#FF00FF');
	myChart.setSize(500,350);
	myChart.setAxisValuesColor('#FF00FF');
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

