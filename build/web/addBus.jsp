<%-- 
    Document   : admin
    Created on : 09-Feb-2016, 22:13:20
    Author     : tigist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")) 
      {
         out.println("<script>alert('please first login');</script>"); 
          response.sendRedirect("login.jsp");
      }
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::.add bus page::.</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="images/2.jpg" rel="icon" type="image/jpg" />
    <script>
       function validate(){
var check_color = /^[a-zA-Z]{3,20}$/;
var color = document.frm.color.value;
var type = document.frm.type.value;
var plate=document.frm.plate.value;
var check_plate=/^[0-9]{3,10}/

 
 if (!check_color.test(color)) {
 alert("Color must be letter bad character exists!")
 }
  if (!check_color.test(type)) {
 alert("Type must be letter bad character exists!")
 }
  if (!check_plate.test(plate)) {
 alert("Plate must be integer bad character exists!")
 }
 if (!check_plate.test(document.frm.side.value)) {
 alert("side Number must be integer bad character exists!")
 }
  if (!check_plate.test(document.frm.seat.value)) {
 alert("Seat Number must be integer bad character exists!")
 }
}
    </script>
 </head>
    <body>
      <div id="wrapper">
	 <div id="header">
	</div>
	<div id="menu">
		<ul>
<li> <a href="admin.jsp">Home</a></li>
 <li> <a href="deletePassenger.jsp">Delete passenger</a> </li>
  <li><a href="display.jsp">View passenger</a></li>
 <li> <a href="logout.jsp">Logout</a></li>
 <li> <a href="updatePassenger.jsp">Update passenger</a></li>
		</ul>
	</div>
	<div id="content">
		<div id="left">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>
 
      <a href="index.jsp" style="text-decoration:none">Home</a><br>
	  <a href="deletePassenger.jsp" style="text-decoration:none">Delete passenger</a> <br>
	  <a href="display.jsp" style="text-decoration:none">View passenger</a> <br>
	  <a href="addBus.jsp" style="text-decoration:none">Add bus</a> <br>
  </label>
          </div>
	  </div>
		<div id="right">
                    <div style="background-color: #D7D7BD; border: 3px; ">
                        <form action="add_bus.jsp" method="post" name="frm" onsubmit="return validate();">
                        <fieldset>
                            <legend> bus information</legend>
                        <p>Bus color <input type="text" name="color"></p>
                        <p>Bus type <input type="text" name="type"></p>
                        <p>Plate number <input type="text" name="plate"></p>
                        <p>Side number <input type="text" name="side"></p>
                        <p>Number of seat <input type="text" name="seat"></p>
                        <input type="submit" value="Add">
                        <input type="reset" value="Reset">
                        </fieldset>
                    </form>   
                    </div>
			
	  </div>
	</div>
  
</div>

  <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div>  </body>
</html>
