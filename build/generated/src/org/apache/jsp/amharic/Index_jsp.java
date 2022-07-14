package org.apache.jsp.amharic;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"themes/4/js-image-slider.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <script src=\"themes/4/js-image-slider.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script>\n");
      out.write("delay = 200;\n");
      out.write("number = 1;\n");
      out.write("function animate(){\n");
      out.write("document.image_rotate.src = number+\".jpg\";\n");
      out.write("number++;\n");
      out.write("if (number > 4)   \n");
      out.write("number = 1;  \n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> ::.home page::.</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      <div id=\"wrapper\">\n");
      out.write("\t <div id=\"header\">\n");
      out.write("             \n");
      out.write("\t \t</div>\n");
      out.write("\t<div id=\"menu\">\n");
      out.write("\t\t<ul>\n");
      out.write("                <li><a href=\"../index.jsp\">ዋናው መግቢያ</a></li>      \n");
      out.write("                <li><a href=\"new_ticket.jsp\">አዲስ ትኬት</a></li>\n");
      out.write("                <li><a href=\"extend.jsp\">ትኬቱን አራዝም</a></li>\n");
      out.write("                <li><a href=\"cancel_ticket.jsp\">ትኬቱን አቋርጥ</a></li>\n");
      out.write("\t\t<li><a href=\"login.jsp\">Login</a> </li>\n");
      out.write("\t        <li> <a href=\"help.jsp\">ርዳታ</a> </li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"content\">\n");
      out.write("\t\t<div id=\"left\">\n");
      out.write("\t\t  <div class=\"post\">\n");
      out.write("\t\t\t\t<h2>online ticket reservation system in bahir dar city</h2>\n");
      out.write("  <label>\n");
      out.write("      <a href=\"about.jsp\" style=\"text-decoration:none\">About</a><br>\n");
      out.write("      <a href=\"contact.jsp\" style=\"text-decoration:none\">Contact us</a> <br>\n");
      out.write("\t  <a href=\"new_ticket.jsp\" style=\"text-decoration:none\">Register</a> <br>\n");
      out.write("\t  <a href=\"print.jsp\" style=\"text-decoration:none\">Print</a> <br>\n");
      out.write("\t  <a href=\"www/index.html\" style=\"text-decoration:none\">Take picture</a> <br>\n");
      out.write("\t   <a href=\"galary.html\" style=\"text-decoration:none\">galary</a> <br> \n");
      out.write("           \t   <a href=\"newjsp.jsp\" style=\"text-decoration:none\">view</a> <br>  \n");
      out.write("\n");
      out.write("           <img id=\"image_rotate\"src=\"images/1.PNG\" width=\"300\" height=\"300\" />\n");
      out.write("\n");
      out.write("\t  </div>\n");
      out.write("\t  </div>\n");
      out.write("            \n");
      out.write("\t  <div id=\"right\">\n");
      out.write("\t\t  <div class=\"post\">\n");
      out.write("                  <div style=\"background-color: #D7D7BD; border:1px;width: 300px\">\n");
      out.write("\n");
      out.write("                      <marquee> <img  src=\"images/3.jpg\" /></marquee>\n");
      out.write("                        \n");
      out.write("    </div>\n");
      out.write("<tr><td><a href=\"view_information.jsp\">view information</a>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("                  \n");
      out.write("                  </div>\n");
      out.write("\t  </div>\n");
      out.write("\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("      </div>\n");
      out.write("    <div id=\"footer\">\n");
      out.write("      \n");
      out.write("\t  <p class=\"copyright\">Copyright &copy; 2016</p>\n");
      out.write("\t</div></body>\n");
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
