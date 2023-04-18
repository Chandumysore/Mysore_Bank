<%-- 
    Document   : h1
    Created on : Dec 22, 2022, 10:09:35 PM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="p1.db_connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="styles.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>


<%
    
     String custId =request.getParameter("text1");
     String pass =request.getParameter("pass");
     
         
     db_connection d=new db_connection();
     Connection con= d.dbcon();
        
     String query = "select cname  from cust where acno=? and pass=? and stuts=0;";
     PreparedStatement ps=con.prepareStatement(query);
       
     ps.setString(1,custId);
     ps.setString(2,pass);
                  
    ResultSet rs = ps.executeQuery();
  
   
 if(rs.next())
  {
        String name1=rs.getString("cname");
        
  
     //session=request.getSession(true);
   
          session.setAttribute("id",custId);
          session.setAttribute("name",name1);
      
        
         out.println("<script>window.location.replace('design.jsp')</script>");
    }
    else
    {
      
          RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
          rd.include(request, response);
          out.println("<h3 align='center' style='color:Red;'>INVALID CREDENCIAL OR User May not Approved  Contact Bank </h3>");
         
    }
    %>
    

</html>
