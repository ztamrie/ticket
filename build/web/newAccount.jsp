<%-- 
    Document   : newAccount
    Created on : Mar 31, 2016, 4:36:26 PM
    Author     : Tigist
--%>
<%
     if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")) 
      {
         out.println("<script>alert('please first login');</script>"); 
          response.sendRedirect("login.jsp");
      }
     %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="images/2.jpg" rel="icon" type="image/jpg" />
 <title>::.new account registration::.</title>
                <link href="style.css" rel="stylesheet" type="text/css" media="screen" />

    </head>
    <body>
         <div id="wrapper">
	 <div id="header">
             
	 	</div>
	<div id="menu">
		<ul>
                <li><a href="index.jsp">Home</a></li>
		<li><a href="extend.jsp">Extend ticket</a></li>
                <li><a href="new_ticket.jsp">New ticket</a></li>
                <li><a href="cancel_ticket.jsp">Cancel ticket</a></li>
                <li> <a href="amharic/index.jsp"><img src="images/amharic.PNG" alt="amharic" /></a></li>
		<li><a href="login.jsp">Login</a> </li>
	        <li> <a href="help.jsp">Help</a> </li>
		</ul>
	</div>
	<div id="content">
		<div id="left">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>
      <a href="about.jsp" style="text-decoration:none">About</a><br>
      <a href="contact.jsp" style="text-decoration:none">Contact us</a> <br>
	  <a href="new_ticket.jsp" style="text-decoration:none">Register</a> <br>
	  <a href="print.jsp" style="text-decoration:none">Print</a> <br>
	  <a href="www/index.html" style="text-decoration:none">Take picture</a> <br>
	   <a href="galary.html" style="text-decoration:none">galary</a> <br> 
	  </div>
	  </div>
            
	  <div id="right">
		  <div class="post">
                  <div style="background-color: #D7D7BD; border:1px;width: 300px">
                      <form action="newAccount.jsp" method="post">
                          <table>
                              <tr><td>user name</td><td><input type="text" name="uname"></td></tr>
                              <tr><td>password</td><td><input type="password" name="pass"></td></tr>
                              <tr><td>re enter password</td><td><input type="password" name="rpass"></td></tr>

                              <tr><td>user type</td><td><select name="userType">
                                          <option value="admin">admin</option>
                                       <option value="seller">seller</option>
                                       <option value="attendant">attendant</option>
                                       <option value="driver">driver</option></select></td></tr>
                              <tr><td><input type="submit" value="Create"></td><td><input type="Reset"></td></tr>
                              <tr><td>Account Status</td><td><%
Connection con=null;
ResultSet rs=null;
PreparedStatement pst=null;
String uname=request.getParameter("uname"); 
String pass=request.getParameter("pass"); 
String rpass=request.getParameter("rpass"); 
String userType=request.getParameter("userType"); 

try{ 
   
          Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket","root","");
          PreparedStatement acc=con.prepareStatement("select * from account");
          ResultSet accr=acc.executeQuery();
          while(accr.next()){
              if(!accr.equals(userType)){
          if(pass.equals(rpass)){
pst=con.prepareStatement("insert into account(userName,password,userType)"+"values(?,?,?)");
pst.setString(1,uname);
pst.setString(2,pass);
pst.setString(3,userType);
int s = pst.executeUpdate();
if(s>0) {

%>

<b><font color="Blue">

<% out.println("Account Created successfully !"); %>

</font></b>

<%

}

else {

out.println("unsucessfull to upload image.");

}



}}
        }}catch(Exception ex){



}
  
            %></td></tr></table>
                      </form>
                        
    </div>
        </div>
                  
                  </div>
	  </div>

  
</div>
     <div id="footer">
      
	  <p class="copyright">Copyright &copy; 2016</p>
	</div> 
   
    </body>
</html>
