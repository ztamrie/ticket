<%-- 
    Document   : time
    Created on : May 11, 2016, 9:31:46 PM
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
            String sql="select * from schedule";
            int decrease=0,increase=0,admin=0,pass=0;        
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sql);
       rs=ps.executeQuery();
       while(rs.next()){
Date cur=new Date();
long h=cur.getTime();
Date dNow = new Date( rs.getString(8));
SimpleDateFormat ft =
new SimpleDateFormat ("dd/MM/yyyy hh:mm:ss ");
long d=dNow.getTime();
out.println(d-h);
out.println("<br>"+d);
out.print( "<h2 align=\"center\">" + ft.format(dNow) + "</h2>");

      }}
      catch(Exception e){
      out.println(e);
      }
%>
</    </body>
</html>
