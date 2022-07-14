<%-- 
    Document   : index
    Created on : 09-Feb-2016, 11:34:12
    Author     : tigist
--%>
<%@page import="java.util.TimerTask"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.util.Timer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="themes/4/js-image-slider.css" rel="stylesheet" type="text/css" />
 <link href="images/2.jpg" rel="icon" type="image/jpg" />
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
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> ::.home page::.</title>
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
      <div id="wrapper">
          <div id="header" style="background-image:url(images/d.JPG)">
             
	 	</div>
	<div id="menu">
		<ul>
                <li><a href="index.jsp">Home</a></li>      
                <li><a href="new_ticket.jsp">New Ticket</a></li>
                <li><a href="extend.jsp">Extend Ticket</a></li>
                <li><a href="cancel_ticket.jsp">Cancel Ticket</a></li>
                <li><a href="amharic/index.jsp">አማርኛ</a></li>
                <li><a href="login.jsp">Login</a> </li>
	        <li> <a href="help.jsp">Help</a> </li>
		</ul>
	</div>
          <div id="content" style="border-radius: 15px 15px 15px 15px;background-color:lightblue">
		<div id="left">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>
      <a href="#about" style="text-decoration:none;padding:10px 40px;background-color: green;border-radius:8px 8px 8px 8px">About</a><br>
      <a href="contact.jsp" style="text-decoration:none;padding:10px 40px;background-color: yellow;border-radius:8px 8px 8px 8px">Contact us</a> <br>
      <a href="new_ticket.jsp" style="text-decoration:none;padding:10px 40px;background-color: red;border-radius:8px 8px 8px 8px">Register</a> <br>
      <a href="takeImage.jsp" style="text-decoration:none;padding:10px 40px;background-color: green;border-radius:8px 8px 8px 8px">Take picture</a> <br>
      <a href="galary.jsp" style="text-decoration:none;padding:10px 40px;background-color: yellow;border-radius:8px 8px 8px 8px">galary</a> <br> 
      <a href="printT.jsp" style="text-decoration:none;padding:10px 40px;background-color: red;border-radius:8px 8px 8px 8px">print</a> <br>  
   

	  </div>
<p>Ethiopia is one of the largest countries in Africa having a population of above 80 million and a land of distributed cities. As transportation is one of the most common needs for citizens, people use bus as their main type of transportation from places to places.
This bus transportation system starts during Emperor Haile Selassie between cities to city. As that time the Eretria was not independent and there is also a trip up to north Asmara.
Now a day a country cross bus travelling is based on three levels with different associations. These three levels are level I, level II and level III. There are many number of association’s under each level.
The ticket method of the transportation now a day is manual system. When the passenger wants to reserve the ticket he/she goes to the station and asks the thicket seller.
</p>
                  </div>
            
	  <div id="right">
              <div class="post">
                  <b> <P style="font-family:'Times New Roman', Times, serif;font: lightorange"><img src="images/student.png" width="55" height="50" alt="student"/>Passenger Page</p></b>

                  <div>
 <table>
                      <tr style="background-color: #c8e5bc;border-radius: 20px 20px 20px 20px"><td><a href="view_information.jsp">view information</a></td></tr>

                      <tr style="background-color: #c8e5bc;border-radius: 20px 20px 20px 20px"><td><a href="view_ticket.jsp">view ticket</a></td></tr></table>
                      <marquee> <img  src="images/3.jpg" /></marquee>
                        
    </div>
                 

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
