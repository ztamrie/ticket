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
        int accountNumber=Integer.parseInt(request.getParameter("account"));
        int tripId=Integer.parseInt(request.getParameter("trip"));
        int passId=Integer.parseInt(request.getParameter("id"));
        String photo=null;
        boolean accountCheck=false;
        Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String sql="select * from bank";
            int decrease=0,increase=0,admin=0,pass=0;        
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sql);
       rs=ps.executeQuery();  
			while(rs.next()){
                    if(accountNumber==rs.getInt("account")&&passId==rs.getInt(3)){
                    try{
                        String trip="select * from trip";
                   PreparedStatement tri=con.prepareStatement(trip);
                 ResultSet rst;
                    rst=tri.executeQuery(); 
                    while(rst.next())
                    {
                        if(tripId==rst.getInt("id")){
                         decrease=rst.getInt("price");
                        }
                    }
                    }
                    catch(Exception e){
                    out.println("we can not access trip"+e);
                    }
                    
                    pass=rs.getInt("amount")-decrease;
                   
                    try{
                        PreparedStatement adminacc=con.prepareStatement("select * from bank");
                        ResultSet bankad=adminacc.executeQuery();while(bankad.next()){
                            if(bankad.getInt(2)==1){
                                admin=bankad.getInt(1)+decrease;
                    PreparedStatement transferToAdmin = con.prepareStatement("UPDATE bank SET amount = '" + admin+  "'WHERE account = '" + 1 + "'");
                    transferToAdmin.executeUpdate();
                    PreparedStatement Admin = con.prepareStatement("UPDATE bank SET amount = '" +pass+  "'WHERE account = '" + accountNumber + "'");
                    Admin.executeUpdate();}}
                    PreparedStatement ticketPrepare=con.prepareStatement("SELECT * FROM reservation");
                    ResultSet ticketResult=ticketPrepare.executeQuery();
                    while(ticketResult.next()){
                   if(passId==ticketResult.getInt(5)){
                      PreparedStatement passPrepare=con.prepareStatement("SELECT * FROM passenger");
                      ResultSet passResult=passPrepare.executeQuery();
                     // if(passId==passResult.getInt(3)){
                      // photo=passResult.getString(9);}
                     Statement stmt;
                     stmt= con.createStatement();
                     int s=12;
                     sql="insert into ticket(plateNumber,passengerId,tripId,date,photo) "
                             + "values('"+ticketResult.getString(3)+"','"+ticketResult.getString(5)+"','"+
                             ticketResult.getString(2)+"','"+ticketResult.getString(6)+"','"+photo+"')";
                     ps=con.prepareStatement(sql);
                     ps.execute();
                     out.println("<b><font color='Blue'>");
                     out.println("Sucsussfully reserve");
                     out.println("</b></font");
                     
                    break;
                    }} }
                  catch(Exception ex){
                  out.println(ex);
                  }
                    }}}
      catch(Exception ex){
                  out.println(ex);
                  }
        %>
    </body>
</html>
