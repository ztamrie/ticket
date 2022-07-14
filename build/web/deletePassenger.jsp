
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::. delete passenger page::.</title>
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
<li> <a href="admin.jsp">Home</a></li>
  <li><a href="display.jsp">View passenger</a></li>
 <li> <a href="addBus.jsp">Add bus</a></li>
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
			<p>
                        <form method="post" action="deletePassenger.jsp" name="frm" onsubmit="return validateForm();">
                            <p>Enter Passenger Id<input type="text" name="id">
                            </p>
                            <input type="submit" value="Delete">
                        </form>	  </div>
	</div>
 
</div>

 <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div>
    </body>
</html>
<%
Connection con=null;
ResultSet rs=null;
boolean r=false;
PreparedStatement pst=null; 
String idNo=request.getParameter("id"); 

try{ 
   
          Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket","root","");
          Statement stmt;
       stmt= con.createStatement();
    
            String sql= "delete from passenger where Id='"+idNo+"'";
            pst=con.prepareStatement(sql);
            pst.execute();
    
     
out.println("Data is successfully deleted!");       
//System.out.println("rows affected by insert "+st.executeUpdate(i)); 
} 
catch(Exception e){ 
System.out.print(e); 
e.printStackTrace(); 
out.println("could not insert data"+e);

}
%>