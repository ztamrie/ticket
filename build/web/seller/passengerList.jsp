<%-- 
    Document   : home
    Created on : May 9, 2016, 6:28:57 AM
    Author     : Tigist
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
        <%
            
      if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")) 
      {
         out.println("<script>alert('please first login');</script>"); 
          response.sendRedirect("../login.jsp");
      }
        %>
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
                <li><a href="../index.jsp">Home</a></li>      
                <li><a href="view_information.jsp">View Information</a></li>
                <li><a href="passengerList.jsp">Request Passenger List</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
                <li> <a href="../help.jsp">Help</a> </li>
		</ul>
	</div>
          <div id="content" style="border-radius: 15px 15px 15px 15px;background-color:lightblue">
		<div id="left">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>
      <a href="#about" style="text-decoration:none;background-color: green;border-radius:8px 8px 8px 8px;width: 200px">About</a><br>
      <a href="contact.jsp" style="text-decoration:none;background-color: yellow;border-radius:8px 8px 8px 8px;width: 200px">Contact us</a> <br>
      <a href="galary.html" style="text-decoration:none;background-color: yellow;border-radius:8px 8px 8px 8px;width: 200px">galary</a> <br> 
      <a href="absentPassenger.jsp">Report Absent Passenger</a><br>    <img id="image_rotate"src="images/1.PNG" width="300" height="300" />

	  </div><%
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String sql="SELECT * FROM passenger";
            try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sql);
      rs=ps.executeQuery();
      int i=0;
      while(rs.next()){
          i++;
                
            }
      out.println("There Are <font color='red'>"+i+"</font> Number of Passenger/s");
      }
      catch(SQLException e){
      out.println(e);
      }
      %>
                    <script id="about">
                        alert("Ethiopia is one of the largest countries in Africa having a population of above 80 million and a land of distributed cities. As transportation is one of the most common needs for citizens, people use bus as their main type of transportation from places to places.
This bus transportation system starts during Emperor Haile Selassie between cities to city. As that time the Eretria was not independent and there is also a trip up to north Asmara.
Now a day a country cross bus travelling is based on three levels with different associations. These three levels are level I, level II and level III. There are many number of association’s under each level.
The ticket method of the transportation now a day is manual system. When the passenger wants to reserve the ticket he/she goes to the station and asks the thicket seller.
");
                    </script>
	  </div>
            
	  <div id="right">
		  <div class="post">                      
                      <p style="font-family:'Times New Roman', Times, serif;font: lightorange"><img src="../images/teacher.png" width="55" height="50" alt="teacher"/><b>The Ticket Seller Page</p></b>

                  <div style="background-color: #D7D7BD; border:1px;width: 300px">

                      <marquee> <img  src="images/3.jpg" /></marquee>
                        
    </div>
<a href="view_information.jsp">view information</a>
<br>
<a href="view_ticket.jsp">view ticket</a>

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
