<%-- 
    Document   : status
    Created on : May 12, 2016, 2:46:04 AM
    Author     : Tigist
--%>

<%@page import="java.sql.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<center>
<h1>Display Current Date & Time</h1>
</center>
<%
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String sql="SELECT * FROM `schedule`";
            int decrease=0,increase=0,admin=0,pass=0;        
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sql);
       rs=ps.executeQuery();  
       while(rs.next()){
Date dNow = new Date(rs.getString(8) );
SimpleDateFormat ft =
new SimpleDateFormat ("E dd.MM.yyyy hh:mm:ss ");
out.print( "<h2 align=\"center\">" + ft.format(dNow) + "</h2>");
 out.println();
       }}
catch(Exception e){
out.println(e);
}%>    </body>
</html>
