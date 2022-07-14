<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.OutputStream"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : display
    Created on : 09-Feb-2016, 11:40:08
    Author     : tigist
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::.passengers in the trip::.</title>
        <style>td,tr{border:2px solid black;}</style>
           <link href="images/2.jpg" rel="icon" type="image/jpg" />
      <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <div id="wrapper">
	 <div id="header">
	</div>
	<div id="menu">
		<ul>
<li> <a href="admin.jsp">Home</a></li>
 <li> <a href="updatePassenger.jsp">Update</a> </li>
  <li><a href="display.jsp">View passenger</a></li>
 <li> <a href="addBus.jsp">add bus</a></li>
  <li><a href="add_user.jsp">create account</a></li>
 <li> <a href="logout.jsp">logout</a></li>
		</ul>
	</div>
	<div id="content">
            <div id="left" style="width:300px">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>
 
      <a href="index.jsp" style="text-decoration:none">home</a><br>
	  <a href="help.jsp" style="text-decoration:none">help</a> <br>
	  <a href="display.jsp" style="text-decoration:none">view passenger</a> <br>
	  <a href="addBbus.jsp" style="text-decoration:none">add bus</a> <br>
	  <a href="add_user.jsp" style="text-decoration:none">creat account</a> <br>
  </label>
          </div>
	  </div>
            <div id="right" style="width:480px">
		
<table style="border-collapse:collapse; border:2px solid black; " align="center" width="90%" bgcolor="white">
    <tr align="center"><td>fname</td><td>lname</td><td>ID</td><td>account</td><td>age</td><td>email</td><td>phone</td><td>photo</td></tr>
<%
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String sql="SELECT * FROM passenger";
            try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sql);
      rs=ps.executeQuery();
            while(rs.next()){
            String fname=rs.getString("fname");
            String lname=rs.getString("lname");
            int age=rs.getInt("age");
            int id=rs.getInt("Id");
            int phone=rs.getInt("phone");
            String email=rs.getString("email");
            int account=rs.getInt("Account");
            String photo="file:///C:/Users/Tigist/Documents/NetBeansProjects/project/web/".concat(rs.getString(8));
            

            //Statement st=con.createStatement();
            //st.executeUpdate("insert into account values('hi','hi','hi')");
          out.println("<tr>");	
	  out.println("<td><font color='black'>"+fname+"</font></td>");
	  out.println("<td><font color='black'>"+lname+"</font></td>");
	  out.println("<td><font color='black'>"+id+"</font></td>");
	  out.println("<td><font color='red'>"+account+"</font></td>");	
	  out.println("<td><font color='black'>"+age+"</font></td>");
	  out.println("<td><font color='black'>"+email+"</font></td>");	
	  out.println("<td><font color='black'>"+phone+"</font></td>");
          
          out.println("<td><img src='"+photo+"' style='width:30px;height:20px;' alt='"+fname+"'>"+"</td>");
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
   <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div> </body>
</html>