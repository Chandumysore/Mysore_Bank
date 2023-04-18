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
            String m =request.getParameter("text1");
            String pass =request.getParameter("pass");
     
         
     db_connection d=new db_connection();
     Connection con= d.dbcon();
        
     String query = "select Mname, pass from manager where ID=? and pass=? ;";
     PreparedStatement ps=con.prepareStatement(query);
       
     ps.setString(1,m );
     ps.setString(2,pass);
                  
    ResultSet rs = ps.executeQuery();
 

  
 
   
   if(rs.next())
  {
        String name =rs.getString("Mname");
        session.setAttribute("mname",name);
        out.println("<script>window.location.replace('new.jsp')</script>");
        
    }
    else
    {     
          out.println("<script>alert(' Invalid Password or ')</script>");
          RequestDispatcher rd=request.getRequestDispatcher("Managerindex.jsp");
          rd.forward(request, response);
          out.println("<h3 align='center' style='color:Red;'>INVALID CREDENCIAL OR User May not Approved  Contact Bank </h3>");
         
    }
    %>
    </body>
</html>
