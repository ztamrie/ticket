package org.apache.jsp.attendant;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("                <li><a href=\"index.jsp\">Home</a></li>      \n");
      out.write("                <li><a href=\"schedule.jsp\">Schedule</a></li>\n");
      out.write("                <li><a href=\"viewSchedule.jsp\">View Schedule</a></li>\n");
      out.write("                <li><a href=\"view_information.jsp\">View Information</a></li>\n");
      out.write("                <li><a href=\"../logout.jsp\">Logout</a></li>\n");
      out.write("                <li> <a href=\"../help.jsp\">Help</a> </li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("          <div id=\"content\" style=\"border-radius: 15px 15px 15px 15px;background-color:lightblue\">\n");
      out.write("\t\t<div id=\"left\">\n");
      out.write("\t\t  <div class=\"post\">\n");
      out.write("\t\t\t\t<h2>online ticket reservation system in bahir dar city</h2>\n");
      out.write("  <label>\n");
      out.write("      <a href=\"#about\" style=\"text-decoration:none;padding:10px 40px;background-color: green;border-radius:8px 8px 8px 8px\">About</a><br>\n");
      out.write("      <a href=\"contact.jsp\" style=\"text-decoration:none;padding:10px 40px;background-color: yellow;border-radius:8px 8px 8px 8px\">Contact us</a> <br>\n");
      out.write("      <a href=\"new_ticket.jsp\" style=\"text-decoration:none;padding:10px 40px;background-color: red;border-radius:8px 8px 8px 8px\">Register</a> <br>\n");
      out.write("      <a href=\"takeImage.jsp\" style=\"text-decoration:none;padding:10px 40px;background-color: green;border-radius:8px 8px 8px 8px\">Take picture</a> <br>\n");
      out.write("      <a href=\"galary.html\" style=\"text-decoration:none;padding:10px 40px;background-color: yellow;border-radius:8px 8px 8px 8px\">galary</a> <br> \n");
      out.write("      <a href=\"printT.jsp\" style=\"text-decoration:none;padding:10px 40px;background-color: red;border-radius:8px 8px 8px 8px\">print</a> <br>  \n");
      out.write("           <img id=\"image_rotate\"src=\"images/1.PNG\" width=\"300\" height=\"300\" />\n");
      out.write("\n");
      out.write("\t  </div>\n");
      out.write("                    <script id=\"about\">\n");
      out.write("                        alert(\"Ethiopia is one of the largest countries in Africa having a population of above 80 million and a land of distributed cities. As transportation is one of the most common needs for citizens, people use bus as their main type of transportation from places to places.\n");
      out.write("This bus transportation system starts during Emperor Haile Selassie between cities to city. As that time the Eretria was not independent and there is also a trip up to north Asmara.\n");
      out.write("Now a day a country cross bus travelling is based on three levels with different associations. These three levels are level I, level II and level III. There are many number of association’s under each level.\n");
      out.write("The ticket method of the transportation now a day is manual system. When the passenger wants to reserve the ticket he/she goes to the station and asks the thicket seller.\n");
      out.write("\");\n");
      out.write("                    </script>\n");
      out.write("\t  </div>\n");
      out.write("            \n");
      out.write("\t  <div id=\"right\">\n");
      out.write("\t\t  <div class=\"post\">\n");
      out.write("                  <div style=\"background-color: #D7D7BD; border:1px;width: 300px\">\n");
      out.write("\n");
      out.write("                      <marquee> <img  src=\"images/3.jpg\" /></marquee>\n");
      out.write("                        \n");
      out.write("    </div>\n");
      out.write("<a href=\"view_information.jsp\">view information</a>\n");
      out.write("<br>\n");
      out.write("<a href=\"view_ticket.jsp\">view ticket</a>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("                  \n");
      out.write("                  </div>\n");
      out.write("\t  </div>\n");
      out.write("\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("      </div>\n");
      out.write("      <div id=\"footer\" style=\"height:150px\">\n");
      out.write("          <table border=\"0\" cellspacing=\"6\">\n");
      out.write("              \n");
      out.write("              <thead>\n");
      out.write("                  <tr>\n");
      out.write("                      <th>Short Cutted Links</th>\n");
      out.write("                      <th>Usefull Links</th>\n");
      out.write("                      <th>Related Links</th>\n");
      out.write("                  </tr>\n");
      out.write("              </thead>\n");
      out.write("              <tbody>\n");
      out.write("                  <tr>\n");
      out.write("                      <td> <a href=\"login.jsp\">login</a></td>\n");
      out.write("                      <td> <a href=\"new_ticket.jsp\">new ticket</a></td>\n");
      out.write("                      <td> <a href=\"cancel_ticket.jsp\">login</a></td>\n");
      out.write("                  </tr>\n");
      out.write("                  <tr>\n");
      out.write("                      <td><a href=www.google.com\">google</a></td>\n");
      out.write("                      <td><a href=www.gmail.com\">gmail</a></td>\n");
      out.write("                      <td><a href=\"www.yahoo.com\">yahoo</a></td>\n");
      out.write("                  </tr>\n");
      out.write("                  <tr>\n");
      out.write("                      <td></td>\n");
      out.write("                      <td></td>\n");
      out.write("                      <td></td>\n");
      out.write("                  </tr>\n");
      out.write("                  <tr>\n");
      out.write("                      <td></td>\n");
      out.write("                      <td></td>\n");
      out.write("                      <td></td>\n");
      out.write("                  </tr>\n");
      out.write("                  <tr>\n");
      out.write("                      <td></td>\n");
      out.write("                      <td></td>\n");
      out.write("                      <td></td>\n");
      out.write("                  </tr>\n");
      out.write("              </tbody>\n");
      out.write("          </table>\n");
      out.write("\n");
      out.write("  <p class=\"copyright\">Copyright &copy; 2016</p>\n");
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
