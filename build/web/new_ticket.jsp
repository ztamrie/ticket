                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              <%-- 
    Document   : new_ticket
    Created on : 11-Feb-2016, 08:01:47
    Author     : tigist
--%>
<%@page import="java.util.regex.*" %>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
 <%
        String nameError="";%>
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
        <link href="images/2.jpg" rel="icon" type="image/jpg" />
 <title>new ticket registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
               <script>
       function validateForm()
{
    var check_name = /^[A-Za-z]{20,40}$/;
    var check_id = /^[0-9]{5,10}$/;
    var check_age= /^[1-9][0-9]$/;

    var name =document.frm.fname;
     if (!ck_name.test(name)) {
  aler("You valid Name .");
  document.frm.fname.focus();
 }
 if(!check_name.test(document.frm.fname)){
     alert("name should be only letter!");
 }
 if(!check_name.test(document.frm.lname)){
     alert("name should be only letter!");
 }
 if(!check_name.test(document.frm.fname)){
     alert("name should be only letter!");
 }
  if(!check_id.test(document.frm.id)){
     alert("id should be Integer!");
 }
   if(!check_age.test(document.frm.age)){
     alert("age must be 2 digit Integer!");
 }
   var x = document.forms["frm"]["email"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
    }
    if(document.frm.fname.value==="")
    {
     var fname="* first name does not ";
      document.frm.fname.focus();
      return false;
    }
    else if(document.frm.lname.value==="")
    {
      alert("Father name should not be empty!");
      document.frm.lname.focus();
      return false;
    }
    else if(document.frm.age.value==="")
    {
      alert("age should not be empty!");
      document.frm.age.focus();
      return false;
    }
    else if(document.frm.id.value=="")
    {
      alert("id should not be empty!");
      document.frm.id.focus();
      return false;
    }
    else if(document.frm.photo.value=="")
    {
      alert("photo should not be empty!");
      document.frm.photo.focus();
      return false;
    }
    else if(document.frm.phone.value=="")
    {
      alert("phone should not be empty!");
      document.frm.phone.focus();
      return false;
    }
    if(document.frm.age.value<18){
var age="name must be greater than 18";
age=document.getElementById("age").innerHTML=age;      
document.frm.age.focus();
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
	          <li><a href="index.jsp">Home</a></li>
                   <li><a href="extend.jsp">Extend ticket</a></li>
                   <li><a href="cancel_ticket.jsp">Cancel ticket</a></li>
		   <li><a href="about.jsp">About</a></li>
		   <li><a href="contact.jsp">Contact us</a></li>
                   <li> <a href="help.jsp">Help</a> </li>
		</ul>
	</div>
	<div id="content">
            <div id="left" style="width:360px">
		  <div class="post">
				<h2>online ticket reservation system in bahir dar city</h2>
                                <p style="color:lightblue">   The online system is an easy-to-use self-service system which enables the customer buys bus ticket online and pays the bus ticket through their account. Customers can register as a member if they want before they buy bus ticket. </p>
  <label>
 
  </label>
          </div>
	  </div>
            <div id="right" style="width:420px">
			<FORM METHOD="POST" ACTION="new_ticket.jsp" name="frm" onsubmit="return validateForm();">
                            <b>Personal Information</b>
    <table><tr><td>First Name:</td><td><INPUT NAME="fname" TYPE="TEXT" SIZE="15" MAXLENGTH="20" id="fname" value="zelalem"></td><td style="color:red"><script>var fnameErr=document.frm.fname.value();
                if(fnameErr.search(/\d/) != -1)
                        alert("the name contains invalid character");</script></td></tr>
    <tr><td>Last Name: </td><td><INPUT NAME="lname" TYPE="TEXT" SIZE="15" MAXLENGTH="20" pattern="[a-zA-Z]+"></td></tr>
    <tr><td>Age: </td><td><INPUT NAME="age" TYPE="text" SIZE="2" MAXLENGTH="3" pattern="[1-9]{2}"></td></tr>
    <tr><td> Phone Number:</td><td><INPUT NAME="phone" TYPE="TEXT" SIZE="10" pattern="[0-9]{10}"></td></tr>
    <tr><td>Account: </td><td> <INPUT NAME="account" type="text" SIZE="10" pattern="[0-9]+"></td></tr>
    <tr><td>Id Number:</td><td><INPUT NAME="id" type="text" SIZE="10" pattern="[0-9a-zA-Z]+"></td></tr>
    <tr><td>Email: </td><td> <INPUT NAME="email" TYPE="email" SIZE="15"></td></tr>
    <tr><td>Photo </td><td> <INPUT NAME="photo" TYPE="file" ></td></tr>
    <tr><td><INPUT TYPE="SUBMIT" Name="Save" value="Register"> </td><td><INPUT TYPE="RESET" Name="Reset"></td></tr></span>
<tr style="background-color:darkorange"><td>Registration Status</td><td><%
Connection con=null;
ResultSet rs=null;
PreparedStatement pst=null;
String name=request.getParameter("fname");
//if(Pattern.matches("[a-zA-Z][a-zA-Z][a-zA-Z]",name));
//out.println("<script>alert('the name must be only letter!');</script>");
String fatherName=request.getParameter("lname"); 
String idNo=request.getParameter("id"); 
String age=request.getParameter("age"); 
String phone=request.getParameter("phone"); 
String accountNo=request.getParameter("account"); 
String emailId=request.getParameter("email"); 
String f=request.getParameter("photo");
String photo=request.getRealPath(f);
try{ 
        f="images/".concat(f);
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
pst.setString(8,f);

int s = pst.executeUpdate();

if(s>0) {

%>

<b><font color="Blue">

<% out.println("Sucesfully Registerd!"); %>
 <%session.setAttribute("passengerId", idNo);%>


</font></b>

<%

}

else {

out.println("unsucessfull to upload image.");

}

     
}catch(Exception ex){

out.println("<font color='red'>"+ex+"</font>");

}
  
            %> </td></table> 

</FORM>         <a href="reserve.jsp">reserve</a>

	  </div>
	</div>
  
</div>
  <div id="footer">
	  <p class="copyright">Copyright &copy; 2016</p>
	</div>  </body>
</html>
                                                                                                                      