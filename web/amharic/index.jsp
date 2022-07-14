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
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> ::.ዋና ገጽ::.</title>
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
	        <li> <a href="../help.jsp">ርዳታ</a> </li>
		</ul>
	</div>
	<div id="content">
		<div id="left">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <%
Integer hitsCount =
(Integer)application.getAttribute("hitCounter");
if( hitsCount ==null || hitsCount == 0 ){
hitsCount = 1;
}else{
/* return visit */
out.println("Welcome back to my website!");
hitsCount += 1;
}
application.setAttribute("hitCounter", hitsCount);
%>
<center>
<p>Total number of visits: <%= hitsCount%></p>
</center><label>
      <a href="about.jsp" style="text-decoration:none">ስለ እኛ</a><br>
      <a href="contact.jsp" style="text-decoration:none">ያግኙን</a> <br>
	  <a href="new_ticket.jsp" style="text-decoration:none">ምዝገባ</a> <br>
	  <a href="../printT.jsp" style="text-decoration:none">ፕሪንት</a> <br>

           <img id="image_rotate"src="images/1.PNG" width="300" height="300" />

	  </div>
	  </div>
            
	  <div id="right">
		  <div class="post">
                  <div style="background-color: #D7D7BD; border:1px;width: 300px">

                      <marquee> <img  src="images/3.jpg" /></marquee>
                        
    </div>
<tr><td><a href="view_information.jsp">መሪጃ እይ</a>

        </div>
                  
                  </div>
	  </div>

  
</div>
      </div>
    <div id="footer">
      
	  <p class="copyright">Copyright &copy; 2016</p>
	</div></body>
</html>
