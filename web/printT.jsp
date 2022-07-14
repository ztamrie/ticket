<%@page import="java.io.InputStream"%>
<%@page import="java.sql.*" %>
<form name="print" action="printT.jsp" method="POST">
    Enter your Ticket number<input type="text" name="id" value="" />  
    <input type="submit" value="Next" />
</form>
<script language="javascript">
   
function Clickheretoprint()
{ 
  var disp_setting="toolbar=yes,location=no,directories=yes,menubar=yes,"; 
      disp_setting+="scrollbars=yes,width=400, height=400, left=100, top=25"; 
  var content_vlue = document.getElementById("print_content").innerHTML; 
  
  var docprint=window.open("","",disp_setting); 
   docprint.document.open(); 
   docprint.document.write('<html><head><title>Inel Power System</title>'); 
   docprint.document.write('</head><body onLoad="self.print()" style="width: 400px; font-size:12px; font-family:arial;">');          
   docprint.document.write(content_vlue);          
   docprint.document.write('</body></html>'); 
   docprint.document.close(); 
   docprint.focus(); 
}
</script>
Print and present this details upon boarding the bus<br><br>
<div id="print_content" style="width: 400px;">
<strong>Ticket Reservation Details</strong><br><br>
<table style="border-collapse:collapse; border:5px solid green; " align="center" width="100%" bgcolor="#6699CC">
<%
    
	    Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String id=request.getParameter("id");
            String sql="SELECT * FROM `ticket`";
          
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sql);
     
             rs=ps.executeQuery();
             while(rs.next()){
                 if(rs.getString("ticketNumber").equals(id)){
             
            String ticketNumber=rs.getString("ticketNumber");
            String plateNumber=rs.getString("plateNumber");
            String passengerId=rs.getString("passengerId");
            String tripId=rs.getString("tripId");
            String date=rs.getString("date");
            String seatNumber=rs.getString("seatNumber");
           
            

           /*
                   InputStream sImage;
            try{
            PreparedStatement psmnt = con.prepareStatement("SELECT photo FROM passenger WHERE id = ?");
            psmnt.setString(1, id);
                rs = psmnt.executeQuery();
                if(rs.next()) {
                      byte[] bytearray = new byte[1048576];
                      int size=0;
                      sImage = rs.getBinaryStream(1);
                      //response.reset();
                      response.setContentType("image/jpeg");

                      while((size=sImage.read(bytearray))!= -1 ){

                            response.getOutputStream().write(bytearray,0,size);
				      }
			    }}
            catch(Exception e){
            out.println(e);}
                   */
	  out.println("<tr><td>Ticket Number</td><td><font color='black'>"+ticketNumber+"</font></td><td colspan='6' id='photo'></td></tr>");
	  out.println("<tr><td>Plate Number</td><td><font color='black'>"+plateNumber+"</font></td></tr>");
	  out.println("<tr><td>Passenger Id</td><td><font color='black'>"+passengerId+"</font></td></tr>");
	  out.println("<tr><td>trip Id</td><td><font color='black'>"+tripId+"</font></td></tr>");
	  out.println("<tr><td>Date</td><td><font color='black'>"+date+"</font></td><tr>");	
	  out.println("<tr><td>Seat Number</td><td><font color='black'>"+seatNumber+"</font></td></tr>");
          out.println("<tr><td>Photo</td><td><img src='"+rs.getString(7)+"'/>"+"</td></tr>");
             }  
      
      }}
      catch(SQLException e){
      out.println(e);
      }
%>
<a href="javascript:Clickheretoprint()"><img src="images/print.jpg"></a>
<a href="index.jsp">Home</a>
</div>

