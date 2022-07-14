
        <%@page import="java.sql.*"%>
<%
            String userName=request.getParameter("uname");
            String password=request.getParameter("pass");
            String type=request.getParameter("userType");
            %>
            <%
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String driverName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/ticket";
            String user="root";
            String dbpasw="";
            String sql="select * from account";
      if(!(userName.equals("")) && !(password.equals(""))){
      try{
      Class.forName(driverName);
      con=DriverManager.getConnection(url, user, dbpasw);
      ps=con.prepareStatement(sql);
     
      rs=ps.executeQuery();
            while(rs.next()){
            String u=rs.getString("userName");
            String p=rs.getString("password");
            Statement st=con.createStatement();
            if((u.equals(userName)&&p.equals(password))&&type.equals("admin")){
                session.setAttribute("uname", u);
                response.sendRedirect("admin.jsp");
                
            }
            else if((u.equals(userName)&&p.equals(password))&&type.equals("seller")){
                session.setAttribute("seller", u);
                response.sendRedirect("seller/home.jsp");
                
            }
            else if((u.equals(userName)&&p.equals(password))&&type.equals("attendant")){
                session.setAttribute("ustype", u);
                response.sendRedirect("attendant/home.jsp");
                
            }
             else if((u.equals(userName)&&p.equals(password))&&type.equals("driver")){
                session.setAttribute("driver", u);
                response.sendRedirect("driverStatus.jsp");
                
            }
         else
                out.println("the password or usrname or user type is not correct");
            }
      
      }
      catch(SQLException e){
      out.println(e);
      }
      
      }
            %>
