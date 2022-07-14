<%-- 
    Document   : absentPassenger
    Created on : May 9, 2016, 6:37:14 AM
    Author     : Tigist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> <%
            
      if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")) 
      {
         out.println("<script>alert('please first login');</script>"); 
          response.sendRedirect("../login.jsp");
      }
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
