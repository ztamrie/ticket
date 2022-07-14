<%-- 
    Document   : delete_passenger
    Created on : 16-Feb-2016, 09:49:09
    Author     : tigist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
Connection con=null;
ResultSet rs=null;
boolean r=false;
PreparedStatement pst=null; 
String idNo=request.getParameter("id"); 

try{ 
   
          Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket","root","");
          Statement stmt;
       stmt= con.createStatement();
    
            String sql= "delete from passenger where Id='"+idNo+"'";
            pst=con.prepareStatement(sql);
            pst.execute();
    
     
out.println("Data is successfully deleted!");       
//System.out.println("rows affected by insert "+st.executeUpdate(i)); 
} 
catch(Exception e){ 
System.out.print(e); 
e.printStackTrace(); 
out.println("could not insert data"+e);

}
%>    </body>
</html>
