<%-- 
    Document   : view_information
    Created on : May 9, 2016, 7:30:53 AM
    Author     : Tigist
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head> <%
            
      if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")) 
      {
         out.println("<script>alert('please first login');</script>"); 
          response.sendRedirect("../login.jsp");
      }
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="themes/4/js-image-slider.css" rel="stylesheet" type="text/css" />
         <link href="../style.css" rel="stylesheet" type="text/css" media="screen" />
  <link href="images/2.jpg" rel="icon" type="image/jpg" />
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
<li><a href="home.jsp">Home</a></li>      
                <li><a href="absentPassenger.jsp">Request Absent Passenger</a></li>
                <li><a href="passengerList.jsp">Request Passenger List</a></li>
                <li> <a href="../help.jsp">Help</a> </li>
 <li> <a href="logout.jsp">Logout</a></li>
 <img src='file:///C:/Users/Tigist/AppData/Roaming/NetBeans/8.0.2/config/GF_4.1/domain1/config/image.jpg'>;

		</ul>
	</div>
	<div id="content">
		<div id="left">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>
  </label>
          </div>
	  </div>
		<div id="right">
		
<table style="border-collapse:collapse; border:5px solid green; " align="center" width="100%" bgcolor="#6699CC">
<tr align="center"><td>Destination City</td><td>Id</td><td>Price</td><td>Bus Type</td><td>Distance</td><td>Time Spent</td></tr>
<%
	    Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String sql="select * from trip";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sql);
     
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
          out.println("<tr align='center' style='border-collapse:collapse; border:2px solid red'>");	
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
