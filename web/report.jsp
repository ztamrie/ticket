<%-- 
    Document   : report
    Created on : Apr 26, 2016, 2:13:36 PM
    Author     : Tigist
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
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
		  <div class="post">
  <label>
 
      <a href="index.jsp" style="text-decoration:none">Home</a><br>
	  <a href="deletePassenger.jsp" style="text-decoration:none">Delete passenger</a> <br>
	  <a href="display.jsp" style="text-decoration:none">View passenger</a> <br>
	  <a href="addBus.jsp" style="text-decoration:none">Add bus</a> <br>
          <a href="schedule.jsp" style="text-decoration:none">Schedule</a> <br>
                        <form name="report" action="report.jsp" method="POST" style="background-color:lightcyan;border-radius:10px 10px 10px 10px">
                                     <h4 style="background-color:blueviolet;border-radius:10px 10px 10px 10px">Generating Venue Collected</h4>
             Daily <input type="radio" name="daily" value="daily" checked="" /><br>
             Weekly <input type="radio" name="daily" value="weekly" /><input type="text" name="weekStrat" value="dd/mm/yyyy" /><input type="text" name="weekEnd" value="dd/mm/yyyy" /><br>
             Monthly <input type="radio" name="daily" value="monthly" /><br>
             Yearly <input type="radio" name="daily" value="yearly" /><br>
             Select Date
             <%
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
      String s="select * from schedule";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
     PreparedStatement t=con.prepareStatement(s);
     
     ResultSet r=t.executeQuery();
%>

<select name="reportedDate">
        <%  while(r.next()){ %>
            <option><%= r.getString(8)%></option>
        <% } }
        catch(Exception e){
out.println(e);}%>
        </select>
        <input type="submit" value="Report" />   
          </form>

  </label>
          </div>
	  </div>
		<div id="right">
			<p>
			In the current time reserving and buying bus ticket in Ethiopia is done manually. This means that ticket will be printed out and distributed for bus station after that if someone wants to buy a ticket he must go to bus station and spend more time for reserving the journey manually. In manual buying and selling case the user loses his time and money. </p>
	  <%
      out.print("<div style='border-radius:10px 10px 10px 10px;background-color:green'>");
      out.println("<b><font color='lightyellow'><p style='background-color:black'>Daily Report</p></b></font><br>");
	   
            String sql="select * from reservation";
            String checkDate=request.getParameter("reportedDate");
            String StratWeek=request.getParameter("startWeek");
            String endWeek=request.getParameter("endWeek");

            String daily=request.getParameter("daily");
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sql);
     int id=0;
             rs=ps.executeQuery();
			while(rs.next()){
                            if(rs.getString(6).equals(checkDate)&&daily.equals("daily")){
                        id=rs.getInt("price")+id; 
                        }
                     else if(rs.getString(6).equals(checkDate)&&daily.equals("weekly")){
                         
                         //String Date=rs.getString(6);
                         //SimpleDateFormat df = new SimpleDateFormat( "dd/MM/yy" );  
                         //java.util.Date date = df.parse(Date);   
                         //out.println(date);
                         
                         
                  String week="SELECT * FROM `reservation` WHERE date BETWEEN '12/04/2016' AND '12/04/2016'";
                  
                         PreparedStatement weekp=con.prepareStatement(week);
                         ResultSet weekResult=weekp.executeQuery();
                         while(weekResult.next()){
                         
                        id=rs.getInt("price")+id; }     
                        break;
                     }}
                        out.println(id+" birr");
      
      }
      catch(SQLException e){
      out.println(e);
      }
      
     out.println("</div>");
     %>
          </div>
	</div>
  
</div>

   <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div> </body>
</html>
