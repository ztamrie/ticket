package org.apache.jsp.amharic;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("         <style>\n");
      out.write("            input.submit{\n");
      out.write("               background-image: url(seat.PNG);\n");
      out.write("                height: 82px;\n");
      out.write("                width: 82px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>new ticket registration</title>\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
      out.write("               <script>\n");
      out.write("       function validateForm()\n");
      out.write("{\n");
      out.write("    if(document.frm.fname.value==\"\")\n");
      out.write("    {\n");
      out.write("     var fname=\"* first name does not \";\n");
      out.write("      document.frm.fname.focus();\n");
      out.write("      return false;\n");
      out.write("    }\n");
      out.write("    else if(document.frm.lname.value==\"\")\n");
      out.write("    {\n");
      out.write("      alert(\"Father name should not be empty!\");\n");
      out.write("      document.frm.lname.focus();\n");
      out.write("      return false;\n");
      out.write("    }\n");
      out.write("    if(document.frm.age.value<18){\n");
      out.write("var age=\"name must be greater than 18\";\n");
      out.write("age=document.getElementById(\"age\").innerHTML=age;      \n");
      out.write("document.frm.age.focus();\n");
      out.write("      return false;   \n");
      out.write("    }\n");
      out.write(" \n");
      out.write("}\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("<div id=\"wrapper\">\n");
      out.write("\t <div id=\"header\">\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"menu\">\n");
      out.write("\t\t<ul>\n");
      out.write("\t          <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                   <li><a href=\"extend.jsp\">Extend ticket</a></li>\n");
      out.write("                   <li><a href=\"cancel_ticket.jsp\">Cancel ticket</a></li>\n");
      out.write("\t\t   <li><a href=\"about.jsp\">About</a></li>\n");
      out.write("\t\t   <li><a href=\"contact.jsp\">Contact us</a></li>\n");
      out.write("                   <li> <a href=\"help.jsp\">Help</a> </li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"content\">\n");
      out.write("\t\t<div id=\"left\">\n");
      out.write("\t\t  <div class=\"post\">\n");
      out.write("\t\t\t\t<h2>online ticket reservation system in bahir dar city</h2>\n");
      out.write("  <label>\n");
      out.write(" \n");
      out.write("  </label>\n");
      out.write("          </div>\n");
      out.write("\t  </div>\n");
      out.write("\t\t<div id=\"right\">\n");
      out.write("\t\t\t<FORM METHOD=\"POST\" ACTION=\"new_ticket.jsp\" name=\"frm\" onsubmit=\"return validateForm();\">\n");
      out.write("<fieldset><legend>Personal Information</legend>\n");
      out.write("<table>\n");
      out.write("<tr><td>First Name:</td><td><INPUT NAME=\"fname\" TYPE=\"TEXT\" SIZE=\"15\" MAXLENGTH=\"20\" id=\"fname\"></td></tr>\n");
      out.write("        <tr><td>Last Name: </td><td><INPUT NAME=\"lname\" TYPE=\"TEXT\" SIZE=\"15\" MAXLENGTH=\"20\"></td></tr>\n");
      out.write("        <tr><td>Age: </td><td><INPUT NAME=\"age\" TYPE=\"text\" SIZE=\"2\" MAXLENGTH=\"3\"></td></tr>\n");
      out.write("        <tr><td> Phone Number:</td><td><INPUT NAME=\"phone\" TYPE=\"TEXT\" SIZE=\"10\"></td>></tr>\n");
      out.write("        <tr><td>Account: </td><td> <INPUT NAME=\"account\" type=\"text\" SIZE=\"10\"></td></tr>\n");
      out.write("        <tr><td>Id Number:</td><td><INPUT NAME=\"id\" type=\"text\" SIZE=\"10\"></td></tr>\n");
      out.write("        <tr><td>Email: </td><td> <INPUT NAME=\"email\" TYPE=\"email\" SIZE=\"15\"></td></tr>\n");
      out.write("        <tr><td>User Name</td><td><input type=\"text\" name=\"uname\"></td></tr>\n");
      out.write("        <tr><td>Password</td><td><input type=\"password\" name=\"pass\"></td></tr>\n");
      out.write("        <tr><td>Reenter password</td><td><input type=\"password\" name=\"rpass\"></td></tr>\n");
      out.write("        <tr><td>User Type</td><td><select name=\"userType\"><option value=\"passenger\">passenger</option></select></td></tr>\n");
      out.write("       <tr><td>Photo </td><td> <INPUT NAME=\"photo\" TYPE=\"file\" ></td></tr>\n");
      out.write("        <tr><td><INPUT TYPE=\"SUBMIT\" Name=\"Save\" value=\"Register\"> </td><td><INPUT TYPE=\"RESET\" Name=\"Reset\"></td></tr></span>\n");
      out.write("</table> \n");
      out.write("</fieldset>\n");
      out.write("</FORM>         <a href=\"reserve.jsp\">reserve</a>\n");
      out.write("\n");
      out.write("\t  </div>\n");
      out.write("\t</div>\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("  <div id=\"footer\">\n");
      out.write("\t  <p class=\"copyright\">Copyright &copy; 2016</p>\n");
      out.write("\t</div>  </body>\n");
      out.write("</html>\n");

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
String photo=request.getParameter("photo");
FileInputStream fis;
/*FileInputStream fis=new FileInputStream(photo); 
byte[] b= new byte[fis.available()+1]; 
fis.read(b); */
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
fis=new FileInputStream(image);

pst.setBinaryStream(8, (InputStream)fis, (int)(image.length()));

int s = pst.executeUpdate();

if(s>0) {


      out.write("\n");
      out.write("\n");
      out.write("<b><font color=\"Blue\">\n");
      out.write("\n");
 out.println("Registerd successfully !"); 
      out.write("\n");
      out.write("\n");
      out.write("</font></b>\n");
      out.write("\n");


}

else {

out.println("unsucessfull to upload image.");

}

con.close();

pst.close();

}catch(Exception ex){

out.println("Error in connection : "+ex);

}
  
            
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
