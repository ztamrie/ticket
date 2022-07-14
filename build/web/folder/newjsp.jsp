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

try{ 
   Class.forName("com.mysql.jdbc.Driver");
   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket","root","");
   String sql= "delete from cancel where ticketNo='"+tiketNo+"'";
            pst=con.prepareStatement(sql);
            pst.execute();
  PreparedStatement bankP=con.prepareStatement("select * from bank");
  ResultSet bankr=bankP.executeQuery();
  while(bankr.next()){
  if(passId.equals(bankr.getString(3)))
     {
      PreparedStatement ticketP=con.prepareStatement("select * from ticket");
      ResultSet ticketR=ticketP.executeQuery();
      while(ticketR.next()){
      if(ticketR.getString(1).equals(tiketNo)){
      PreparedStatement tripP=con.prepareStatement("select * from trip");
      ResultSet tripR=tripP.executeQuery();
      while(tripR.next()){
      
      if(ticketR.getString(4).equals(tripR.getString(1))){
      int price=tripR.getInt(4);
      int pass=bankr.getInt(1)+(price);
      PreparedStatement transferToAdmin = con.prepareStatement("UPDATE bank SET amount = '" + price+  "'WHERE account = '" + 1 + "'");
      transferToAdmin.executeUpdate();
      PreparedStatement Admin = con.prepareStatement("UPDATE bank SET amount = '" +pass+  "'WHERE account = '" + bankr.getString(2) + "'");
      Admin.executeUpdate();out.println("Data is successfully deleted!");       

      }
      
      }
      }
          }
     }
  
  }
    
     
//System.out.println("rows affected by insert "+st.executeUpdate(i)); 
} 
catch(Exception e){ 
out.println(e);
}
    %>         