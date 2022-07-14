<%@page import="java.util.regex.Pattern"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::ticket cancelation::.</title>
      <link href="images/2.jpg" rel="icon" type="image/jpg" />
   <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <script>

function validate(){
var check_id = /^[0-9 ]{3,20}$/;
var ticket = document.frm.passId.vlue;
var id = document.frm.ticketNo.value;

 
 if (!check_id.test(id)) {
 alert("Id must be Integer value")
 }
  if (!check_id.test(ticket)) {
 alert("Ticket must be Integer value")
 }
}
        </script>
    </head>
    <body>
        <div id="wrapper" style="height: 540px">
	 <div id="header">
	</div>
	<div id="menu">
		<ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="new_ticket.jsp">New ticket</a></li>
                <li><a href="cancel_ticket.jsp">Cancel ticket</a></li>
                <li> <a href="amharic/index.jsp"><img src="images/amharic.PNG" alt="amharic" /></a></li>
		<li><a href="login.jsp">Login</a> </li>
	        <li> <a href="help.jsp">Help</a> </li>
		</ul>
	</div>
	<div id="content">
            <div id="left" style="width:360px">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>
 
       <a href="about.jsp" style="text-decoration:none">about</a><br>
      <a href="contact.jsp" style="text-decoration:none">contact us</a> <br>
	  <a href="new_ticket.jsp" style="text-decoration:none">register</a> <br>
	  <a href="print.jsp" style="text-decoration:none">print</a> <br>
	  <a href="www/index.html" style="text-decoration:none">take picture</a> <br>
	   <a href="galary.html" style="text-decoration:none">galary</a> <br>  
  </label>
          </div>
	  </div>
            <div id="right" style="width:360px">
			<p>
                        <form action="cancel_ticket.jsp" method="POST" name="frm" onsubmit="return validate();">
    <table border="0">     
             <tr>
                <td>Passenger Id</td>
                <td><input type="text" name="passId" value="" /></td>
            </tr>
            <tr>
                <td>TicketNo</td>
                <td><input type="text" name="ticketNo" value="" /></td>
            </tr>
            <tr>
                <td>Cancelation Status</td>
                <td><%
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
          Statement stmt;
       stmt= con.createStatement();
           sql="insert into cancel(passengerId,ticketNo) values('"+request.getParameter("passId")+"','"+request.getParameter("ticketNo")+"')";
            ps=con.prepareStatement(sql);
            ps.execute();
            out.println("<font color='green'>Sucsussfully Canceled<font>");
      }
      catch(SQLException e){
      out.println("<font color='red'>"+e+"</font>");
      }
      
      
            %></td>
            </tr>
           <tr>
               <td colspan="2"><input type="submit" value="Cancel" /></td>
            </tr>
        
    </table>

</form>	  </div>
               
	</div>
  
</div>
                            <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div>


    </body>
</html>
