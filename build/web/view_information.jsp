<%-- 
    Document   : view_information
    Created on : 16-Feb-2016, 23:09:47
    Author     : tigist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            table,tr,td{border-collapse:collapse;
            border: 2px #faf2cc groove}
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>avaliable trips</title>
         <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
         <link href="style1.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
<div id="wrapper">
	 <div id="header">
	</div>
	<div id="menu">
		<ul>
<li> <a href="index.jsp">Home</a></li>
  <li><a href="add_user.jsp">Login</a></li>
 <li> <a href="logout.jsp">Logout</a></li>
  <li> <a href="help.jsp">Help</a> </li>

 <img src='file:///C:/Users/Tigist/AppData/Roaming/NetBeans/8.0.2/config/GF_4.1/domain1/config/image.jpg'>;

		</ul>
	</div>
	<div id="content">
		<div id="left">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>
      		
<table>
    <caption>Avalaible schedule</caption>
    <tr align="center"><td>Plate Number</td><td>Exit Time</td><td>Entrance Time</td><td>Id</td><td>Trip Id</td><td>	Driver Id</td><td>Driver Name</td><td>Date</td></tr>
<%
	    Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String sql="select * from schedule";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sql);
     
             rs=ps.executeQuery();
			while(rs.next()){
            String plate=rs.getString("plateNumber");
            String exit=rs.getString("exitTime");
            String enterance=rs.getString("enteranceTime");
            String id=rs.getString("Id");
            String tripif=rs.getString("tripId");
            String driver=rs.getString("driverId");
            String driverna=rs.getString("driverName");
            String date=rs.getString("Date");

            //Statement st=con.createStatement();
            //st.executeUpdate("insert into account values('hi','hi','hi')");
          out.println("<tr>");	
	  out.println("<td><font color='black'>"+plate+"</font></td>");
	  out.println("<td><font color='black'>"+exit+"</font></td>");
          out.println("<td><font color='black'>"+enterance+"</font></td>");
	  out.println("<td><font color='black'>"+id+"</font></td>");
	  out.println("<td><font color='black'>"+tripif+"</font></td>");
          out.println("<td><font color='black'>"+driver+"</font></td>");
          out.println("<td><font color='black'>"+driverna+"</font></td>");	
          out.println("<td><font color='black'>"+date+"</font></td>");	



				//echo"<td><font color='black'>". $test['photo']. "</font></td>";
	
	out.print("</tr>");
     
            }
      
      }
      catch(SQLException e){
      out.println(e);
      }
      
      
			%>
</table></label></div></div>
  </label>
         
  
		<div id="right">
                    <br><br>
                    <h2 style="color:#CCCCCC">Avalaible Trips</h2> 
<table>
<tr align="center"><td>Destination City</td><td>Id</td><td>Price</td><td>Bus Type</td><td>Distance</td><td>Time Spent</td></tr>
<%

      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      String sq="select * from trip";
      ps=con.prepareStatement(sq);
     
             rs=ps.executeQuery();
			while(rs.next()){
            String fname=rs.getString("dectinationCity");
            int lname=rs.getInt("id");
            String age=rs.getString("busType");
            int id=rs.getInt("price");
            int phone=rs.getInt("timeSpent");
            int email=rs.getInt("distance");
            //Statement st=con.createStatement();
            //st.executeUpdate("insert into account values('hi','hi','hi')");
          out.println("<tr'>");	
	  out.println("<td><font color='black'>"+fname+"</font></td>");
	  out.println("<td><font color='black'>"+lname+"</font></td>");
	  out.println("<td><font color='black'>"+id+"</font></td>");
	  out.println("<td><font color='black'>"+age+"</font></td>");
	  out.println("<td><font color='black'>"+email+"</font></td>");	
	  out.println("<td><font color='black'>"+phone+"</font></td>");

				//echo"<td><font color='black'>". $test['photo']. "</font></td>";
	
	out.print("</tr>");
     
            }
      
      }
      catch(SQLException e){
      out.println(e);
      }
      
      
			%>
</table>		
	  </div>
	</div>
 
</div>    <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div> </body>
</html>
