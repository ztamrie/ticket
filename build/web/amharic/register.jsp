<%-- 
    Document   : register
    Created on : 14-Feb-2016, 07:51:40
    Author     : tigist
--%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.swing.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
<%
Connection con=null;
ResultSet rs=null;
PreparedStatement pst=null;
String name=request.getParameter("fname"); 
String fatherName=request.getParameter("lname"); 
String idNo=request.getParameter("id"); 
String age=request.getParameter("age"); 
String phone=request.getParameter("phone"); 
String accountNo=request.getParameter("account"); 
String emailId=request.getParameter("email"); 
String photo=request.getParameter("photo");
/*FileInputStream fis=new FileInputStream(photo); 
byte[] b= new byte[fis.available()+1]; 
fis.read(b); */
try{ 
   
          Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket","root","");
          Statement stmt;
       stmt= con.createStatement();
            String sql= "insert into passenger(fname,lname,Id,age,Account,email,phone)"
                    + " values('"+name+"','"+fatherName+"','"+idNo+"','"+age+"','"+accountNo+"','"+emailId+"','"+phone+"')";
            pst=con.prepareStatement(sql);
            pst.execute();     
out.println("<script language=javascript>alert('Data is successfully inserted!');</script>");
  
out.println("</script>");
       Thread.sleep(5000); 
response.sendRedirect("new_ticket.jsp");

//System.out.println("rows affected by insert "+st.executeUpdate(i)); 
} 
catch(Exception e){ 
System.out.print(e); 
e.printStackTrace(); 
out.println("<script language=javascript>alert('could not insert data')</script>"+e);
//response.sendRedirect("new_ticket.jsp");

}
  
            %>
    </body>
</html>
