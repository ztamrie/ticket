<%-- 
    Document   : new_ticket
    Created on : 11-Feb-2016, 08:01:47
    Author     : tigist
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>::ክፍያ መፈጸሚያ ገጽ</title>
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
		 <li><a href="index.jsp">ዋናው መግቢያ</a></li>
                 <li><a href="extend.jsp">ትኬት አራዝም</a></li>
                 <li><a href="new_ticket.jsp">አዲስ ትኬት</a></li>
                <li><a href="cancel_ticket.jsp">ትኬት አቋርጥ</a></li>                		
		
		<li><a href="login.jsp">ግባ</a> </li>
	         <li> <a href="help.jsp">ርዳታ</a> </li>
		</ul>
	</div>
	<div id="content">
		<div id="left">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
  <label>

 
   <FORM METHOD="POST" ACTION="payment.jsp" name="frm" onsubmit="return validateForm();">
       <input type="text" name="Id" value="እባክዎ መታወቂያ ቁጥርወን አስገብተው ወንር ይምረጡ" /><br>
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
            <table><tr style="background-color:wheat"><td>Selection Status</td> <td><%
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String sql="select * from ticket";
            String pass=request.getParameter("Id");
           try{ Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      PreparedStatement pas=con.prepareStatement(sql);
      ResultSet s=pas.executeQuery();
      while(s.next()){
      if(pass.equals(s.getString(3))){
      PreparedStatement transferToAdmin = con.prepareStatement("UPDATE ticket SET seatNumber = '" +request.getParameter("s1")+  "'WHERE passengerId = '" +pass+ "'");
                    transferToAdmin.executeUpdate();
              out.println("<font color='green'> seat selected acuratly!</font>");
      break;}
      else{
          out.println("passenger does not reserve ticket");break;
      }
      }
      
           }
           catch(Exception e){
           out.println("<font color='red'>the seat was reserved first</font>"+e);}
           
            
           %> </td></tr></table>       </FORM> 
  </label>
          </div>
	  </div>
		<div id="right">
			<FORM METHOD="POST" ACTION="payment_r.jsp" name="frm" onsubmit="return validateForm();">
<fieldset style="background-color:#D7D7BD"><legend>pay here for a trip</legend>
   የተሳፋሪ ባነክ ቁጥር<input type="text" name="account" value="enter your account"></br>
   የተሳፋሪ መታወቂያ ቁጥር<input type="text" name="id" value="engter your id"></br>
   የመንገዱ መለያ ቁጥረ<input type="text" name="trip"></br>
    <input type="submit" value="ክፈል"><input type="Reset" value="ሰርዝ">
</fieldset>
</FORM> 
	  </div>
	</div>
  
</div>
   <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div> </body>
</html>
  