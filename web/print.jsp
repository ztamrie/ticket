<%-- 
    Document   : print
    Created on : Mar 28, 2016, 5:40:34 PM
    Author     : Tigist
--%>

<%@page import="java.io.FileWriter"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  <%
          String name = request.getParameter("TEXT1");
          String text = request.getParameter("TEXTAREA1");
         
          
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String sql="select * from passenger";
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
             String file = application.getRealPath("/") + "test.txt";
          FileWriter filewriter = new FileWriter(file, true);
	   filewriter.write(fname);
	   filewriter.write(lname);
	   filewriter.write(id);
	   filewriter.write(account);	
	  filewriter.write(age);
	   filewriter.write(email);	
	   filewriter.write(phone);
				//echo"<td><font color='black'>". $test['photo']. "</font></td>";
	          filewriter.close();

	out.print("</tr>");
     
            }
      
      }
      catch(SQLException e){
      out.println(e);
      }
        %>    </body>
</html>
