<%-- 
    Document   : bal
    Created on : Dec 29, 2022, 2:41:47 PM
    Author     : dell
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="p1.db_connection"%>
<%@include file="demo.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <% String acno = session.getAttribute("id").toString();
                
           
            db_connection d=new db_connection();
           Connection con= d.dbcon();
           
     String query = "select cname, bal  from cust where acno=?  ;";
     PreparedStatement ps=con.prepareStatement(query);
       
     ps.setString(1,acno);
     
     ResultSet rs= ps.executeQuery();
     
     
     
    
    
     
         
        rs.next();
         out.println( "<h4 align='Right'>WELCOME  "+rs.getString("cname")+"</h3><br>");
          out.println( "<div> <h5 align='Right' >Account NUMBER =  your A/c No<b>"+ acno +"</h5></div></b><br>");
       
        out.println( "<h1 align='center' id='r1'>Balance = "+ rs.getString("bal")+"</h1><br><br>");
       
     
        %>
    </body>
</html>
