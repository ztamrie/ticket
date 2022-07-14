<%-- 
    Document   : new_ticket
    Created on : 11-Feb-2016, 08:01:47
    Author     : tigist
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
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
        <title>አዲስ ትኬት ምዝገባባ</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />        <link href="../images/2.jpg" rel="icon" type="image/jpg" />

               <script>
       function validateForm()
{
    if(document.frm.fname.value=="")
    {
     var fname="* first name does not ";
      document.frm.fname.focus();
      return false;
    }
    else if(document.frm.lname.value=="")
    {
      alert("የአባት ስምባዶ አይሆንም!");
      document.frm.lname.focus();
      return false;
    }
    if(document.frm.age.value<18){
var age="name must be greater than 18";
age=document.getElementById("age").innerHTML=age;      
document.frm.age.focus();
      return false;   
    }
   if("[0-9]{2}".test(document.frm.age)=false){
       alert("እድሜ ከሁለት ቁጥር አይበልጥም");
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
	          <ul>
                <li><a href="index.jsp">ዋናው መግቢያ</a></li>
                <li><a href="new_ticket.jsp">አዲስ ትኬት</a></li>
                <li><a href="extend.jsp">ትኬቱን አራዝም</a></li>
                <li><a href="cancel_ticket.jsp">ትኬቱን አቋርጥ</a></li>
                <li><a href="../index.jsp">English</a></li>
		<li><a href="login.jsp">ግባ</a> </li>
	        <li> <a href="help.jsp">ርዳታ</a> </li>
		</ul>
		</ul>
	</div>
	<div id="content">
            <span><div>
                    
<FORM METHOD="POST" ACTION="new_ticket.jsp" name="frm" onsubmit="return validateForm();">
                            <b>Personal Information</b>
        <table><tr><td>ስም:</td><td><INPUT NAME="fname" TYPE="TEXT" SIZE="15" MAXLENGTH="20" id="fname" value=""></td></tr>
          <tr><td>የአባት ስም: </td><td><INPUT NAME="lname" TYPE="TEXT" SIZE="15" MAXLENGTH="20"></td></tr>
          <tr><td>እድሜ </td><td><INPUT NAME="age" TYPE="text" SIZE="2" MAXLENGTH="3"></td></tr>
          <tr><td> የሞባይል ቁጥር</td><td><INPUT NAME="phone" TYPE="TEXT" SIZE="10"></td></tr>
          <tr><td>የባንክ ቁጥር</td><td> <INPUT NAME="account" type="text" SIZE="10"></td></tr>
          <tr><td>የመታወቂያ ቁጥር</td><td><INPUT NAME="id" type="text" SIZE="10" ></td></tr>
          <tr><td>ኢሜል </td><td> <INPUT NAME="email" TYPE="email" SIZE="15"></td></tr>
         
          <tr><td>ምስል </td><td> <INPUT NAME="photo" TYPE="file" ></td></tr>
          <tr><td><input type="submit" name="" value="መዝግብ" </td><td> <INPUT NAME="submit" TYPE="reset" value="ሰርዝ" ></td></tr>

<tr style="background-color:darkorange"><td>የምዝገባ ሁኔታ </td><td><%
Connection con=null;
ResultSet rs=null;
PreparedStatement pst=null;
String uname=request.getParameter("uname"); 
String pass=request.getParameter("pass"); 
String rpass=request.getParameter("rpass"); 
String userType=request.getParameter("userType"); 
String name=request.getParameter("fname"); 
String fatherName=request.getParameter("lname"); 
String idNo=request.getParameter("id"); 
String age=request.getParameter("age"); 
String phone=request.getParameter("phone"); 
String accountNo=request.getParameter("account"); 
String emailId=request.getParameter("email"); 
String photo=request.getRealPath("photo");
out.println(photo);
try{ 
   
          Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket","root","");
          File image=new File("C:/Users/Tigist/Documents/NetBeansProjects/project/web/images/images.jpg");

pst=con.prepareStatement("insert into passenger(fName,lName,Id,Account,phone,email,age,photo)"+"values(?,?,?,?,?,?,?,?)");

pst.setString(1,name);

pst.setString(2,fatherName);
pst.setString(3,idNo);
pst.setString(4,accountNo);
pst.setString(5,phone);
pst.setString(6,emailId);
pst.setString(7,age);
pst.setString(8,photo);

int s = pst.executeUpdate();

if(s>0) {

%>

<b><font color="Blue">

<% out.println("በትክክል ተመዝግበዋል!");
 session.setAttribute("passengerId", idNo);%>

</font></b>

<%

}

else {

out.println("unsucessfull to upload image.");

}

con.close();

pst.close();

}catch(Exception ex){

out.println("<font color='red'>"+ex+"</font>");

}
  
%> </td></tr></table> 

</FORM>         <a href="reserve.jsp">ትኴት መቁረጥ</a>
                </div></span>
	  
	</div>
  
</div>
  <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div>  </body>
</html>
              