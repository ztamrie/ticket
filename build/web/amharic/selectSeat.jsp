<%-- 
    Document   : new_ticket
    Created on : 11-Feb-2016, 08:01:47
    Author     : tigist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>new ticket registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <style>
            input.submit{
                background-image: url(seat.PNG);
                height: 87px;
                width: 87px;
            }
        </style>
               <script>
       function validateForm()
{
    if(document.frm.uname.value=="")
    {
      alert(" Name should not be empty!");
      document.frm.fname.focus();
      return false;
    }
    else if(document.frm.lname.value=="")
    {
      alert("Father name should not be empty!");
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
		        <li> <a href="#">ticket</a>
                <ul>
                 <li><a href="extend.jsp">extend ticket</a></li>
                 <li><a href="new_ticket.jsp">new ticket</a></li>
                <li><a href="cancel_ticket.jsp">cancel ticket</a></li>
                </ul>
				</li>
			<li><a href="index.jsp">Home</a></li>
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
                    <FORM METHOD="POST" ACTION="register.jsp" name="frm" onsubmit="return validateForm();">
                        
           <input type="submit" name="s1" value="1" class="submit"><input type="submit" name="s1" value="2" class="submit">
            <input type="submit" name="s1" value="3" class="submit"><input type="submit" name="s1" value="4" class="submit">
            <input type="submit" name="s1" value="5" class="submit"><input type="submit" name="s1" value="6" class="submit">
            <input type="submit" name="s1" value="7" class="submit"><input type="submit" name="s1" value="8" class="submit">
                     </br>            
            <input type="submit" name="s1" value="9" class="submit"><input type="submit" name="s1" value="10" class="submit">
            <input type="submit" name="s1" value="11" class="submit"><input type="submit" name="s1" value="12" class="submit">
            <input type="submit" name="s1" value="13" class="submit"><input type="submit" name="s1" value="14" class="submit">
            <input type="submit" name="s1" value="15" class="submit"><input type="submit" name="s1" value="16" class="submit">
            
                    </FORM> 
	  </div>
	</div>
  <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div>
</div>
    </body>
</html>
