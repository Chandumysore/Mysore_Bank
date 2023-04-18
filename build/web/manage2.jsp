<%-- 
    Document   : manage2
    Created on : Dec 25, 2022, 9:59:38 PM
    Author     : dell
--%>

<%@include file="MMdemo.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="p1.db_connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <!--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> -->
        <title>JSP Page</title>
    </head>
    <%
        String h = session.getAttribute("mname").toString();
        
        out.println(h);
      String[] name = request.getParameterValues("v1");
        
        db_connection d=new db_connection();
           Connection con= d.dbcon();
           
        
         for(int i=0;i<name.length;i++)
       {
           out.println("name="+name[i]);
           String query = "update cust set stuts=0 where acno=?";
           PreparedStatement ps=con.prepareStatement(query);
             ps.setString(1,name[i]);
             int rs =ps.executeUpdate();
             out.println(rs);
          
       }
     
         
        String query1 = "select acno,cname,contact,address,bal from cust where stuts IS NULL";
            PreparedStatement pa=con.prepareStatement(query1);
       
       ResultSet rss= pa.executeQuery();

        out.println("<script>window.location.replace('manage1.jsp')</script>");
       %>
    <body>
        
    </body>
</html>
