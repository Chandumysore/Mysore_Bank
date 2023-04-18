
      
<%-- 
    Document   : customer_active
    Created on : 28 Dec, 2022, 7:49:00 PM
    Author     : Shivshankar
--%>
<%@include file="demo.jsp" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.*"%>
<%@page import="p1.db_connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<link href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
            <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>

            <script>
                $(document).ready(function () {
    $('#example').DataTable();
                  });
                </script>
    </head>
    <body>
      
        
            
        <table id="example" class="display" style="width:100%">
            <thead>   <tr>
                <th>From A/c</th> <th>NAME</th> <th>Amount</th><th>TO Account </th><th>Date</th><th>time</th>
                </tr></thead>
            <tbody>
          <% 
              String idd =  session.getAttribute("id").toString();
                 db_connection db = new db_connection(); 
                   Connection con=db.dbcon();
                
               String query = "select *  from t1 where toac=?;";
                   PreparedStatement ps = con.prepareStatement(query);
                   ps.setString(1, idd );
                   ResultSet rs= ps.executeQuery();
                  
                 
                while( rs.next())
                       {
                    
                   
                   out.println("<tr><td>"+rs.getString("ffrom")+"</td>");
                   out.println("<td>"+rs.getString("type")+"</td>");
                   out.println("<td>"+rs.getInt("amt")+"</td>");
                   out.println("<td>"+rs.getString("toac")+"</td>");
                   out.println("<td>"+rs.getString("date")+"</td>");
                   out.println("<td>"+rs.getString("time")+"</td>");
                   
                      }
                
               
         %>
                  </tbody> 
        </table>
              
                  
    
    </body>
</html>
       

