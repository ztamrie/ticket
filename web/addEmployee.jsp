<%-- 
    Document   : addEmployee
    Created on : May 10, 2016, 3:04:30 AM
    Author     : Tigist
--%>
<%
     if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")) 
      {
         out.println("<script>alert('please first login');</script>"); 
          response.sendRedirect("login.jsp");
      }
%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
             function validate(){
var check_color = /^[a-zA-Z]{3,20}$/;
var fname = document.frm.fname.value;
var type = document.frm.type.value;
var plate=document.frm.plate.value;
var check_plate=/^[0-9]{3,10}/
var check_age=/^[1-9][0-9]/

 
 if (!check_color.test(fname)) {
 alert("Name must be letter bad character exists!")
 }
 if (!check_color.test(document.frm.lname.value)) {
 alert("Name must be letter bad character exists!")
 }
 
  if (!check_age.test(document.frm.age.value)) {
 alert("Age must be 2 digit integer bad character exists!")
 }
 
  if (!check_color.test(type)) {
 alert("Type must be letter bad character exists!")
 }
  if (!check_plate.test(plate)) {
 alert("Plate must be integer bad character exists!")
 }
 if (!check_plate.test(document.frm.side.value)) {
 alert("side Number must be integer bad character exists!")
 }
  if (!check_plate.test(document.frm.seat.value)) {
 alert("Seat Number must be integer bad character exists!")
 }
}
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::.adding employee::.</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="images/2.jpg" rel="icon" type="image/jpg" />
 </head>
    <body>
      <div id="wrapper">
	 <div id="header">
	</div>
	<div id="menu">
		<ul>
<li> <a href="admin.jsp">Home</a></li>
 <li> <a href="deletePassenger.jsp">Delete passenger</a> </li>
  <li><a href="display.jsp">View passenger</a></li>
 <li> <a href="logout.jsp">Logout</a></li>
 <li> <a href="updatePassenger.jsp">Update passenger</a></li>
		</ul>
	</div>
	<div id="content">
		<div id="left">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>
 
      <a href="index.jsp" style="text-decoration:none">Home</a><br>
	  <a href="deletePassenger.jsp" style="text-decoration:none">Delete passenger</a> <br>
	  <a href="display.jsp" style="text-decoration:none">View passenger</a> <br>
	  <a href="addBus.jsp" style="text-decoration:none">Add bus</a> <br>
  </label>
          </div>
	  </div>
		<div id="right">
                    <div style="background-color: #D7D7BD; border: 3px; ">
                        <form action="addEmployee.jsp" method="post" name="frm" onsubmit="validate();">
                        <fieldset>
                            <legend> personal information</legend>
                            <table style="border:1">
                                <tr><td>First Name</td> <td><input type="text" name="fname" ></td></tr>
                                <tr><td>Last Name</td> <td><input type="text" name="lname" ></td></tr>
                                <tr><td>Age</td> <td><input type="text" name="age" ></td></tr>
                                <tr><td>sex</td> <td><input type="text" name="sex" ></td></tr>
                                <tr><td>Email</td> <td><input type="email" name="emai"></td></tr>
                                <tr><td>Phone</td> <td><input type="text" name="phone" ></td></tr>
                                <tr><td>Job</td> <td><input type="text" name="job"></td></tr>
                                <tr style="background-color:whitesmoke"><td>Registration Status</td><td>
                                        <%
            String phone=request.getParameter("phone");
            String fname=request.getParameter("fname");
            String lname=request.getParameter("lname");
            String age=request.getParameter("age");
            String sex=request.getParameter("sex");
            String job=request.getParameter("job");
            String email=request.getParameter("email");

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
           sql="insert into employee(fName,lName,sex,age,email,phone,job) values('"+fname+"','"+lname+"','"+sex+"','"+age+"','"+email+"','"+phone+"','"+job+"')";
            ps=con.prepareStatement(sql);
            ps.execute();
            out.println("<font color='green'>Sucsussfully add an Employee</font>");
      }
      catch(SQLException e){
      out.println("<font color='red'>"+e+"</font>");
      }
      %>
                                    </td></tr>
                            </table>
                        <input type="submit" value="Add">
                        <input type="reset" value="Reset">
                        </fieldset>
                    </form>   
                    </div>
			
	  </div>
	</div>
  
</div>

  <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div>  </body>
</html>
