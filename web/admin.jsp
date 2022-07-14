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
        <title>::.adminstrator page::.</title>
         <link href="images/2.jpg" rel="icon" type="image/jpg" />
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
<li> <a href="index.jsp">Home</a></li>
 <li> <a href="deletePassenger.jsp">Delete passenger</a> </li>
  <li><a href="display.jsp">View passenger</a></li>
 <li> <a href="addBus.jsp">Add bus</a></li>
 <li> <a href="logout.jsp">Logout</a></li>
 <li> <a href="report.jsp">Report</a></li>

		</ul>
	</div>
	<div id="content">
		<div id="left">
                    <div class="post" style="width: 500px">
  <label>
 
      <a href="trip.jsp" style="text-decoration:none">add trip</a><br>
	  <a href="newAccount.jsp" style="text-decoration:none">Add user</a> <br>
	  <a href="driver.jsp" style="text-decoration:none">Add driver</a> <br>
	  <a href="addEmployee.jsp" style="text-decoration:none">Add employee</a> <br>
          <a href="schedule.jsp" style="text-decoration:none">Schedule</a> <br>
          <div class="notification" style="border:1px">
               <h2 style="align:center;font-family:'Times New Roman', Times, serif;font: lightorange;color:darkblue">Notefiction               <%
                  Connection co=null;
            PreparedStatement p=null;
            ResultSet r=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String sq="SELECT * FROM `cancel`";
      try{
      Class.forName(driverName);
      co=DriverManager.getConnection(url, user, dbpasw);
      p=co.prepareStatement(sq);
     
             r=p.executeQuery();
             while(r.next()){           
	      int i=r.getRow();
              out.println("<font color='red'>"+i+"</font>");
}
      
      }
      catch(SQLException e){
      out.println(e);
      }%></h2>
               <%
                  Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
           
            String id=request.getParameter("id");
            String sql="SELECT * FROM `cancel`";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sql);
     
             rs=ps.executeQuery();
             out.println("<form METHOD='POST' ACTION='cancel_reservation.jsp'");
                       out.println("<table>");	
              out.println("<tr><td>Passenger Id</td><td>Ticket Number</td><td>Operation</td></tr>");
             while(rs.next()){
           
	  out.println("<td><font color='black'><input type='text' name='passId' max='3' value='"+rs.getString("passengerId")+"'</font></td>");
	  out.println("<td><font color='black'><input type='text' name='ticketNo' value='"+rs.getString("ticketNo")+"'</font></td>");
          out.println("<td><input type='submit' value='Cancel'></form>");	
	out.print("</tr>");       
}
             out.println("</table>");
      
      }
      catch(SQLException e){
      out.println(e);
      }
      
      
			
               %>
 </div>

  </label>
          </div>
	  </div>
 <div id="right" style="width:230px">
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
