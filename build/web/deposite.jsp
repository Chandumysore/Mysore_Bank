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

            String passs = request.getParameter("pass");
            
            String idd = session.getAttribute("id").toString();
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy ");
            DateTimeFormatter dt = DateTimeFormatter.ofPattern("HH:mm:ss");
            LocalDateTime now = LocalDateTime.now();
            String t = dt.format(now);
            String d1 = dtf.format(now);
             out.println(idd);
            db_connection d = new db_connection();
            Connection con = d.dbcon();
            
           
           String query = "select count(t.toac)as ct,c.counter ,c.pass from t1 t ,cust c  where t.toac=c.acno and t.toac=? and t.date=?;";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, idd);
            ps.setString( 2, d1);
            ResultSet rs = ps.executeQuery();

            rs.next();
            int c = rs.getInt("ct");
            int c1 = rs.getInt("counter");
            String pass = rs.getString("pass");
            
            out.println(passs);
            if (pass.equals(passs)) {
                if (c < c1) {
                    String query5 = "select count(toac),counter  from t1 t ,cust c  where t.toac=c.acno and date=?;";
                    PreparedStatement ps5 = con.prepareStatement(query5);

                    ps5.setString(1, d1);
                    ResultSet rs5 = ps5.executeQuery();

                    int amt1 = Integer.parseInt(request.getParameter("amt"));

                    String query1 = " insert into t1(ffrom,type,amt,toac,date,time)values (?,?,?,?,?,?);";
                    PreparedStatement pss = con.prepareStatement(query1);

                    pss.setString(1, "self");
                    pss.setString(2, "credit");
                    pss.setInt(3, amt1);
                    pss.setString(4, idd);
                    pss.setString(5, d1);
                    pss.setString(6, t);

                    int rss = pss.executeUpdate();

                    if (rss > 0) {
                        String query111 = " update cust set bal=bal+(?) where acno=(?);";
                        PreparedStatement psss = con.prepareStatement(query111);
                        psss.setInt(1, amt1);
                        psss.setString(2, idd);
                        int rsss = psss.executeUpdate();

                        out.println("<script>alert('" + amt1 + "Credited at" + t + "')</script>");
                        out.println("<script>window.location.replace('design.jsp')</script>");
                    } else {
                        out.println("<script>alert('Somthing went wrong Amount will be not debited')</script>");
                        out.println("<script>window.location.replace('design.jsp')</script>");
                    }
                } else {
                    out.println("<script>alert('Daily limit Expired !')</script>");
                    out.println("<script>window.location.replace('design.jsp')</script>");

                }
            } else {
                out.println("<script>alert('Password Missmatch !')</script>");
                out.println("<script>window.location.replace('design.jsp')</script>");

            }
        %>
    </body>
</html>

