<%-- 
    Document   : updateDriver
    Created on : May 13, 2016, 5:22:13 AM
    Author     : Tigist
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
               String driverId=request.getParameter("driverId");
               String status=request.getParameter("status");
               PreparedStatement update=co.prepareStatement(" SELECT * FROM  `driver`");
               ResultSet upd=update.executeQuery();
               while(upd.next()){
                   if(driverId.equals(upd.getString(3))){
              PreparedStatement driverUpd = co.prepareStatement("UPDATE driver SET status = '" +status+  "'WHERE Id = '" +driverId+ "'");
                    driverUpd.executeUpdate(); 
              PreparedStatement delete=co.prepareStatement("delete from driverstatus where driverId ="+driverId);
               delete.execute();
               out.println("<script>alert(updated)</script>");
      }}}
      catch(Exception e){
    out.println(e);
}%>
              
    </body>
</html>
