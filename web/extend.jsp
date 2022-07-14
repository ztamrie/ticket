
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::extend date::.</title>
        <link href="images/2.jpg" rel="icon" type="image/jpg" />
 <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
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
                <li><a href="index.jsp">Home</a></li>
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
 
       <a href="about.jsp" style="text-decoration:none">about</a><br>
      <a href="contact.jsp" style="text-decoration:none">contact us</a> <br>
	  <a href="new_ticket.jsp" style="text-decoration:none">register</a> <br>
	  <a href="print.jsp" style="text-decoration:none">print</a> <br>
	  <a href="www/index.html" style="text-decoration:none">take picture</a> <br>
	   <a href="galary.html" style="text-decoration:none">galary</a> <br>  
  </label>
          </div>
	  </div>
		<div id="right">
			<p>
                        <form method="post" action="extend_r.jsp" name="frm" onsubmit="return validateForm();">
                            Enter Passenger Id:<input type="text" name="id" MAXLENGTH="2"><br>
                            Enter New Date: <%
                                      
              Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String date="select * from schedule";
                            
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
     PreparedStatement tri=con.prepareStatement(date);
     
     ResultSet rst=tri.executeQuery();
%>

<select name="date">
        <%  while(rst.next()){ %>
            <option><%= rst.getString(8)%></option>
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
                            <input type="submit" value="Extend">
                        </form>	  </div>
               
	</div>
  
</div>
                            <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div>


    </body>
</html>
