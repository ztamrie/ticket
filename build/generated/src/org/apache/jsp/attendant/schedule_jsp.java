package org.apache.jsp.attendant;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class schedule_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"../style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
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
      out.write("                <li><a href=\"home.jsp\">Home</a></li>      \n");
      out.write("                <li><a href=\"schedule.jsp\">Schedule Bus</a></li>\n");
      out.write("                <li><a href=\"viewSchedule.jsp\">View Schedule</a></li>\n");
      out.write("                <li><a href=\"view_information.jsp\">View Information</a></li>\n");
      out.write("                <li><a href=\"../logout.jsp\">Logout</a></li>\n");
      out.write("                <li> <a href=\"../help.jsp\">Help</a> </li>\n");
      out.write("\t\t</ul>\t</ul>\n");
      out.write("\t</div>\n");
      out.write("            <div style=\"alignment-adjust: central; \">\n");
      out.write("                <h2>note</h2>\n");
      out.write("                ");

            String sql="select * from trip";
            Connection co=null;
            PreparedStatement pt=null;
            ResultSet rt=null;
            String driverNam="com.mysql.jdbc.Driver";
            String ur="jdbc:mysql://localhost:3306/ticket";
            String use="root";
            String dbpas="";
      try{
      Class.forName(driverNam);
      co=DriverManager.getConnection(ur, use, dbpas);
      pt=co.prepareStatement(sql);
     
             rt=pt.executeQuery();
             out.println("<table border='1' style='border-collapse:collapse'>");
			while(rt.next()){
            String fname=rt.getString("dectinationCity");
            int lname=rt.getInt("id");
            String age=rt.getString("busType");
            int id=rt.getInt("price");
            int phone=rt.getInt("timeSpent");
            int email=rt.getInt("distance");
            //Statement st=con.createStatement();
            //st.executeUpdate("insert into account values('hi','hi','hi')");
          out.println("<tr align='center' style='border-collapse:collapse; border:2px solid red'>");	
	  out.println("<td><font color='black'>"+fname+"</font></td>");
	  out.println("<td><font color='black'>"+lname+"</font></td>");
	  out.println("<td><font color='black'>"+id+"</font></td>");
	  out.println("<td><font color='black'>"+age+"</font></td>");
	  out.println("<td><font color='black'>"+email+"</font></td>");	
	  out.println("<td><font color='black'>"+phone+"</font></td>");	
	out.print("</tr>");
     
            }
                        out.println("</table>");
      
      }
      catch(Exception e){
      out.println(e);
      }
      
      
			
      out.write("    ");

           boolean driverCondtion=false,busConditon=false;

            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
      out.write("\n");
      out.write("  <form name=\"frm\" action=\"schedule.jsp\" method=\"POST\">\n");
      out.write("            <table>\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Date</td>\n");
      out.write("                        <td><select name=\"day\">\n");
      out.write("                                <option value=\"01\">01</option>\n");
      out.write("                                <option value=\"02\">02</option>\n");
      out.write("                                <option value=\"03\">03</option>\n");
      out.write("                                <option value=\"04\">04</option>\n");
      out.write("                                <option value=\"05\">05</option>\n");
      out.write("                                <option value=\"06\">06</option>\n");
      out.write("                                <option value=\"07\">07</option>\n");
      out.write("                                <option value=\"08\">08</option>\n");
      out.write("                                <option value=\"09\">09</option>\n");
      out.write("                                <option value=\"10\">10</option>\n");
      out.write("                                <option value=\"11\">11</option>\n");
      out.write("                                <option value=\"12\">12</option>\n");
      out.write("                                <option value=\"13\">13</option>\n");
      out.write("                                <option value=\"14\">14</option>\n");
      out.write("                                <option value=\"15\">15</option>\n");
      out.write("                                <option value=\"16\">16</option>\n");
      out.write("                                <option value=\"17\">17</option>\n");
      out.write("                                <option value=\"18\">18</option>\n");
      out.write("                                <option value=\"19\">19</option>\n");
      out.write("                                <option value=\"20\">20</option>\n");
      out.write("                                <option value=\"21\">21</option>\n");
      out.write("                                <option value=\"22\">22</option>\n");
      out.write("                                <option value=\"23\">23</option>\n");
      out.write("                                <option value=\"24\">24</option>\n");
      out.write("                                <option value=\"25\">25</option>\n");
      out.write("                                <option value=\"26\">26</option>\n");
      out.write("                                <option value=\"27\">27</option>\n");
      out.write("                                <option value=\"28\">28</option>\n");
      out.write("                                <option value=\"29\">29</option>\n");
      out.write("                                <option value=\"30\">30</option></select>\n");
      out.write("                            \n");
      out.write("                            <select name=\"month\">\n");
      out.write("                               <option value=\"01\">01</option>\n");
      out.write("                                <option value=\"02\">02</option>\n");
      out.write("                                <option value=\"03\">03</option>\n");
      out.write("                                <option value=\"04\">04</option>\n");
      out.write("                                <option value=\"05\">05</option>\n");
      out.write("                                <option value=\"06\">06</option>\n");
      out.write("                                <option value=\"07\">07</option>\n");
      out.write("                                <option value=\"08\">08</option>\n");
      out.write("                                <option value=\"09\">09</option>\n");
      out.write("                                <option value=\"10\">10</option>\n");
      out.write("                                <option value=\"11\">11</option>\n");
      out.write("                                <option value=\"12\">12</option>\n");
      out.write("                            </select>\n");
      out.write("                             <select name=\"year\">\n");
      out.write("                               <option value=\"2008\">2008</option>\n");
      out.write("                                <option value=\"2009\">2009</option>\n");
      out.write("                                <option value=\"2010\">2010</option>\n");
      out.write("                                <option value=\"2011\">2011</option>\n");
      out.write("                                <option value=\"1012\">1012</option>\n");
      out.write("                                <option value=\"2013\">2013</option>\n");
      out.write("                                <option value=\"2014\">2014</option>\n");
      out.write("                                <option value=\"2015\">2015</option>\n");
      out.write("                                <option value=\"2016\">2016</option>\n");
      out.write("                                <option value=\"2017\">2017</option>\n");
      out.write("                                <option value=\"2018\">2018</option>\n");
      out.write("                                <option value=\"2019\">2019</option>\n");
      out.write("                            </select>\n");
      out.write("                        </td>\n");
      out.write("                        <td>City</td>\n");
      out.write("                        <td>\n");
      out.write("                            ");
