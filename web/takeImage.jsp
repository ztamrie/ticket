<%-- 
    Document   : takeImage
    Created on : Apr 25, 2016, 8:38:41 AM
    Author     : Tigist
--%>

<%@page import="com.googlecode.javacv.cpp.opencv_core.IplImage"%>
<%@page import="com.googlecode.javacv.OpenCVFrameGrabber"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        IplImage img;  // Image format provided with JavaCV APIs
                OpenCVFrameGrabber grabber = new OpenCVFrameGrabber(0); // Camera Device ID (0 for built in , 1 for external etc)

                grabber.start();

                img = grabber.grab();

                String imageName="images_name.jpg";
              // cvSaveImage(imageName, img);
                %>
    </body>
</html>
