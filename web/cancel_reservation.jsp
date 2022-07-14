<%-- 
    Document   : cancel_reservation
    Created on : May 6, 2016, 6:55:16 AM
    Author     : Tigist
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::.cancel reservation::.</title>
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
		  <div class="post">
  <label>
 
      <a href="trip.jsp" style="text-decoration:none">add trip</a><br>
	  <a href="deletePassenger.jsp" style="text-decoration:none">Delete passenger</a> <br>
	  <a href="driver.jsp" style="text-decoration:none">add driver</a> <br>
	  <a href="addBus.jsp" style="text-decoration:none">Add bus</a> <br>
          <a href="schedule.jsp" style="text-decoration:none">Schedule</a> <br>
           <div>
               <%
               
Connection con=null;
ResultSet rs=null;
boolean r=false;
PreparedStatement pst=null; 
String passId=request.getParameter("passId"); 
String tiketNo=request.getParameter("ticketNo");
int admin=0;

try{ 
   Class.forName("com.mysql.jdbc.Driver");
   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket","root","");
   String sql= "delete from cancel where ticketNo='"+tiketNo+"'";
            pst=con.prepareStatement(sql);
            pst.execute();
  PreparedStatement bankP=con.prepareStatement("SELECT * FROM `bank`");
  ResultSet bankr=bankP.executeQuery();
  while(bankr.next()){
      if(bankr.getInt(2)==1){
       admin=bankr.getInt(1);}
  if(passId.equals(bankr.getString(3)))     
  {
  PreparedStatement reservationP=con.prepareStatement("SELECT * FROM `reservation` where passengerId='"+passId+"'");
  ResultSet reservationR=reservationP.executeQuery();
  while(reservationR.next())
  {
  int price=reservationR.getInt(4);
    int deacreas=admin-price;
    int increase=bankr.getInt(1)+price;
    PreparedStatement transferToAdmin = con.prepareStatement("UPDATE bank SET amount = '" + deacreas+  "'WHERE account = '" + 1 + "'");
    transferToAdmin.executeUpdate();
    PreparedStatement Admin = con.prepareStatement("UPDATE bank SET amount = '" +increase+  "'WHERE account = '" + bankr.getString(2) + "'");
    Admin.executeUpdate();
      String deletet= "delete from ticket where ticketNumber='"+tiketNo+"'";
            pst=con.prepareStatement(deletet);
            pst.execute();
  }out.println("<font color'red'>cancelation sucessfull</font>");
  }  
  
      }
//System.out.println("rows affected by insert "+st.executeUpdate(i)); 
} 
catch(Exception e){ 
out.println(e);
}
               %>
 </div>

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
