
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ticket cancellation</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
                <link href="../images/2.jpg" rel="iccon" type="image/jpg" media="screen" />

        <script>
           function validateForm()
{
    if(document.frm.id.value=="")
    {
      alert("Id should not be empty!");
      document.frm.id.focus();
      return false;
    }
    
}
            }
        </script>
    </head>
    <body>
        <div id="wrapper" style="height: 540px">
	 <div id="header">
	</div>
	<div id="menu">
		<ul>
                <li><a href="index.jsp">ዋናው መግቢያ</a></li>
                <li><a href="new_ticket.jsp">አዲስ ትኬት</a></li>
                <li><a href="cancel_ticket.jsp">ትኬት ለማቋረጥ</a></li>
                <li> <a href="amharic/index.jsp"><img src="images/amharic.PNG" alt="amharic" /></a></li>
		<li><a href="login.jsp">ግባ</a> </li>
	        <li> <a href="help.jsp">እርዳታ</a> </li>
		</ul>
	</div>
	<div id="content">
		<div id="left">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>
 
       <a href="about.jsp" style="text-decoration:none">ስለኛ</a><br>
      <a href="contact.jsp" style="text-decoration:none">አግኙን</a> <br>
	  <a href="new_ticket.jsp" style="text-decoration:none">ምዝገባ</a> <br>
	  <a href="print.jsp" style="text-decoration:none">ፕሪንት</a> <br>
	  <a href="www/index.html" style="text-decoration:none">ምስል ውሰድ</a> <br>
  </label>
          </div>
	  </div>
		<div id="right">
			<p>
                        <form method="post" action="cancel_ticket.jsp" name="frm" onsubmit="return validateForm();">
                           የተሳፋሪውን መታወቂያ ያስገቡ<input type="text" name="id" MAXLENGTH="2"><br>
                            የትኬት ቁጥር አስገባ:<input type="text" name="tickcetNumber" MAXLENGTH="2"><br>
                            <input type="submit" value="ሰርዝ">
                        </form>	  </div>
               
	</div>
  
</div>

<div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div>
    </body>
</html>
      <%
        String passId=request.getParameter("id");
        String ticket=request.getParameter("ticketNumber");
        Connection con=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            try{ Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      String reserve="insert into Cancel(passengerId,ticketNo) values('"+passId+"',ticket)";
      PreparedStatement ps=con.prepareStatement(reserve);
      ps.execute();
      out.println("በትክክለ ጥያቄወትን ልከዋል");
              
              
      
            }
            catch(Exception e){
            out.println(e);
            }
        %>