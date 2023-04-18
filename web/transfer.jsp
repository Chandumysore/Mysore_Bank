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
        
    </head>
    <body>
        <%
            String ac =request.getParameter("acno");
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
           
     String query = "select count(t.toac)as ct,c.counter ,c.pass from t1 t ,cust c  where t.toac=c.acno and t.toac=? and t.date=?;";
     PreparedStatement ps=con.prepareStatement(query);
       
     ps.setString(1,id);
     ps.setString(2,d1);
     
     ResultSet rs= ps.executeQuery();
     out.println(rs);
     
     
     
     rs.next();
     int c =rs.getInt("ct");
     int c1 =rs.getInt("counter");
     String pass=rs.getString("pass").toString();
     out.println(c);
     out.println(c1);
     out.println("-----------");
     out.println(pass);
     String querya9 = "select cname from cust where acno=(?) and stuts=0 ;";
                                        PreparedStatement psr =con.prepareStatement(querya9);
                                         psr.setString(1,ac);
                                         ResultSet rsr = psr.executeQuery();
     
    
            if(rsr.next())
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
                                        
                                         
                                         
                                         
                    if(pass.equals(key))
                    {   
                           if(result > minbal)
                           {
                                if(c < c1)
                                {
                                    if(resultt < dlimit )
                                    {
                           
                                            String query1 = " insert into t1(ffrom,type,amt,toac,date,time)values(?,?,?,?,?,?);";
                                            PreparedStatement ps1=con.prepareStatement(query1);
       
                                            ps1.setString(1,id);
                                            ps1.setString(2,"credit_to_");
                                            ps1.setInt(3,amt1);
                                            ps1.setString(4,ac);
                                            ps1.setString(5,d1);
                                            ps1.setString(6,t);
     
                                           String query2 = " insert into t1(ffrom,type,amt,toac,date,time)values(?,?,?,?,?,?);";
                                           PreparedStatement ps2=con.prepareStatement(query2);
       
                                          ps2.setString(1,ac);
                                          ps2.setString(2,"debit");
                                          ps2.setInt(3,amt1);
                                          ps2.setString(4,id);
                                          ps2.setString(5,d1);
                                          ps2.setString(6,t);
  
                                             int rsc= ps1.executeUpdate();
                                              int rsb= ps2.executeUpdate();

                                                  if(rsc > 0 && rsb > 0)
                                                   {
                                                         String query3 = " update cust set bal=bal-(?) where acno=(?);";
                                                           PreparedStatement ps3=con.prepareStatement(query3);
                                                         ps3.setInt(1,amt1);
                                                         ps3.setString(2,id);
                                                           String query4 = " update cust set bal=bal+(?) where acno=(?);";
                                                          PreparedStatement ps4=con.prepareStatement(query4);
                                                            ps4.setInt(1,amt1);
                                                             ps4.setString(2,ac);
                                                             int rsd= ps3.executeUpdate();
                                                            int rsf= ps4.executeUpdate();
        
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
                      
                                       out.println("<script>alert('You have crossed Daily Limit is"+ dlimit +"!')</script>");
                                       out.println("<script>window.location.replace('design.jsp')</script>");
                                    }
               
                               }      
                               else
                                {
                          
                                     out.println("<script>alert('Daily limit is"+ c1 +" Expired !')</script>");
                                     out.println("<script>window.location.replace('design.jsp')</script>");
                
                                }
               
                           }
                          else
                           {
                              out.println("<script>alert('Can Not withdraw "+  minbal +" Minimum balance should be maintained!')</script>");
                              out.println("<script>window.location.replace('design.jsp')</script>");
                            } 
              
                     }
                   else
                    {
                      out.println("<script>alert('Password Missmatch !')</script>");
                      out.println("<script>window.location.replace('design.jsp')</script>");
                    }
            }
            else
             {
                out.println("<script>alert('A/c not found Number__"+ ac +"__ OR A/c is inactive')</script>");
                out.println("<script>window.location.replace('design.jsp')</script>");  
              }
%>
    </body>
</html>






