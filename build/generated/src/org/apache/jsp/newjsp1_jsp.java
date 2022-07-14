package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class newjsp1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<html><head>  \n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\"> \n");
      out.write("    </head>\n");
      out.write("<body>     ");

           boolean driverCondtion=false,busConditon=false;

            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
      out.write("\n");
      out.write("  <form name=\"frm\" action=\"newjsp1.jsp\" method=\"POST\">\n");
      out.write("            <table>\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Date</td>\n");
      out.write("                        <td><input type=\"text\" name=\"date\" value=\"\" /></td>\n");
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


PreparedStatement pst=null;    
       String date=request.getParameter("date");
       String tripCity=request.getParameter("tripCity");
       String tripId=request.getParameter("tripId");
       String driverId=request.getParameter("driver");
       String plateNumber=request.getParameter("bus");
       String exit=request.getParameter("exit");
       String enterance=request.getParameter("entrance");
       String driverIdNO="";
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
                
      out.write("\n");
      out.write("                </td></tr>\n");
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
      out.write("                        \n");
      out.write("    <script>  \n");
      out.write("    ");

             String sql="SELECT * FROM `trip`";
            String clock="";
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sql);
      rs=ps.executeQuery();
      while(rs.next()){
      if(rs.getString(1).equals(request.getParameter("tripId"))){
      clock=rs.getString(5);
      out.println(clock);
      }
      }
      }
    catch(Exception e){
out.println(e);
}
    
      out.write("\n");
      out.write("<!--  \n");
  
if( clock == null ) clock = "5";  

      out.write("  \n");
      out.write("var timeout = ");
      out.print(clock);
      out.write(";  \n");
      out.write("function timer()  \n");
      out.write("{  \n");
      out.write("if( --timeout > 0 )  \n");
      out.write("{  \n");
      out.write("document.forma.clock.value = timeout;  \n");
      out.write("window.setTimeout( \"timer()\", 1000 );  \n");
      out.write("}  \n");
      out.write("else  \n");
      out.write("{  \n");
      out.write("    document.forma.clock.value = \"Time over\";  \n");
      out.write("\n");
      out.write("    \n");
      out.write("///disable submit-button etc  \n");
      out.write("}  \n");
      out.write("}  \n");
      out.write("//-->  \n");
      out.write("</script>  \n");
      out.write("<form action=\"");
      out.print(request.getRequestURL());
      out.write("\" name=\"forma\">  \n");
      out.write("Seconds remaining: <input type=\"text\" name=\"clock\" value=\"");
      out.print(clock);
      out.write("\" style=\"border:0px solid white\">  \n");
      out.write("...  \n");
      out.write("</form>  \n");
      out.write("<script>  \n");
      out.write("<!--  \n");
      out.write("timer();  \n");
      out.write("//-->  \n");
      out.write("</script>  \n");
      out.write("</body></html>");
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
