<%-- 
    Document   : driverStatus
    Created on : May 13, 2016, 5:00:58 AM
    Author     : Tigist
--%>

<%-- 
    Document   : index
    Created on : 09-Feb-2016, 11:34:12
    Author     : tigist
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="themes/4/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/4/js-image-slider.js" type="text/javascript"></script>
        <script>
delay = 200;
number = 1;
function animate(){
document.image_rotate.src = number+".jpg";
number++;
if (number > 4)   
number = 1;  
}
</script>
        <link href="../style.css" rel="stylesheet" type="text/css" media="screen" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> ::.home page::.</title>
    </head>
    <body>
      <div id="wrapper">
	 <div id="header">
             
	 	</div>
	<div id="menu">
		<ul>
                <li><a href="home.jsp">Home</a></li>      
                <li><a href="schedule.jsp">Schedule</a></li>
                <li><a href="viewSchedule.jsp">View Schedule</a></li>
                <li><a href="view_information.jsp">View Information</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
                <li> <a href="../help.jsp">Help</a> </li>
		</ul>
	</div>
          <div id="content" style="border-radius: 15px 15px 15px 15px;background-color:lightblue">
              <div id="left" style="width:360px">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>
      <table>
          <tr><td> <a href="#about" style="t">About</a><br></td></tr>
          <tr><td><a href="contact.jsp">Contact us</a></td></tr>
          <tr><td><a href="requestPassenger.jsp">Request Passenger</a></td></tr>
          <tr><td><a href="takeImage.jsp">Take picture</a></td></tr>
          <tr><td><a href="driverStatus.jsp">Driver Status</a></td></tr>
      </table><img id="image_rotate"src="images/1.PNG" width="300" height="300" />

	  </div>
                    <script id="about">
                        alert("Ethiopia is one of the largest countries in Africa having a population of above 80 million and a land of distributed cities. As transportation is one of the most common needs for citizens, people use bus as their main type of transportation from places to places.
This bus transportation system starts during Emperor Haile Selassie between cities to city. As that time the Eretria was not independent and there is also a trip up to north Asmara.
Now a day a country cross bus travelling is based on three levels with different associations. These three levels are level I, level II and level III. There are many number of association’s under each level.
The ticket method of the transportation now a day is manual system. When the passenger wants to reserve the ticket he/she goes to the station and asks the thicket seller.
");
                    </script>
	  </div>
            
              <div id="right" style="width:420px">
		  <div class="post">                      
                      <p style="font-family:'Times New Roman', Times, serif;font: lightorange"><img src="../images/teacher.png" width="55" height="50" alt="teacher"/><b>The Bus Attendant Page</p></b>
                
                         <%
                  Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String id=request.getParameter("id");
            String sql="SELECT * FROM `driverstatus`";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sql);
     
             rs=ps.executeQuery();
            out.println("<form METHOD='POST' ACTION='driverStatus.jsp'>");
                       out.println("<table>");	
              out.println("<tr><td>Driver Id</td><td>Status</td><td>Operation</td></tr>");
             while(rs.next()){
           
	  out.println("<td><font color='black'><input type='text' name='driverId' max='3' value='"+rs.getString(1)+"'</font></td>");
	  out.println("<td><font color='black'><input type='text' name='status' value='"+rs.getString(2)+"'</font></td>");
          out.println("<td><input type='submit' value='Update'></form>");	
	out.print("</tr>");       
}
             out.println("</table>");
      
      }
      catch(SQLException e){
      out.println(e);
      }
      
      
			
               %> 
               <%
               String driverId=request.getParameter("driverId");
               String status=request.getParameter("status");
               PreparedStatement update=con.prepareStatement("SELECT * FROM  `driver` where Id ="+driverId);
              update.execute();
              PreparedStatement driverUpd = con.prepareStatement("UPDATE driver SET status = '" +status+  "'WHERE Id = '" +driverId+ "'");
                    driverUpd.executeUpdate(); 
              PreparedStatement busUpd = con.prepareStatement("UPDATE bus SET status = '" +status+  "'WHERE driverId = '" +driverId+ "'");
                    busUpd.executeUpdate(); 
              PreparedStatement delete=con.prepareStatement("delete from driverstatus where driverId ="+driverId);
               delete.execute();
               out.println("<script>alert(updated)</script>");
               %>
                   
                  </form>
        </div>
                  
                  </div>
	  </div>

  
</div>
      </div>
      <div id="footer" style="height:150px">
          <table border="0" cellspacing="6">
              
              <thead>
                  <tr>
                      <th>Short Cutted Links</th>
                      <th>Usefull Links</th>
                      <th>Related Links</th>
                  </tr>
              </thead>
              <tbody>
                  <tr>
                      <td> <a href="login.jsp">login</a></td>
                      <td> <a href="new_ticket.jsp">new ticket</a></td>
                      <td> <a href="cancel_ticket.jsp">login</a></td>
                  </tr>
                  <tr>
                      <td><a href=www.google.com">google</a></td>
                      <td><a href=www.gmail.com">gmail</a></td>
                      <td><a href="www.yahoo.com">yahoo</a></td>
                  </tr>
                  <tr>
                      <td></td>
                      <td></td>
                      <td></td>
                  </tr>
                  <tr>
                      <td></td>
                      <td></td>
                      <td></td>
                  </tr>
                  <tr>
                      <td></td>
                      <td></td>
                      <td></td>
                  </tr>
              </tbody>
          </table>

  <p class="copyright">Copyright &copy; 2016</p>
	</div></body>
</html>
