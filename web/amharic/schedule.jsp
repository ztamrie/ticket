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
 <li> <a href="updatePassenger.jsp">update passenger</a></li>
		</ul>
	</div>
            <div style="alignment-adjust: central">
                                <%
    Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";%>
        <form name="frm" action="schedule_r.jsp" method="POST">
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
            String sql="select * from trip";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sql);
     
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
                        <td>Driver Id</td>
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
            <option><%= rs.getString(3)%></option>
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
                        <td>Id</td>
                        <td><input type="text" name="id" value="" /></td>
                    </tr>
                    <tr>
                        <td>Exit Time</td>
                        <td><input type="text" name="exit" value="" /></td>
                        <td>Entrance Time</td>
                        <td><input type="text" name="entrance" value="" /></td>
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
