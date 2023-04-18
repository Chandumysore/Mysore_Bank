<%-- 
    Document   : sign2
    Created on : Dec 23, 2022, 6:54:49 PM
    Author     : dell
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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


        
         String s="mys01";
         for (int i = 1; i <6 ; i++)
         {
            int rand= (int)(Math.random()*10);
            String a=Integer.toString(rand);
            s+=a;
         }
         
         String t1=request.getParameter("text1");
         String t2=request.getParameter("text2");
         String t3=request.getParameter("text3");
         String t4=request.getParameter("text4");
         String t5=request.getParameter("text5");
         
         db_connection d=new db_connection();
           Connection con= d.dbcon();
           
     String query = "insert into cust(acno,cname,contact,address,pass,hint,bal,counter,minbal,dlimit)values(?,?,?,?,?,?,?,?,?,?);";
     PreparedStatement ps=con.prepareStatement(query);
       
     ps.setString(1,s);
     ps.setString(2,t1);
     ps.setString(3,t2);
     ps.setString(4,t3);
     ps.setString(5,t4);
     ps.setString(6,t5);
     ps.setInt(7,0);
     ps.setInt(8,5);
     ps.setInt(9,500);
     ps.setInt(10,40000);
     int rs=ps.executeUpdate();
     if(rs>0)
     {
        out.println("<script>alert('A/C NO="+s+"PASSWORD= *****')</script>");
        out.println("<script>window.location.replace('index.jsp')</script>");
     }

        
        %>
    </body>
</html>