String trip="select * from trip";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
     PreparedStatement tri=con.prepareStatement(trip);
     
     ResultSet rst=tri.executeQuery();

      out.write("\n");
      out.write("\n");
      out.write("<select name=\"tripCity\">\n");
      out.write("        ");
  while(rst.next()){ 
      out.write("\n");
      out.write("            <option>");
      out.print( rst.getString(2));
      out.write("</option>\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("        </select>\n");

//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }

      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                       <tr>\n");
      out.write("                        <td>Trip Id</td>\n");
      out.write("                        <td>");

            String sq="select * from trip";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sq);
     
      rs=ps.executeQuery();

      out.write("\n");
      out.write("\n");
      out.write("<select name=\"tripId\">\n");
      out.write("        ");
  while(rs.next()){ 
      out.write("\n");
      out.write("            <option>");
      out.print( rs.getString(1));
      out.write("</option>\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("        </select>\n");

//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }

      out.write(" </td>\n");
      out.write("                        <td>Driver</td>\n");
      out.write("                        <td>");

            String driver="select * from driver";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(driver);
     
      rs=ps.executeQuery();

      out.write("\n");
      out.write("\n");
      out.write("<select name=\"driver\">\n");
      out.write("        ");
  while(rs.next()){ 
      out.write("\n");
      out.write("            <option>");
      out.print( rs.getString(1));
      out.write("</option>\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("        </select>\n");

//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }

      out.write(" </td>\n");
      out.write("                    </tr>\n");
      out.write("                          <tr>\n");
      out.write("                        <td>Plate Number</td>\n");
      out.write("                        <td>");

            String bus="select * from bus";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(bus);
     
      rs=ps.executeQuery();

      out.write("\n");
      out.write("\n");
      out.write("<select name=\"bus\">\n");
      out.write("        ");
  while(rs.next()){ 
      out.write("\n");
      out.write("            <option>");
      out.print( rs.getString(1));
      out.write("</option>\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("        </select>\n");

//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }

      out.write("</td>\n");
      out.write("                        <td></td>\n");
      out.write("                        <td></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Exit Time</td>\n");
      out.write("                        <td><input type=\"text\" name=\"exit\" value=\"\" /></td>\n");
      out.write("                        <td>Entrance Time</td>\n");
      out.write("                        <td><input type=\"text\" name=\"entrance\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr> <td>Status</td><td>");

       String day=request.getParameter("day");
       String month=request.getParameter("month");
       String year=request.getParameter("year");

PreparedStatement pst=null;    
       String date=day+month+year;
       String tripCity=request.getParameter("tripCity");
       String tripId=request.getParameter("tripId");
       String driverId=request.getParameter("driver");
       String plateNumber=request.getParameter("bus");
       String exit=request.getParameter("exit");
       String enterance=request.getParameter("entrance");
       String driverIdNO="";
      Date today=new Date();
      Date dNow = new Date(date);
SimpleDateFormat ft =
new SimpleDateFormat ("MM/dd/yyyy hh:mm:ss ");
long d=dNow.getTime();
out.println(d-h);
out.println("<br>"+d);
out.print( "<h2 align=\"center\">" + ft.format(dNow) + "</h2>");

        try{    
          Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket","root",""); 
 PreparedStatement driv=con.prepareStatement("select * from driver");
                  ResultSet di=driv.executeQuery();
                  while(di.next()){
                  if(di.getString(1).equals(driverId)&&di.getString(5).equals("free")){
                  driverIdNO=di.getString(3);
                  driverCondtion=true;}}
                  PreparedStatement busdi=con.prepareStatement("SELECT * FROM `bus`");
                  ResultSet div=busdi.executeQuery();
                  while(div.next()){
                  if(div.getString(1).equals(plateNumber)&&div.getString(6).equals("free")){
                  busConditon=true;}}
                  if(busConditon&&driverCondtion){
            String stat= "insert into schedule(Date,plateNumber,exitTime,enteranceTime,tripId,driverName,driverId)"
                    +"values('"+date+"','"+plateNumber+"','"+exit+"','"+enterance+"','"+tripId+"','"+driverId+"','"+driverIdNO+"')";
            PreparedStatement insert=con.prepareStatement(stat);
            insert.execute();     
out.println("<font color='green'>Sucssfully Scheduled</font>");
String d="assigned";
 PreparedStatement driverUpd = con.prepareStatement("UPDATE driver SET status = '" + d+  "'WHERE fNam = '" +driverId+ "'");
                    driverUpd.executeUpdate();
  PreparedStatement busUpd = con.prepareStatement("UPDATE bus SET status = '" + d+  "'WHERE plateNumber = '" +plateNumber+ "'");
                    busUpd.executeUpdate();
}
        else
                  {
                  out.println("the driver was schedule past");}}
        
catch(Exception e){ 
out.println("<font color='red'>"+e+"</font>");
out.println("<script language=javascript>alert('could not insert data')</script>"+e);
//response.sendRedirect("new_ticket.jsp");

}
                
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td rowspan=\"2\"><input type=\"submit\" value=\"Schedule\" /></td>\n");
      out.write("                         <td rowspan=\"2\"><input type=\"Reset\" value=\"Reset\" /></td>\n");
      out.write("                        \n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("               \n");
      out.write("            </table>\n");
      out.write("           \n");
      out.write("        </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("   <div id=\"footer\">\n");
      out.write("\t  <p class=\"copyright\">Copyright &copy; 2016</p>\n");
      out.write("\t</div> </body>\n");
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
