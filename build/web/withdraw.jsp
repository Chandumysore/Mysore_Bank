<%-- 
    Document   : limit
    Created on : Dec 29, 2022, 10:02:37 AM
    Author     : dell
--%>

<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
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
            int amt1 =Integer.parseInt(request.getParameter("amt"));
              out.println(amt1);
             String key =request.getParameter("pass");   
              out.println(key);
           String id =  session.getAttribute("id").toString();
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy "); 
            DateTimeFormatter dt = DateTimeFormatter.ofPattern("HH:mm:ss");  
            LocalDateTime now = LocalDateTime.now(); 
             String t = dt.format(now); 
             String d1 = dtf.format(now);  
            out.println(id);
             out.println(d1);
             out.println(t);
         
            db_connection d=new db_connection();
           Connection con= d.dbcon();
           
     String query = "select Count(toac),counter ,pass from t1 t ,cust c  where t.toac=c.acno and t.toac=(?) and  date=(?);";
     PreparedStatement ps=con.prepareStatement(query);
       
     ps.setString(1,id);
     ps.setString(2,d1);
     
     ResultSet rs= ps.executeQuery();
     out.println(rs);
     
     
     
     rs.next();
     int c =rs.getInt("Count(toac)");
     int c1 =rs.getInt("counter");
     String pass=rs.getString("pass").toString();
     out.println(c);
     out.println(c1);
     out.println("-----------");
     out.println(pass);
     
    
    if(pass.equals(key))
     {    
        
        
                 String querya = "select sum(amt),minbal,dlimit,bal from cust c,t1 t where c.acno = t.toac and t.toac=(?) and t.date=(?);";
                 
                 PreparedStatement psa =con.prepareStatement(querya);
                 psa.setString(1,id);
                 psa.setString(2,d1);
                  
                  
                 
                 ResultSet rsa = psa.executeQuery();
                
                 rsa.next();
               
                 
                 int balance = rsa.getInt("bal");
                 int sumamt =  rsa.getInt("sum(amt)");
                 int minbal =  rsa.getInt("minbal");
                 int dlimit =  rsa.getInt("dlimit");
                 int result = balance - amt1;
                 int resultt = sumamt+amt1;
                 out.println(result);
                 out.println(minbal);
                 
     
      if(result > minbal)
      {
           if(c < c1)
           {
                if(resultt < dlimit )
                {
                         
                       String query1 = " insert into t1(ffrom,type,amt,toac,date,time)values (?,?,?,?,?,?);";
                       PreparedStatement pss=con.prepareStatement(query1);
       
                         pss.setString(1,"self");
                         pss.setString(2,"debit");
                         pss.setInt(3,amt1);
                         pss.setString(4,id);
                         pss.setString(5,d1);
                         pss.setString(6,t);
  
                         int rss= pss.executeUpdate();
    

                                  if(rss>0)
                                       {
                                         String query111 = " update cust set bal=bal-(?) where acno=(?);";
                                         PreparedStatement psss=con.prepareStatement(query111);
                                         psss.setInt(1,amt1);
                                         psss.setString(2,id);
                                         int rsss= psss.executeUpdate();
              
                                        out.println("<script>alert('"+ amt1 +"debited at"+ t +"')</script>");
                                        out.println("<script>window.location.replace('design.jsp')</script>");
                                       }
                                  else
                                     {
                                         out.println("<script>alert('Somthing went wrong Amount will be not debited')</script>");
                                         out.println("<script>window.location.replace('design.jsp')</script>");
                                     }
                  }
                else
                  {
                      
                         out.println("<script>alert('You have crossed Daily Limit !')</script>");
                         out.println("<script>window.location.replace('design.jsp')</script>");
                    }
               
             }      
            else
              {
                          
                          out.println("<script>alert('Daily limit Expired !')</script>");
                          out.println("<script>window.location.replace('design.jsp')</script>");
                
               }
               
         }
        else
         {
            out.println("<script>alert('Can Not withdraw "+  minbal +" Minimum balance should be maintained OR No More fund!')</script>");
            out.println("<script>window.location.replace('design.jsp')</script>");
         } 
              
     }
          
    else
     {
         out.println("<script>alert('Password Missmatch !')</script>");
         out.println("<script>window.location.replace('design.jsp')</script>");
          
     }
            %>
    </body>
</html>

