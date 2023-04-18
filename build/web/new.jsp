<%-- 
    Document   : new
    Created on : Dec 30, 2022, 12:05:45 PM
    Author     : dell
--%>
<%@include file="MMdemo.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String name = (String)session.getAttribute("mname");
            out.println( "<h4 align='Right'>WELCOME  "+ name +"</h3><br>"); 
        %>
    </body>
</html>

