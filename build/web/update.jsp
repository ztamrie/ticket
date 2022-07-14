<%-- 
    Document   : update
    Created on : 25-Feb-2016, 07:38:40
    Author     : tigist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update Page</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        
        
        
        
        <div id="wrapper">
	 <div id="header">
	</div>
	<div id="menu">
		<ul>
		   <li><a href="extend.jsp">extend ticket</a></li>
                   <li><a href="cancel_ticket.jsp">cancel ticket</a></li>
                   <li><a href="admin.jsp">Home</a></li>
		   <li><a href="about.jsp">about</a></li>
		   <li><a href="contact.jsp">contact us</a></li>
                   <li><a href="help.jsp">help</a> </li>
		</ul>
	</div>
	<div id="content">
		<div id="left">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>
 
  <ul>
<li> <a href="index.php">home</a></li>
 <li> <a href="deletePassenger.php">delete passenger</a> </li>
  <li><a href="display.php">view passenger</a></li>
 <li> <a href="addBus.php">add bus</a></li>
  <li><a href="add_user.php">create account</a></li>
 <li> <a href="logout.php">logout</a></li>
 <li> <a href="updatePassenger.php">update passenger</a></li>
		</ul>
  </label>
          </div>
	  </div>
		<div id="right">
			<form action="update.php" method="post">
	<fieldset><legend style="background-color:#CCCCCC">enter the id of a passenger u want to update</legend>
	<p> ID Number<input type="text" name="id" value="478" />
	<P> <span>First Name: <INPUT NAME="fname" TYPE="TEXT" SIZE="15" MAXLENGTH="20"></span>
<P> <span>Last Name: <INPUT NAME="lname" TYPE="TEXT" SIZE="15" MAXLENGTH="20">
<P><span> Age: <INPUT NAME="age" TYPE="text" SIZE="2" MAXLENGTH="3">PhoneNumber: <INPUT NAME="phone" TYPE="TEXT" SIZE="10"></span>
<P><span> Account:  <INPUT NAME="account" type="text" SIZE="10">IdNumber:  <INPUT NAME="id" type="text" SIZE="10"></span>
<span>Email:  <INPUT NAME="email" TYPE="email" SIZE="15"></span>
	<input type="submit" value="Update" />
			<p>
<marquee direction="up">
			In the current time reserving and buying bus ticket in Ethiopia is done manually. This means that ticket will be printed out and distributed for bus station after that if someone wants to buy a ticket he must go to bus station and spend more time for reserving the journey manually. In manual buying and selling case the user loses his time and money.</marquee> </p>
	   </div>
	</div>
  <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div>
</div>
</body>
</html>
