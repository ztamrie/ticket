<%-- 
    Document   : extend_r
    Created on : 29-Feb-2016, 17:07:32
    Author     : tigist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 <%
            String date=request.getParameter("date");
            String id=request.getParameter("id");
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);			
                  try{
                     String sql="select * from reservation";
                     ps=con.prepareStatement(sql);
                     rs=ps.executeQuery();
                     while(rs.next()){
                     if(rs.getString(5)==id)
                         id=rs.getString(5);
                     }
                    PreparedStatement transferToAdmin = con.prepareStatement("UPDATE reservation SET date = '" + date+  "'WHERE passengerId = '" + id + "'");
                    transferToAdmin.executeUpdate();
                    out.println("<script>alert('sucsefully extend');</script>");
                    } 
                  catch(Exception ex){
                  out.println("unable to transfer"+ex);
                  }
            
      
      
      %>    </body>
</html>
