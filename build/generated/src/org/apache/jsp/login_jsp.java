package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html xmlns:h=\"http://xmlns.jcp.org/jsf/html\" xmlns:f=\"http://xmlns.jcp.org/jsf/core\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>::.user login::.</title>\n");
      out.write("      <link href=\"images/2.jpg\" rel=\"icon\" type=\"image/jpg\" />\n");
      out.write("   <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <script>\n");
      out.write("function validateForm()\n");
      out.write("{\n");
      out.write("    if(document.frm.uname.value==\"\")\n");
      out.write("    {\n");
      out.write("      var user=\"* User Name Must Not Empty\";\n");
      out.write("      document.getElementById(\"user\").innerHTML = user;\n");
      out.write("\n");
      out.write("      document.frm.uname.focus();\n");
      out.write("      return false;\n");
      out.write("    }\n");
      out.write("    else if(document.frm.pass.value==\"\")\n");
      out.write("    {\n");
      out.write("      var pass=\"* Password Must Not Empty\";\n");
      out.write("      document.getElementById(\"pass\").innerHTML = pass;\n");
      out.write("      document.frm.pass.focus();\n");
      out.write("      return false;\n");
      out.write("    }\n");
      out.write(" \n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("<div id=\"wrapper\">\n");
      out.write("\t <div id=\"header\">\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"menu\">\n");
      out.write("\t\t<ul>\n");
      out.write("                    <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("\t\t<li> <a href=\"#\">ticket</a>\n");
      out.write("                <ul>\n");
      out.write("                 <li><a href=\"extend.jsp\">extend ticket</a></li>\n");
      out.write("                 <li><a href=\"new_ticket.jsp\">new ticket</a></li>\n");
      out.write("                <li><a href=\"cancel_ticket.jsp\">cancel ticket</a></li>\n");
      out.write("                </ul>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\n");
      out.write("\t\t   <li><a href=\"about.jsp\">about</a></li>\n");
      out.write("\t\t\t<li><a href=\"contact.jsp\">contact us</a></li>\n");
      out.write("\t\t\t\n");
      out.write("\t\t<li><a href=\"login.jsp\">login</a> </li>\n");
      out.write("\t    <li> <a href=\"help.jsp\">help</a> </li>\n");
      out.write("\t\t\t<li><a href=\"logout.jsp\">Log Out</a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"content\">\n");
      out.write("\t\t<div id=\"left\">\n");
      out.write("\t\t  <div class=\"post\">\n");
      out.write("\t\t\t\t<h2>online ticket reservation system in bahir dar city</h2>\n");
      out.write("  <label>\n");
      out.write(" \n");
      out.write("  <a href=\"index.jsp\" style=\"text-decoration:none\">home</a><br>\n");
      out.write("      <a href=\"about.jsp\" style=\"text-decoration:none\">about</a><br>\n");
      out.write("      <a href=\"contact.jsp\" style=\"text-decoration:none\">contact us</a> <br>\n");
      out.write("      <a href=\"login.jsp\" style=\"text-decoration:none\">login</a> <br>\n");
      out.write("      <a href=\"help.jsp\" style=\"text-decoration:none\">help</a> <br>\n");
      out.write("      <a href=\"new_ticket.jsp\" style=\"text-decoration:none\">register</a> <br>\n");
      out.write("      <a href=\"print.jsp\" style=\"text-decoration:none\">print</a> <br>\n");
      out.write("      <a href=\"www/index.html\" style=\"text-decoration:none\">take picture</a> <br>\n");
      out.write("  </label>\n");
      out.write("          </div>\n");
      out.write("\t  </div>\n");
      out.write("\t\t<div id=\"right\">\n");
      out.write("\t\t\t<p>\n");
      out.write("\t\t\t\n");
      out.write("\n");
      out.write("                        <form method=\"post\" action=\"login.jsp\" name=\"frm\" onSubmit=\"return validateForm()\" style=\"background-image:url( images/righth.jpg);border-radius:10px 10px 10px 10px\"> \n");
      out.write("                            <h3 style=\"background-color:lightseagreen;alignment-adjust: central;border-radius:10px 10px 10px 10px\">login</h3>\n");
      out.write("\t\n");
      out.write("                            <table>\n");
      out.write("                                <tr><td>Username</td><td><input type=\"text\" name=\"uname\"/></td></tr>\n");
      out.write("                                <tr><td>Password</td><td><input type=\"password\" name=\"pass\" /></td></tr>\n");
      out.write("                                 <tr><td><input type=\"submit\" name=\"submit\" value=\"Login\" /></td>\n");
      out.write("                                    <td><input type=\"reset\" name=\"clear\" value=\"reset\"></td></tr>\n");
      out.write("                                        <tr><td>Login Status</td><td>\n");
      out.write("                                                ");

                                                String uname=request.getParameter("uname");
                                                String password=request.getParameter("password");
                                                String type;
                                                Connection con=null;
                                                PreparedStatement ps=null;
                                                ResultSet rs=null;
                                                String driverName="com.mysql.jdbc.Driver";
                                                String url="jdbc:mysql://localhost:3306/ticket";
                                                String user="root";
                                                String dbpasw="";
                                                Class.forName(driverName);
                                                con=DriverManager.getConnection(url, user, dbpasw);			
                                                try{
                                                    PreparedStatement log=con.prepareStatement("SELECT * FROM `account` WHERE userName=? and password=?");
                                                    log.setString(1,uname);
                                                    log.setString(2,password);
                                                    rs=log.executeQuery();
                                                    while(rs.next()){
                                                    if(rs.getString(3).equals("admin")){
                                                    session.setAttribute("uname", rs.getString(1));
                                                     response.sendRedirect("admin.jsp");}
                                                    else if(rs.getString(3).equals("seller")){
                                                    session.setAttribute("seller",rs.getString(1));
                                                    response.sendRedirect("seller/home.jsp");}
                                                    else if(rs.getString(3).equals("attendant")){
                                                    session.setAttribute("ustype", rs.getString(3));
                                                    response.sendRedirect("attendant/home.jsp");
                                                    }
                                                    else if(rs.getString(3).equals("driver")){
                                                    session.setAttribute("driver", rs.getString(3));
                                                    response.sendRedirect("driverStatus.jsp");}
                                                    else
                                                    {
                                               out.println("the password or username you enter is incorrect");}}
                                                }
catch(Exception e){out.println(e);}
      out.write("\n");
      out.write("                                                \n");
      out.write("                                            </td></tr></table>\n");
      out.write("\t\n");
      out.write("        </form>\n");
      out.write("                        <a href=\"newAccount.jsp\">create account</a>\n");
      out.write("\t  </div>\n");
      out.write("            <img src=\"images/kkk.gif\">\n");
      out.write("\t</div>\n");
      out.write(" \n");
      out.write("</div>\n");
      out.write("   <div id=\"footer\">\n");
      out.write("\t  <p class=\"copyright\">Copyright &copy; 2016</p>\n");
      out.write("\t</div>  </body>\n");
      out.write("</html>\n");
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
