<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
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
        <link href="themes/4/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/4/js-image-slider.js" type="text/javascript"></script>
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
<style>
    tr,td,table{border:1px solid black;border-collapse:collapse}
</style>
        <link href="../style.css" rel="stylesheet" type="text/css" media="screen" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> ::.home page::.</title>
    </head>
    <body>
      <div id="wrapper">
	 <div id="header">
             
	 	</div>
	<div id="menu">
		<ul>
                <li><a href="home.jsp">Home</a></li>      
                <li><a href="schedule.jsp">Schedule</a></li>
                <li><a href="viewSchedule.jsp">View Schedule</a></li>
                <li><a href="view_information.jsp">View Information</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
                <li> <a href="../help.jsp">Help</a> </li>
		</ul>
	</div>
          <div id="content" style="border-radius: 15px 15px 15px 15px;background-color:lightblue">
              <div id="left" style="width:360px">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>
      <a href="#about" style="text-decoration:none;background-color: green;border-radius:8px 8px 8px 8px;width: 200px">About</a><br>
      <a href="contact.jsp" style="text-decoration:none;background-color: yellow;border-radius:8px 8px 8px 8px;width: 200px">Contact us</a> <br>
      <a href="requestPassenger.jsp">Request Passenger</a><br>
      <a href="takeImage.jsp" style="text-decoration:none;background-color: green;border-radius:8px 8px 8px 8px;width: 200px">Take picture</a> <br>
      <a href="galary.html" style="text-decoration:none;background-color: yellow;border-radius:8px 8px 8px 8px;width: 200px">galary</a> <br> 
      <a href="printT.jsp" style="text-decoration:none;background-color: red;border-radius:8px 8px 8px 8px;width: 200px">print</a> <br>  
           <img id="image_rotate"src="images/1.PNG" width="300" height="300" />

	  </div>
                    <script id="about">
                        alert("Ethiopia is one of the largest countries in Africa having a population of above 80 million and a land of distributed cities. As transportation is one of the most common needs for citizens, people use bus as their main type of transportation from places to places.
This bus transportation system starts during Emperor Haile Selassie between cities to city. As that time the Eretria was not independent and there is also a trip up to north Asmara.
Now a day a country cross bus travelling is based on three levels with different associations. These three levels are level I, level II and level III. There are many number of association’s under each level.
The ticket method of the transportation now a day is manual system. When the passenger wants to reserve the ticket he/she goes to the station and asks the thicket seller.
");
                    </script>
	  </div>
            
              <div id="right" style="width:420px">
		  <div class="post">                      
                      <p style="font-family:'Times New Roman', Times, serif;font: lightorange"><img src="../images/teacher.png" width="55" height="50" alt="teacher"/><b>The Bus Attendant Page</p></b>

               <%
String sql="select * from schedule";
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
             out.println("<table border='1' style='border-collapse:collapse'>");
	            out.println("<table><tr><td>plateNumber</td><td>exitTime</td><td>enteranceTime</td><td>Id</td><td>tripId</td><td>driverId</td><td>driverName</td><td>Date</td></tr>");
		while(rt.next()){
            String fname=rt.getString("plateNumber");
            int lname=rt.getInt("exitTime");
            String age=rt.getString("enteranceTime");
            int id=rt.getInt("Id");
            int phone=rt.getInt("tripId");
            int email=rt.getInt("driverId");
              String phon=rt.getString("driverName");
            String emai=rt.getString("Date");
            //Statement st=con.createStatement();
            //st.executeUpdate("insert into account values('hi','hi','hi')");
          out.println("<tr>");	
	  out.println("<td><font color='black'>"+fname+"</font></td>");
	  out.println("<td><font color='black'>"+lname+"</font></td>");
	  out.println("<td><font color='black'>"+id+"</font></td>");
	  out.println("<td><font color='black'>"+age+"</font></td>");
	  out.println("<td><font color='black'>"+email+"</font></td>");	
	  out.println("<td><font color='black'>"+phone+"</font></td>");	
          out.println("<td><font color='black'>"+emai+"</font></td>");	
	  out.println("<td><font color='black'>"+phon+"</font></td>");	
	out.print("</tr>");
     
            }
                        out.println("</table>");
      
      }
      catch(Exception e){
      out.println(e);
      }
      
%>   
     
    
<table border="1">
    <!-- column headers -->
    <tr>
        <c:forEach var="columnName" items="${result.columnNames}">
            <th><c:out value="${columnName}"/></th>
            </c:forEach>
    </tr>
    <!-- column data -->
    <c:forEach var="row" items="${result.rowsByIndex}">
        <tr>
            <c:forEach var="column" items="${row}">
                <td><c:out value="${column}"/></td>
            </c:forEach>
        </tr>
    </c:forEach>
</table></div>
                  
                  </div>
	
	</div>
      </div>
          <p class="copyright">Copyright &copy; 2016</p>

    </body>
</html>
