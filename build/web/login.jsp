<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : login
    Created on : 09-Feb-2016, 21:38:22
    Author     : tigist
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::.user login::.</title>
      <link href="images/2.jpg" rel="icon" type="image/jpg" />
   <link href="style.css" rel="stylesheet" type="text/css">
        <script>
function validateForm()
{
    if(document.frm.uname.value=="")
    {
      var user="* User Name Must Not Empty";
      document.getElementById("user").innerHTML = user;

      document.frm.uname.focus();
      return false;
    }
    else if(document.frm.pass.value=="")
    {
      var pass="* Password Must Not Empty";
      document.getElementById("pass").innerHTML = pass;
      document.frm.pass.focus();
      return false;
    }
 
}
</script>
    </head>
    <body>
        
<div id="wrapper">
	 <div id="header">
	</div>
	<div id="menu">
		<ul>
                    <li><a href="index.jsp">Home</a></li>
		<li> <a href="#">ticket</a>
                <ul>
                 <li><a href="extend.jsp">extend ticket</a></li>
                 <li><a href="new_ticket.jsp">new ticket</a></li>
                <li><a href="cancel_ticket.jsp">cancel ticket</a></li>
                </ul>
				</li>
			
		   <li><a href="about.jsp">about</a></li>
			<li><a href="contact.jsp">contact us</a></li>
			
		<li><a href="login.jsp">login</a> </li>
	    <li> <a href="help.jsp">help</a> </li>
			<li><a href="logout.jsp">Log Out</a></li>
		</ul>
	</div>
	<div id="content">
		<div id="left">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>
 
  <a href="index.jsp" style="text-decoration:none">home</a><br>
      <a href="about.jsp" style="text-decoration:none">about</a><br>
      <a href="contact.jsp" style="text-decoration:none">contact us</a> <br>
      <a href="login.jsp" style="text-decoration:none">login</a> <br>
      <a href="help.jsp" style="text-decoration:none">help</a> <br>
      <a href="new_ticket.jsp" style="text-decoration:none">register</a> <br>
      <a href="print.jsp" style="text-decoration:none">print</a> <br>
      <a href="www/index.html" style="text-decoration:none">take picture</a> <br>
  </label>
          </div>
	  </div>
		<div id="right">
			<p>
			

                        <form method="post" action="login.jsp" name="frm" onSubmit="return validateForm()" style="background-image:url( images/righth.jpg);border-radius:10px 10px 10px 10px"> 
                            <h3 style="background-color:lightseagreen;alignment-adjust: central;border-radius:10px 10px 10px 10px">login</h3>
	
                            <table>
                                <tr><td>Username</td><td><input type="text" name="uname"/></td></tr>
                                <tr><td>Password</td><td><input type="password" name="pass" /></td></tr>
                                 <tr><td><input type="submit" name="submit" value="Login" /></td>
                                    <td><input type="reset" name="clear" value="reset"></td></tr>
                                        <tr><td>Login Status</td><td>
                                                <%
                                                String uname=request.getParameter("uname");
                                                String password=request.getParameter("pass");
                                                String type;
                                                String driverName="com.mysql.jdbc.Driver";
                                                String url="jdbc:mysql://localhost:3306/ticket";
                                                String user="root";
                                                String dbpasw="";
                                                Class.forName(driverName);
                                               Connection con=DriverManager.getConnection(url, user, dbpasw);			
                                                try{
                                                   
                                                    PreparedStatement log=con.prepareStatement("SELECT * FROM `account` WHERE userName='"+uname+"' and password='"+password+"'");
                                                  ResultSet rs=log.executeQuery();
                                                    while(rs.next()){
                                                       
                                                    if(rs.getString(3).equals("admin")){
                                                    session.setAttribute("uname", rs.getString(1));
                                                     response.sendRedirect("admin.jsp");}
                                                    else if(rs.getString(3).equals("seller")){
                                                    session.setAttribute("seller",rs.getString(1));
                                                    response.sendRedirect("seller/home.jsp");}
                                                    else if(rs.getString(3).equals("attendant")){
                                                    session.setAttribute("ustype", rs.getString(3));
                                                    response.sendRedirect("attendant/home.jsp");
                                                    }
                                                    else if(rs.getString(3).equals("driver")){
                                                    session.setAttribute("driver", rs.getString(3));
                                                    response.sendRedirect("driverStatus.jsp");}
                                                    else
                                                    {
                                               out.println("the password or username you enter is incorrect");}}
                                                }
                                             catch(Exception e){out.println(e);}%>
                                                
                                            </td></tr></table>
	
        </form>
	  </div>
            <img src="images/kkk.gif">
	</div>
 
</div>
   <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div>  </body>
</html>
