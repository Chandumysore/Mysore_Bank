<%-- 
    Document   : changelimit
    Created on : Dec 30, 2022, 10:30:28 AM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.db_connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.getAttribute("mname").toString();
           String num = request.getParameter("num");
           String num1 = request.getParameter("num1");
           out.println(num);
     db_connection d=new db_connection();
     Connection con= d.dbcon();
        
     String query = "update  cust set dlimit=? and counter=? ;";
     PreparedStatement ps=con.prepareStatement(query);
       
     ps.setString(1,num1);
     ps.setString(2,num);
                  
    int rs = ps.executeUpdate();
    
    if(rs>0)
     {
        out.println("<script>alert('Data base Updated')</script>");
        out.println("<script>window.location.replace('dailylimit.jsp')</script>");
     }
    else
    {
        out.println("<script>alert('Something went wrong can not Update Data base')</script>");
        out.println("<script>window.location.replace('dailylimit.jsp')</script>");
    }

            %>
    </body>
</html>
