<%-- 
    Document   : schedule_r
    Created on : 25-Feb-2016, 15:53:49
    Author     : tigist
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
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
Connection con=null;
ResultSet rs=null;
PreparedStatement pst=null;    
       String date=request.getParameter("date");
       String tripCity=request.getParameter("tripCity");
       String tripId=request.getParameter("tripId");
       String driverId=request.getParameter("driver");
       String plateNumber=request.getParameter("bus");
       String id=request.getParameter("id");
       String exit=request.getParameter("exit");
       String enterance=request.getParameter("entrance");
        try{ 
   
          Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket","root","");
          Statement stmt;
          String sq="select * from schedule";
          PreparedStatement ps=con.prepareStatement(sq);
          ResultSet r=ps.executeQuery();
          while(r.next()){
            String s=r.getString(1);
             if(s.equals(date)||Integer.parseInt(driverId)==r.getInt(7)||Integer.parseInt(tripId)==r.getInt(6)||Integer.parseInt(driverId)==r.getInt(2)){
                 out.println("the day u want to echedule is scheduled past");
               
             }
             else{
             stmt= con.createStatement();
            String sql= "insert into schedule(Date,plateNumber,exitTime,enteranceTime,Id,tripId,driverId)"
                    + " values('"+date+"','"+plateNumber+"','"+exit+"','"+enterance+"','"+id+"','"+tripId+"','"+driverId+"')";
            pst=con.prepareStatement(sql);
            pst.execute();     
out.println("<script language=javascript>alert('Data is successfully inserted!');</script>");
  
out.println("</script>");
break;          }      }
//response.sendRedirect("new_ticket.jsp");

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
