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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::Ticket Reserved::</title>
                <style>
            input .button{
               background-image: url(images/print.jpg);
                height: 60px;
                width: 60px;
            }
            table,td,tr{
                border-color:#dbdbdb;
            }
        </style>
        <script>
var ck_name = /^[A-Za-z0-9 ]{3,20}$/;
var ck_email = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i 
var ck_username = /^[A-Za-z0-9_]{1,20}$/;
var ck_password =  /^[A-Za-z0-9!@#$%^&*()_]{6,20}$/;

function validate(form){
var name = document.frm.
var email = form.email.value;
var username = form.username.value;
var password = form.password.value;
var gender = form.gender.value;
var errors = [];
 
 if (!ck_name.test(name)) {
  errors[errors.length] = "You valid Name .";
 }
 if (!ck_email.test(email)) {
  errors[errors.length] = "You must enter a valid email address.";
 }
 if (!ck_username.test(username)) {
 errors[errors.length] = "You valid UserName no special char .";
 }
 if (!ck_password.test(password)) {
  errors[errors.length] = "You must enter a valid Password ";
 }
 if (gender==0) {
  errors[errors.length] = "Select Gender";
 }
 if (errors.length > 0) {

  reportErrors(errors);
  return false;
 }
  return true;
}
function reportErrors(errors){
 var msg = "Please Enter Valide Data...\n";
 for (var i = 0; i<errors.length; i++) {
 var numError = i + 1;
  msg += "\n" + numError + ". " + errors[i];
}
 alert(msg);
}
</script>
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

                    <img src='file:///C:/Users/Tigist/AppData/Roaming/NetBeans/8.0.2/config/GF_4.1/domain1/config/image.jpg'>;

		</ul>
	</div>
	<div id="content">
            <div id="left" style="width: 300px">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>
  </label>
          </div>
	  </div>
		<div id="right">
             <div id="right" style="width: 480px">
                <form method="post" action="view_ticket.jsp">
                    Enter Passenger Id<input type="text" name="id" value="">
                <input type="Submit" value="View">
                </form>
		
<table style="border-collapse:collapse; border:5px solid #CCCCCC; " align="center" width="100%" bgcolor="#CCCCCC">
    <tr align="center"><td>Ticket Number</td><td>Plate Number</td><td>Passenger Id</td><td>trip Id</td><td>Date</td><td>Seat Number</td><td></td></tr>
<%
	    Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String id=request.getParameter("id");
            String sql="SELECT * FROM ticket where passengerId='"+id+"'";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sql);
     
             rs=ps.executeQuery();
             while(rs.next()){
                      
            String ticketNumber=rs.getString("ticketNumber");
            String plateNumber=rs.getString("plateNumber");
            String passengerId=rs.getString("passengerId");
            String tripId=rs.getString("tripId");
            String date=rs.getString("date");
            String seatNumber=rs.getString("seatNumber");
          out.println("<tr align='center' style='border-collapse:collapse; border:2px solid red'>");	
	  out.println("<td><font color='black'>"+ticketNumber+"</font></td>");
	  out.println("<td><font color='black'>"+plateNumber+"</font></td>");
	  out.println("<td><font color='black'>"+passengerId+"</font></td>");
	  out.println("<td><font color='black'>"+tripId+"</font></td>");
	  out.println("<td><font color='black'>"+date+"</font></td>");	
	  out.println("<td><font color='black'>"+seatNumber+"</font></td>");
          out.println("<td><form METHOD='POST' ACTION='printT.jsp'><input class='button' type='submit' value=''></form>");	
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
 
</div> 
</div>
<div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div>
	 </body>
</html>
