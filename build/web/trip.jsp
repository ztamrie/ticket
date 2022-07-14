<%-- 
    Document   : admin
    Created on : 09-Feb-2016, 22:13:20
    Author     : tigist
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::.Trip Registration::.</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <%
            
      if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")) 
      {
         out.println("<script>alert('please first login');</script>"); 
          response.sendRedirect("login.jsp");
      }
        %>
    </head>
    <body>
        <div id="wrapper" style="height: 550px">
	 <div id="header">
	</div>
	<div id="menu">
		<ul>
<li> <a href="admin.jsp">Home</a></li>
 <li> <a href="deletePassenger.jsp">Delete passenger</a> </li>
  <li><a href="display.jsp">View passenger</a></li>
 <li> <a href="addBus.jsp">Add bus</a></li>
 <li> <a href="logout.jsp">Logout</a></li>
 <li> <a href="report.jsp">Report</a></li>

		</ul>
	</div>
	<div id="content">
		<div id="left">
		  <div class="post">
  <label>
      <form action="trip.jsp" method="POST">
          <table> 
              <p style="background-color:lightgreen;border-radius:10px 10px 10px 10px;font-family:'Times New Roman', Times, serif;font: lightorange">Add The New Trip Available</p>
              <tr><td>Destination City</td><td><input type="text" name="city" value="" pattern="[a-zA-Z]+"/></td></tr>
              <tr><td> Bus Type</td><td><input type="text" name="bus" value="" pattern="[a-zA-Z]+" /></td></tr>
              <tr><td>Price</td><td><input type="text" name="price" value="" pattern="[0-9]+" /></td></tr>
              <tr><td>Time Spent</td><td><input type="text" name="time" value="" pattern="[0-9]+" /></td></tr>
              <tr><td>Distance</td><td><input type="text" name="distance" value="" pattern="[0-9]+" /></td></tr>
               <tr style="background-color:wheat"><td>registration status</td><td><%
              String city=request.getParameter("city");
              String bus=request.getParameter("bus");
              String price=request.getParameter("price");
              String time=request.getParameter("time");
              String distance=request.getParameter("distance");
              Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String sql="";
      try{
      Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket","root","");
          PreparedStatement tripPrepare=con.prepareStatement("insert into trip(dectinationCity,busType,Price,timeSpent,Distance) values('"+city+"','"+bus+"','"+price+"','"+time+"','"+distance+"')");
           tripPrepare.execute();
      out.println("<font color='green'>Trip Added Scesfully</font>");}
              catch(Exception e){
  out.print("<font color='red'>"+e+"</font>");}%></td>
        <tr><td colspan="2"><input type="submit" value="ADD" /><input type="RESET" value="RESET" /></td></tr>
             
          </table></form>
      
  </label>
          </div>
	  </div>
            <div id="right">
                <b><P style="font-family:'Times New Roman', Times, serif;font: lightorange"><img src="images/subject.png" width="55" height="50" alt="subject"/>Administrator Page</p></b>

			<p>
			In the current time reserving and buying bus ticket in Ethiopia is done manually. This means that ticket will be printed out and distributed for bus station after that if someone wants to buy a ticket he must go to bus station and spend more time for reserving the journey manually. In manual buying and selling case the user loses his time and money. </p>
</div>
	</div>
  
</div>

   <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div> </body>
</html>
