<%-- 
    Document   : new_ticket
    Created on : 11-Feb-2016, 08:01:47
    Author     : tigist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            input.submit{
               background-image: url(seat.PNG);
                height: 82px;
                width: 82px;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>new ticket registration</title>
        <link href="images/2.jpg" rel="icon" type="image/jpg" />
 <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
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
 
 
   <FORM METHOD="POST" ACTION="payment.jsp" name="frm" onsubmit="return validateForm();">
       <input type="text" name="Id" value="enter your id to select seat" /><br>
            <input type="submit" name="s1" value="1" class="submit"><input type="submit" name="s1" value="2" class="submit">
            <input type="submit" name="s1" value="3" class="submit"><input type="submit" name="s1" value="4" class="submit">
            <input type="submit" name="s1" value="5" class="submit"><input type="submit" name="s1" value="6" class="submit">
            <input type="submit" name="s1" value="7" class="submit"><input type="submit" name="s1" value="8" class="submit">
              <input type="submit" name="s1" value="9" class="submit"><input type="submit" name="s1" value="10" class="submit">     </br>            
            <input type="submit" name="s1" value="11" class="submit"><input type="submit" name="s1" value="12" class="submit">
            <input type="submit" name="s1" value="13" class="submit"><input type="submit" name="s1" value="14" class="submit">
            <input type="submit" name="s1" value="15" class="submit"><input type="submit" name="s1" value="16" class="submit">
            <input type="submit" name="s1" value="17" class="submit"><input type="submit" name="s1" value="18" class="submit">
            <input type="submit" name="s1" value="19" class="submit"><input type="submit" name="s1" value="20" class="submit">
            <table><tr style="background-color:wheat"><td>Selection Status</td> <td>
                <%
            Connection con=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String pass=request.getParameter("Id");
           try{ 
               Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
              String sql="SELECT * FROM `ticket`";
      PreparedStatement pas=con.prepareStatement(sql);
      ResultSet rs=pas.executeQuery();
      while(rs.next()){
          out.println(rs.getString(3));
      if(pass.equals(rs.getString(3))&&rs.getString(6).equals(null)){

      PreparedStatement transferToAdmin = con.prepareStatement("UPDATE ticket SET seatNumber = '" +request.getParameter("s1")+  "'WHERE passengerId = '" +pass+ "'");
                    transferToAdmin.executeUpdate();
              out.println("<font color='green'> seat selected acuratly!</font>");
      }
     }}
           
           catch(Exception e){
           out.println("<font color='red'>the seat was reserved first</font>"+e);}
           
            
           %> </td></tr></table>       </FORM> 
  </label>
          </div>
	  </div>
		<div id="right">
			<FORM METHOD="POST" ACTION="payment_r.jsp" name="frm" onsubmit="return validateForm();">
<fieldset style="background-color:#D7D7BD"><legend>pay here for a trip</legend>
    Passen Account: <input type="text" name="account" value="enter your account"></br>
    Passen ID: <input type="text" name="id" value="engter your id"></br>
    Trip Id Number:<input type="text" name="trip"></br>
    <input type="submit" value="PAY"><input type="Reset" value="Reset">
</fieldset>
</FORM> 
	  </div>
	</div>
  
</div>
   <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div> </body>
</html>
  