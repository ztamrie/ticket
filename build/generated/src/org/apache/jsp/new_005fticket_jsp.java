package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.regex.*;
import java.io.InputStream;
import java.io.File;
import java.io.FileInputStream;
import java.sql.*;

public final class new_005fticket_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" ");

        String nameError="";
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("       \r\n");
      out.write("         <style>\r\n");
      out.write("            input.submit{\r\n");
      out.write("               background-image: url(seat.PNG);\r\n");
      out.write("                height: 82px;\r\n");
      out.write("                width: 82px;\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link href=\"images/2.jpg\" rel=\"icon\" type=\"image/jpg\" />\r\n");
      out.write(" <title>new ticket registration</title>\r\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\r\n");
      out.write("               <script>\r\n");
      out.write("       function validateForm()\r\n");
      out.write("{\r\n");
      out.write("    var ck_name = /^[A-Za-z]{3,20}$/;\r\n");
      out.write("    var name =document.frm.fname;\r\n");
      out.write("     if (!ck_name.test(name)) {\r\n");
      out.write("  aler(\"You valid Name .\");\r\n");
      out.write("  document.frm.fname.focus();\r\n");
      out.write(" }\r\n");
      out.write("\r\n");
      out.write("    var x = document.forms[\"frm\"][\"email\"].value;\r\n");
      out.write("    var atpos = x.indexOf(\"@\");\r\n");
      out.write("    var dotpos = x.lastIndexOf(\".\");\r\n");
      out.write("    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {\r\n");
      out.write("        alert(\"Not a valid e-mail address\");\r\n");
      out.write("        return false;\r\n");
      out.write("    }\r\n");
      out.write("    if(document.frm.fname.value==\"\")\r\n");
      out.write("    {\r\n");
      out.write("     var fname=\"* first name does not \";\r\n");
      out.write("      document.frm.fname.focus();\r\n");
      out.write("      return false;\r\n");
      out.write("    }\r\n");
      out.write("    else if(document.frm.lname.value==\"\")\r\n");
      out.write("    {\r\n");
      out.write("      alert(\"Father name should not be empty!\");\r\n");
      out.write("      document.frm.lname.focus();\r\n");
      out.write("      return false;\r\n");
      out.write("    }\r\n");
      out.write("    else if(document.frm.age.value==\"\")\r\n");
      out.write("    {\r\n");
      out.write("      alert(\"age should not be empty!\");\r\n");
      out.write("      document.frm.age.focus();\r\n");
      out.write("      return false;\r\n");
      out.write("    }\r\n");
      out.write("    else if(document.frm.id.value==\"\")\r\n");
      out.write("    {\r\n");
      out.write("      alert(\"id should not be empty!\");\r\n");
      out.write("      document.frm.id.focus();\r\n");
      out.write("      return false;\r\n");
      out.write("    }\r\n");
      out.write("    else if(document.frm.photo.value==\"\")\r\n");
      out.write("    {\r\n");
      out.write("      alert(\"photo should not be empty!\");\r\n");
      out.write("      document.frm.photo.focus();\r\n");
      out.write("      return false;\r\n");
      out.write("    }\r\n");
      out.write("    else if(document.frm.phone.value==\"\")\r\n");
      out.write("    {\r\n");
      out.write("      alert(\"phone should not be empty!\");\r\n");
      out.write("      document.frm.phone.focus();\r\n");
      out.write("      return false;\r\n");
      out.write("    }\r\n");
      out.write("    if(document.frm.age.value<18){\r\n");
      out.write("var age=\"name must be greater than 18\";\r\n");
      out.write("age=document.getElementById(\"age\").innerHTML=age;      \r\n");
      out.write("document.frm.age.focus();\r\n");
      out.write("      return false;   \r\n");
      out.write("    }\r\n");
      out.write(" \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("       \r\n");
      out.write("<div id=\"wrapper\">\r\n");
      out.write("\t <div id=\"header\">\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div id=\"menu\">\r\n");
      out.write("\t\t<ul>\r\n");
      out.write("\t          <li><a href=\"index.jsp\">Home</a></li>\r\n");
      out.write("                   <li><a href=\"extend.jsp\">Extend ticket</a></li>\r\n");
      out.write("                   <li><a href=\"cancel_ticket.jsp\">Cancel ticket</a></li>\r\n");
      out.write("\t\t   <li><a href=\"about.jsp\">About</a></li>\r\n");
      out.write("\t\t   <li><a href=\"contact.jsp\">Contact us</a></li>\r\n");
      out.write("                   <li> <a href=\"help.jsp\">Help</a> </li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div id=\"content\">\r\n");
      out.write("            <div id=\"left\" style=\"width:360px\">\r\n");
      out.write("\t\t  <div class=\"post\">\r\n");
      out.write("\t\t\t\t<h2>online ticket reservation system in bahir dar city</h2>\r\n");
      out.write("  <label>\r\n");
      out.write(" \r\n");
      out.write("  </label>\r\n");
      out.write("          </div>\r\n");
      out.write("\t  </div>\r\n");
      out.write("            <div id=\"right\" style=\"width:420px\">\r\n");
      out.write("\t\t\t<FORM METHOD=\"POST\" ACTION=\"new_ticket.jsp\" name=\"frm\" onsubmit=\"return validateForm();\">\r\n");
      out.write("                            <b>Personal Information</b>\r\n");
      out.write("    <table><tr><td>First Name:</td><td><INPUT NAME=\"fname\" TYPE=\"TEXT\" SIZE=\"15\" MAXLENGTH=\"20\" id=\"fname\" value=\"zelalem\"></td><td style=\"color:red\"><script>var fnameErr=document.frm.fname.value();\r\n");
      out.write("                if(fnameErr.search(/\\d/) != -1)\r\n");
      out.write("                        alert(\"the name contains invalid character\");</script></td></tr>\r\n");
      out.write("    <tr><td>Last Name: </td><td><INPUT NAME=\"lname\" TYPE=\"TEXT\" SIZE=\"15\" MAXLENGTH=\"20\" pattern=\"[a-zA-Z]+\"></td></tr>\r\n");
      out.write("    <tr><td>Age: </td><td><INPUT NAME=\"age\" TYPE=\"text\" SIZE=\"2\" MAXLENGTH=\"3\" pattern=\"[1-9]{2}\"></td></tr>\r\n");
      out.write("    <tr><td> Phone Number:</td><td><INPUT NAME=\"phone\" TYPE=\"TEXT\" SIZE=\"10\" pattern=\"[0-9]{10}\"></td></tr>\r\n");
      out.write("    <tr><td>Account: </td><td> <INPUT NAME=\"account\" type=\"text\" SIZE=\"10\" pattern=\"[0-9]+\"></td></tr>\r\n");
      out.write("    <tr><td>Id Number:</td><td><INPUT NAME=\"id\" type=\"text\" SIZE=\"10\" pattern=\"[0-9a-zA-Z]+\"></td></tr>\r\n");
      out.write("    <tr><td>Email: </td><td> <INPUT NAME=\"email\" TYPE=\"email\" SIZE=\"15\"></td></tr>\r\n");
      out.write("    <tr><td>Photo </td><td> <INPUT NAME=\"photo\" TYPE=\"file\" ></td></tr>\r\n");
      out.write("    <tr><td><INPUT TYPE=\"SUBMIT\" Name=\"Save\" value=\"Register\"> </td><td><INPUT TYPE=\"RESET\" Name=\"Reset\"></td></tr></span>\r\n");
      out.write("<tr style=\"background-color:darkorange\"><td>Registration Status</td><td>");

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


      out.write("\r\n");
      out.write("\r\n");
      out.write("<b><font color=\"Blue\">\r\n");
      out.write("\r\n");
 out.println("Sucesfully Registerd!"); 
      out.write("\r\n");
      out.write("\r\n");
      out.write("</font></b>\r\n");
      out.write("\r\n");


}

else {

out.println("unsucessfull to upload image.");

}

con.close();

pst.close();

}catch(Exception ex){

out.println("<font color='red'>"+ex+"</font>");

}
  
            
      out.write(" </td></table> \r\n");
      out.write("\r\n");
      out.write("</FORM>         <a href=\"reserve.jsp\">reserve</a>\r\n");
      out.write("\r\n");
      out.write("\t  </div>\r\n");
      out.write("\t</div>\r\n");
      out.write("  \r\n");
      out.write("</div>\r\n");
      out.write("  <div id=\"footer\">\r\n");
      out.write("\t  <p class=\"copyright\">Copyright &copy; 2016</p>\r\n");
      out.write("\t</div>  </body>\r\n");
      out.write("</html>\r\n");
      out.write("                                                                                                                      ");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
