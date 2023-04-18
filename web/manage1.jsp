
      
<%-- 
    Document   : customer_active
    Created on : 28 Dec, 2022, 7:49:00 PM
    Author     : Shivshankar
--%>
<%@include file="MMdemo.jsp" %>
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
        <%
         String name = (String)session.getAttribute("mname");

   %>
        <form action="manage2.jsp" method="post">
            
        <table id="example" class="display" style="width:100%">
            <thead>   <tr>
                <th>Account number</th> <th>NAME</th> <th>Contact number</th><th>address</th><th>balance</th><th>inactive</th>
                </tr></thead>
            <tbody>
            <% 
                 db_connection db = new db_connection(); 
                   Connection con=db.dbcon();
                
                String query = "select * from cust where stuts is NULL";
                   PreparedStatement ps = con.prepareStatement(query);
                  // ps.setInt(1,"NULL");
                    ResultSet rs= ps.executeQuery();
                  
                 
                while( rs.next())
                       {
                   String check=rs.getString("acno");  
                   
                   out.println("<tr><td>"+rs.getString("acno")+"</td>");
                   out.println("<td>"+rs.getString("cname")+"</td>");
                   out.println("<td>"+rs.getString("contact")+"</td>");
                   out.println("<td>"+rs.getString("address")+"</td>");
                   out.println("<td>"+rs.getString("bal")+"</td>");
                   out.println("<td><input type='checkbox' id='v1[]' name='v1' value='"+check+"'></td></tr>");
                      }
                
               
         %>
                  </tbody> 
        </table>
                   <div align='center'>
                <button class='btn btn-primary'>Approve </button>
                </div>
        </form>
            
    
    </body>
</html>
       
            </tbody> 
        </table>
        </form>
          
    
    </body>
</html>
