package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.regex.Pattern;
import java.sql.*;
import java.sql.*;

public final class cancel_005fticket_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>::ticket cancelation::.</title>\n");
      out.write("      <link href=\"images/2.jpg\" rel=\"icon\" type=\"image/jpg\" />\n");
      out.write("   <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
      out.write("        <script>\n");
      out.write("\n");
      out.write("function validate(){\n");
      out.write("var check_id = /^[0-9 ]{3,20}$/;\n");
      out.write("var ticket = document.frm.passId.vlue;\n");
      out.write("var id = document.frm.ticketNo.value;\n");
      out.write("\n");
      out.write(" \n");
      out.write(" if (!check_id.test(id)) {\n");
      out.write(" alert(\"Id must be Integer value\")\n");
      out.write(" }\n");
      out.write("  if (!check_id.test(ticket)) {\n");
      out.write(" alert(\"Ticket must be Integer value\")\n");
      out.write(" }\n");
      out.write("}\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"wrapper\" style=\"height: 540px\">\n");
      out.write("\t <div id=\"header\">\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"menu\">\n");
      out.write("\t\t<ul>\n");
      out.write("                <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                <li><a href=\"new_ticket.jsp\">New ticket</a></li>\n");
      out.write("                <li><a href=\"cancel_ticket.jsp\">Cancel ticket</a></li>\n");
      out.write("                <li> <a href=\"amharic/index.jsp\"><img src=\"images/amharic.PNG\" alt=\"amharic\" /></a></li>\n");
      out.write("\t\t<li><a href=\"login.jsp\">Login</a> </li>\n");
      out.write("\t        <li> <a href=\"help.jsp\">Help</a> </li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"content\">\n");
      out.write("            <div id=\"left\" style=\"width:360px\">\n");
      out.write("\t\t  <div class=\"post\">\n");
      out.write("\t\t\t\t<h2>online ticket reservation system in bahir dar city</h2>\n");
      out.write("  <label>\n");
      out.write(" \n");
      out.write("       <a href=\"about.jsp\" style=\"text-decoration:none\">about</a><br>\n");
      out.write("      <a href=\"contact.jsp\" style=\"text-decoration:none\">contact us</a> <br>\n");
      out.write("\t  <a href=\"new_ticket.jsp\" style=\"text-decoration:none\">register</a> <br>\n");
      out.write("\t  <a href=\"print.jsp\" style=\"text-decoration:none\">print</a> <br>\n");
      out.write("\t  <a href=\"www/index.html\" style=\"text-decoration:none\">take picture</a> <br>\n");
      out.write("\t   <a href=\"galary.html\" style=\"text-decoration:none\">galary</a> <br>  \n");
      out.write("  </label>\n");
      out.write("          </div>\n");
      out.write("\t  </div>\n");
      out.write("            <div id=\"right\" style=\"width:360px\">\n");
      out.write("\t\t\t<p>\n");
      out.write("                        <form action=\"cancel_ticket.jsp\" method=\"POST\" name=\"frm\" onsubmit=\"return validate();\">\n");
      out.write("    <table border=\"0\">     \n");
      out.write("             <tr>\n");
      out.write("                <td>Passenger Id</td>\n");
      out.write("                <td><input type=\"text\" name=\"passId\" value=\"\" /></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>TicketNo</td>\n");
      out.write("                <td><input type=\"text\" name=\"ticketNo\" value=\"\" /></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Cancelation Status</td>\n");
      out.write("                <td>");

            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String sql="";
      try{
      Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket","root","");
          Statement stmt;
       stmt= con.createStatement();
           sql="insert into cancel(passengerId,ticketNo) values('"+request.getParameter("passId")+"','"+request.getParameter("ticketNo")+"')";
            ps=con.prepareStatement(sql);
            ps.execute();
            out.println("<font color='green'>Sucsussfully Canceled<font>");
      }
      catch(SQLException e){
      out.println("<font color='red'>"+e+"</font>");
      }
      
      
            
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("           <tr>\n");
      out.write("               <td colspan=\"2\"><input type=\"submit\" value=\"Cancel\" /></td>\n");
      out.write("            </tr>\n");
      out.write("        \n");
      out.write("    </table>\n");
      out.write("\n");
      out.write("</form>\t  </div>\n");
      out.write("               \n");
      out.write("\t</div>\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("                            <div id=\"footer\">\n");
      out.write("\t  <p class=\"copyright\">Copyright &copy; 2016</p>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
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
