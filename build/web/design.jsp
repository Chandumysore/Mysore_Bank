<%-- 
    Document   : design
    Created on : Dec 28, 2022, 5:16:17 PM
    Author     : dell
--%>
<%@include file="demo.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="p1.db_connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<%
   
     
     String name = session.getAttribute("name").toString();
     String idd =  session.getAttribute("id").toString();
     
         
            db_connection d=new db_connection();
           Connection con= d.dbcon();
         
     String query = "select cname,acno ,pass ,bal from cust where acno=(?) and stuts=0;";
     PreparedStatement ps=con.prepareStatement(query);
       
     ps.setString(1,idd);
     
     ResultSet rs= ps.executeQuery();
     
  %>
  

  
  
  
  <%
        rs.next();
         out.println( "<h4 align='Right'>WELCOME  "+rs.getString("cname")+"</h3><br>");
         out.println( "<div> <h5 align='Right' >Account NUMBER = <b>"+idd+"</h5></div></b><br>");
       
        
       %>
       
<body>






   
</body>
</html> 

    </body>
</html>
