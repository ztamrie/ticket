<%-- 
    Document   : index
    Created on : 09-Feb-2016, 11:34:12
    Author     : tigist
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="themes/4/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/4/js-image-slider.js" type="text/javascript"></script>
    <link type="text/css" rel="stylesheet" href="style.css">
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
                <li><a href="home.jsp">Home</a></li>      
                <li><a href="schedule.jsp">Schedule Bus</a></li>
                <li><a href="viewSchedule.jsp">View Schedule</a></li>
                <li><a href="view_information.jsp">View Information</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
                <li> <a href="../help.jsp">Help</a> </li>
		</ul>	</ul>
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
      
      
			%>    <%
           boolean driverCondtion=false,busConditon=false;

            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";%>
  <form name="frm" action="newjsp1.jsp" method="POST">
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
                    <tr> <td>Status</td><td><%

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
 PreparedStatement driv=con.prepareStatement("select * from driver");
                  ResultSet di=driv.executeQuery();
                  while(di.next()){
                  if(di.getString(1).equals(driverId)&&di.getString(5).equals("free")){
                  driverIdNO=di.getString(3);
                  driverCondtion=true;}}
                  PreparedStatement busdi=con.prepareStatement("SELECT * FROM `bus`");
                  ResultSet div=busdi.executeQuery();
                  while(div.next()){
                  if(div.getString(1).equals(plateNumber)&&div.getString(6).equals("free")){
                  busConditon=true;}}
                  if(busConditon&&driverCondtion){
            String stat= "insert into schedule(Date,plateNumber,exitTime,enteranceTime,tripId,driverName,driverId)"
                    +"values('"+date+"','"+plateNumber+"','"+exit+"','"+enterance+"','"+tripId+"','"+driverId+"','"+driverIdNO+"')";
            PreparedStatement insert=con.prepareStatement(stat);
            insert.execute();     
out.println("<font color='green'>Sucssfully Scheduled</font>");
String d="assigned";
 PreparedStatement driverUpd = con.prepareStatement("UPDATE driver SET status = '" + d+  "'WHERE fNam = '" +driverId+ "'");
                    driverUpd.executeUpdate();
  PreparedStatement busUpd = con.prepareStatement("UPDATE bus SET status = '" + d+  "'WHERE plateNumber = '" +plateNumber+ "'");
                    busUpd.executeUpdate();
}
        else
                  {
                  out.println("the driver was schedule past");}}
        
catch(Exception e){ 
out.println("<font color='red'>"+e+"</font>");
out.println("<script language=javascript>alert('could not insert data')</script>"+e);
//response.sendRedirect("new_ticket.jsp");

}
                %>
                </td></tr>
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
