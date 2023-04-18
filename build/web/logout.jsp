<%-- 
    Document   : mlogout
    Created on : Dec 30, 2022, 1:27:00 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center"><b>Logged Out Successfully</b></h1>
        <%
            session.getAttribute("id");
            session.invalidate();        
            out.println("<script>window.location.replace('index.jsp')</script>");
            
            
            %>
    </body>
</html>