<%-- 
    Document   : dailylimit
    Created on : Dec 29, 2022, 12:34:47 PM
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
           String id = session.getAttribute("mname").toString();
           
           String pass2 = request.getParameter("pass2");
           
     db_connection d=new db_connection();
     Connection con= d.dbcon();
        
     String query = "update  manager set pass=? where Mname=? ;";
     PreparedStatement ps=con.prepareStatement(query);
       
     ps.setString(1,pass2);
     ps.setString(2,id);
                  
    int rs = ps.executeUpdate();
    
    if(rs>0)
     {
        out.println("<script>alert(' Password Updated !')</script>");
        out.println("<script>window.location.replace('manager.jsp')</script>");
     }
    else
    {
        out.println("<script>alert('Something went wrong can not Update to Data base')</script>");
        out.println("<script>window.location.replace('manager.jsp')</script>");
    }

            %>
    </body>
   
</html>

