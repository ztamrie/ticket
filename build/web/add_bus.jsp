<% if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")) 
      {
         out.println("<script>alert('please first login');</script>"); 
          response.sendRedirect("login.jsp");
      }
%><%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String color=request.getParameter("color");
            String type=request.getParameter("type");
            String plate=request.getParameter("plate");
            String side=request.getParameter("side");
            String seat=request.getParameter("seat");
            %>
            <%
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String sql="";
      try{
      Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket","root","");
          Statement stmt;
       stmt= con.createStatement();
           sql="insert into bus(busColor,busType,plateNumber,sideNumber,numberOfSeat) values('"+color+"','"+type+"','"+plate+"','"+side+"','"+seat+"')";
            ps=con.prepareStatement(sql);
            ps.execute();
            out.println("Sucsussfully add a bus");
      }
      catch(SQLException e){
      out.println(e);
      }
      
      
            %>
    </body>
</html>
