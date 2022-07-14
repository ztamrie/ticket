<%-- 
    Document   : driverStatus
    Created on : May 13, 2016, 9:27:15 AM
    Author     : Tigist
--%>
<%@page import="java.util.TimerTask"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.util.Timer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
 <%
            
      if ((session.getAttribute("driver") == null) || (session.getAttribute("driver") == "")) 
      {
         out.println("<script>alert('please first login');</script>"); 
          response.sendRedirect("login.jsp");
      }
        %>
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
	 <div id="header">
             
	 	</div>
	<div id="menu">
		<ul>
                <li><a href="index.jsp">Home</a></li>      
                <li><a href="viewSchedule.jsp">view bus schedule</a></li>
                <li><a href="login.jsp">Login</a> </li>
	        <li><a href="logout.jsp">Logout</a> </li>
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
           <form action="driverStatus.jsp" method="POST" style="background-color:#c9e2b3">
               Select Status
               <select name="message">
                   <option>free</option>
               </select>
               <br>Driver Id<input type="text" name="driverId" value="" />
               <br><input type="submit" value="Send" /></form>
           <%
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String sql="";
            out.println(request.getParameter("message"));
     try{
      Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket","root","");
          Statement stmt;
       stmt= con.createStatement();
           sql="insert into driverstatus(driverId,status) values('"+request.getParameter("driverId")+"','"+request.getParameter("message")+"')";
            ps=con.prepareStatement(sql);
            ps.execute();
            out.println("<font color='green'>Sent Sucsussfully</font> ");
      }
      catch(SQLException e){
      out.println("<font color='red'>"+e+"</font>");
      }
      
           %>
	  </div>
            
	  <div id="right">
              <div class="post">
                  <b> <P style="font-family:'Times New Roman', Times, serif;font: lightorange"><img src="images/student.png" width="55" height="50" alt="student"/>Driver Page</p></b>

                  <div>

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
               
              </tbody>
          </table>

  <p class="copyright">Copyright &copy; 2016</p>
	</div></body>
</html>
