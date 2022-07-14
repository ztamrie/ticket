<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>payment Page</title>
    </head>
    <body>
        <%
        String passId=request.getParameter("id");
        String ticket=request.getParameter("ticketNumber");
        Connection con=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            try{ Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      String reserve="insert into Cancel(passengerId,ticketNo) values('"+passId+"','"+ticket+"')";
      PreparedStatement ps=con.prepareStatement(reserve);
      ps.execute();
      
            }
            catch(Exception e){
            out.println(e);
            }
        %>
    </body>
</html>
