<%-- 
    Document   : index
    Created on : 09-Feb-2016, 11:34:12
    Author     : tigist
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            td,tr{border:1px solid aqua}
        </style>
        <script>
delay = 200;
number = 1;
function animate(){
document.image_rotate.src = number+".jpg";
number++;
if (number > 4)   
number = 1;  
}
</script>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
               <link href="images/2.jpg" rel="icon" type="image/jpg" media="screen" />
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> ::.ticket reservation::.</title>
    </head>
    <body>
      <div id="wrapper">
	 <div id="header">
	 	</div>
	<div id="menu">
		<ul>
               <li><a href="index.jsp">ዋናው መግቢያ</a></li>
                <li><a href="new_ticket.jsp">አዲስ ትኬት</a></li>
                <li><a href="extend.jsp">ትኬቱን አራዝም</a></li>
                <li><a href="cancel_ticket.jsp">ትኬቱን አቋርጥ</a></li>
                <li><a href="../index.jsp">English</a></li>
		<li><a href="login.jsp">ግባ</a> </li>
	        <li> <a href="help.jsp">ርዳታ</a> </li>
		</ul>
	</div>
	<div id="content">
		<div id="left">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>
      <a href="about.jsp" style="text-decoration:none">ስለ እኛ</a><br>
      <a href="contact.jsp" style="text-decoration:none">ያግኙን</a> <br>
	  <a href="new_ticket.jsp" style="text-decoration:none">አዲስ ምዝገባ</a> <br>
	  <a href="print.jsp" style="text-decoration:none">ፕሪንት</a> <br>
           <img id="image_rotate" src="images/1.PNG" width="300" height="300" />

	  </div>
	  </div>
            
	  <div id="right">
		  <div class="post">
                  <h3>        reserve here</h3>     <table style="border-collapse:collapse; border:5px solid green; " align="center" width="100%" bgcolor="#6699CC">
<tr align="center"><td>መድረሻ ከተማ</td><td>የመንገዱ መለያ ቁጥር</td><td>ዋጋ</td><td>የመኪናው አይነት</td><td>ርቀት</td><td>የሚጮርሰው ሰአት</td></tr>
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
      pt=co.prepareStatement(sql);
     
             rt=pt.executeQuery();
			while(rt.next()){
            String fname=rt.getString(2);
            int lname=rt.getInt(1);
            String age=rt.getString("busType");
            int id=rt.getInt("price");
            int phone=rt.getInt("timeSpent");
            int email=rt.getInt("distance");
            //Statement st=con.createStatement();
            //st.executeUpdate("insert into account values('hi','hi','hi')");
          out.println("<tr >");	
	  out.println("<td><font color='aqua'>"+fname+"</font></td>");
	  out.println("<td><font color='black'>"+lname+"</font></td>");
	  out.println("<td><font color='black'>"+id+"</font></td>");
	  out.println("<td><font color='black'>"+age+"</font></td>");
	  out.println("<td><font color='black'>"+email+"</font></td>");	
	  out.println("<td><font color='black'>"+phone+"</font></td>");
				//echo"<td><font color='black'>". $test['photo']. "</font></td>";
	
	out.print("</tr>");
     
            }
                        out.println("</table>");
      
      }
      catch(Exception e){
      out.println(e);
      }
      
      
			%>
               <%
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";%>
                  <div style="border:1px;width: 360px">
 <form METHOD="POST" ACTION="reserve.jsp" >
 <br>ቀን    <%String s="select * from schedule";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
     PreparedStatement t=con.prepareStatement(s);
     
     ResultSet r=t.executeQuery();
%>

<select name="date">
        <%  while(r.next()){ %>
            <option><%= r.getString(1)%></option>
        <% } %>
        </select>
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
<br>የመንገዱ መለያ ቁቴር    <%String trip="select * from trip";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
     PreparedStatement tri=con.prepareStatement(trip);
     
     ResultSet rst=tri.executeQuery();
%>

<select name="tripId">
        <%  while(rst.next()){ %>
            <option><%= rst.getString(1)%></option>
        <% } %>
        </select>
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
<%
  session.getAttribute("passengerId");
%>
<br><input type="submit" value ="ቦታ ያዝ"> 
<input type="reset" value ="ሰርዝ"> 
 </form>


<a href="payment.jsp">ክፍያ ለመፈጸም ይህን ይጫኑ</a>
        </div>
  </div>           
          </div>
        </div>
     <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div>
    </body>
</html>
 <%

            
                        
     // sleep 5 seconds
  String date=null;
  int tripId=0,plateNumber=0,price=0,driverId=1;
  String destinationCity=null;
  String dateSend=request.getParameter("date");
  String PassengerSend=request.getParameter("passengerId");
  String tripSend=request.getParameter("tripId");%>
  
    <%String tri="select * from trip";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
     PreparedStatement tr=con.prepareStatement(tri);
     
     ResultSet rst=tr.executeQuery();
%>

        <%  while(rst.next()){ %>
        <%if(rst.getString(1).equals(tripSend)){
        price=rst.getInt(4);
        destinationCity=rst.getString(2);
        tripId=rst.getInt(1);
}%>        <% } %>
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("can not acsess trip"+e);
        }
%>
<%String su="select * from schedule";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
     PreparedStatement t=con.prepareStatement(su);
     
     ResultSet r=t.executeQuery();
%>

        <%  while(r.next()){ %>
        <%if(r.getString(1).equals(dateSend)){
        plateNumber=r.getInt(2);
        
}%>        <% } %>
       
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("can not acsess trip"+e);
        }
%>
<%
 
  try{
    Statement stmt;
       stmt= con.createStatement();
            String sqli= "insert into reservation(dectinationCity,tripId,plateNumber,price,passengerId,date) values('"+destinationCity+"','"+tripId+"','"+plateNumber+"','"+price+"','"+session.getAttribute("passengerId")+"','"+dateSend+"')";
           PreparedStatement p=con.prepareStatement(sqli);
            p.execute(); 
            out.print("<script>alert('በትክክል ተመዝግበዋል');</script>");
  }
  catch(Exception e){
  out.println("<font color='red'>"+e+"</font>");}
            %> 
           