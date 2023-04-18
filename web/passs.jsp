<%-- 
    Document   : validation
    Created on : Dec 27, 2022, 9:30:34 PM
    Author     : dell
--%>
<%@include file="MMdemo.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="p1.db_connection"%>
<%@page import="p1.db_connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String pass1 =request.getParameter("pass1");
            String pass2 =request.getParameter("pass2");
            String name = (String)session.getAttribute("mname");
         
     db_connection d=new db_connection();
     Connection con= d.dbcon();
        
     String query = "update manager set  pass=? where Mname=? ;";
     PreparedStatement ps=con.prepareStatement(query);
     
      ps.setString(1,pass2);
      ps.setString(2 ,name);
   
     
                  
    int rs = ps.executeUpdate();
 

  
 
   
   if(rs > 0)
  {
        
        out.println("<script>alert(' Password Updated ')</script>");
        out.println("<script>window.location.replace('Mpasword.jsp')</script>");
        
    }
    else
    {     
          out.println("<script>alert(' Failed Updation of Password or Id')</script>");
         out.println("<script>window.location.replace('Mpasword.jsp')</script>");
          out.println("<h3 align='center' style='color:Red;'>INVALID CREDENCIAL OR User May not Approved  Contact Bank </h3>");
         
    }
    %>
    </body>
</html>




