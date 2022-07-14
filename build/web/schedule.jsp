<%-- 
    Document   : schedule
    Created on : 14-Feb-2016, 07:16:54
    Author     : tigist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" type="text/css" rel="stylesheet">
        <title>::.Schedule Bus::</title>
    </head>
    <body style="height: 600px">
        <div id="wrapper" style="height: 550px">
	 <div id="header">
	</div>
	<div id="menu">
		<ul>
<li> <a href="index.jsp">home</a></li>
 <li> <a href="deletePassenger.jsp">delete passenger</a> </li>
  <li><a href="display.jsp">view passenger</a></li>
 <li> <a href="addBus.jsp">add bus</a></li>
  <li><a href="add_user.jsp">create account</a></li>
 <li> <a href="logout.jsp">logout</a></li>
		</ul>
	</div>
            <div style="alignment-adjust: central; ">
                <h2>note</h2>
                <%
            String sql="select * from trip";
             Connection co=null;
            PreparedStatement pt=null;
            ResultSet rt=null;
            String driverNam="com.mysql.jdbc.Driver";
            String ur="jdbc:mysql://localhost:3306/ticket";
            String use="root";
            String dbpas="";
      try{
      Class.forName(driverNam);
      co=DriverManager.getConnection(ur, use, dbpas);
      pt=co.prepareStatement(sql);
     
             rt=pt.executeQuery();
             out.println("<table border='1' style='border-collapse:collapse'>");
			while(rt.next()){
            String fname=rt.getString("dectinationCity");
            int lname=rt.getInt("id");
            String age=rt.getString("busType");
            int id=rt.getInt("price");
            int phone=rt.getInt("timeSpent");
            int email=rt.getInt("distance");
            //Statement st=con.createStatement();
            //st.executeUpdate("insert into account values('hi','hi','hi')");
          out.println("<tr align='center' style='border-collapse:collapse; border:2px solid red'>");	
	  out.println("<td><font color='black'>"+fname+"</font></td>");
	  out.println("<td><font color='black'>"+lname+"</font></td>");
	  out.println("<td><font color='black'>"+id+"</font></td>");
	  out.println("<td><font color='black'>"+age+"</font></td>");
	  out.println("<td><font color='black'>"+email+"</font></td>");	
	  out.println("<td><font color='black'>"+phone+"</font></td>");	
	out.print("</tr>");
     
            }
                        out.println("</table>");
      
      }
      catch(Exception e){
      out.println(e);
      }
      
      
			%>
                                <%
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";%>
        <form name="frm" action="schedule.jsp" method="POST">
            <table>
                <tbody>
                    <tr>
                        <td>Date</td>
                        <td><input type="text" name="date" value="" /></td>
                        <td>City</td>
                        <td>
                            <%String trip="select * from trip";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
     PreparedStatement tri=con.prepareStatement(trip);
     
     ResultSet rst=tri.executeQuery();
%>

<select name="tripCity">
        <%  while(rst.next()){ %>
            <option><%= rst.getString(2)%></option>
        <% } %>
        </select>
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%></td>
                    </tr>
                       <tr>
                        <td>Trip Id</td>
                        <td><%
            String sq="select * from trip";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sq);
     
      rs=ps.executeQuery();
%>

<select name="tripId">
        <%  while(rs.next()){ %>
            <option><%= rs.getString(1)%></option>
        <% } %>
        </select>
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%> </td>
                        <td>Driver</td>
                        <td><%
            String driver="select * from driver";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(driver);
     
      rs=ps.executeQuery();
%>

<select name="driver">
        <%  while(rs.next()){ %>
            <option><%= rs.getString(1)%></option>
        <% } %>
        </select>
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%> </td>
                    </tr>
                          <tr>
                        <td>Plate Number</td>
                        <td><%
            String bus="select * from bus";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(bus);
     
      rs=ps.executeQuery();
%>

<select name="bus">
        <%  while(rs.next()){ %>
            <option><%= rs.getString(1)%></option>
        <% } %>
        </select>
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Exit Time</td>
                        <td><input type="text" name="exit" value="" /></td>
                        <td>Entrance Time</td>
                        <td><input type="text" name="entrance" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Schedule Status</td><td colspan="2">       <%
        PreparedStatement pst=null;    
       String date=request.getParameter("date");
       String tripCity=request.getParameter("tripCity");
       String tripId=request.getParameter("tripId");
       String driverId=request.getParameter("driver");
       String plateNumber=request.getParameter("bus");
       String exit=request.getParameter("exit");
       String enterance=request.getParameter("entrance");
       String driverIdNO="";
        try{    
          Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket","root",""); 
          PreparedStatement pastP=con.prepareStatement("select * from schedule");
          ResultSet pastR=pastP.executeQuery();
          while(pastR.next()){
              if(date.equals(pastR.getString(8))||plateNumber.equals(pastR.getString(2))){
             PreparedStatement driv=con.prepareStatement("select * from driver");
                  ResultSet di=driv.executeQuery();
                  while(di.next()){
                  if(di.getString(1).equals(driverId)){
                  driverIdNO=di.getString(3);}}
            String stat= "insert into schedule(Date,plateNumber,exitTime,enteranceTime,tripId,driverName,driverId)"
                    +"values('"+date+"','"+plateNumber+"','"+exit+"','"+enterance+"','"+tripId+"','"+driverId+"','"+driverIdNO+"')";
            PreparedStatement insert=con.prepareStatement(stat);
            insert.execute();     
out.println("<font color='green'>Sucssfully Scheduled</font>");
break; 
} 
              else{
                  out.println("<font color='red'>the day You want to sechedule is schedule past</font>");break;}}
              
        }
catch(Exception e){ 
out.println("<font color='red'>"+e+"</font>");
out.println("<script language=javascript>alert('could not insert data')</script>"+e);
//response.sendRedirect("new_ticket.jsp");

}
        
        
        %></td>
                    </tr>
                    <tr>
                        <td rowspan="2"><input type="submit" value="Schedule" /></td>
                         <td rowspan="2"><input type="Reset" value="Reset" /></td>
                        
                    </tr>
                </tbody>
               
            </table>
           
        </form>
            </div>
        </div>
   <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div> </body>
</html>
