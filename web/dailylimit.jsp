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
          String name =session.getAttribute("mname").toString();
   
   %>
   
   
   <form action="changelimit.jsp" method="post">
   <div class="form-group" align="center">
 
  <div class="col-md-4">
  <input id="textinput" name="num" type="number" placeholder="Set daily Limit " class="form-control input-md" required>
  
  </div>
</div>
       <br>
    <div class="form-group" align="center">
 
  <div class="col-md-4">
  <input id="textinput" name="num1" type="number" placeholder="Transaction limi " class="form-control input-md" required>
  
  </div>
</div>
   
   <div class="form-group" align="center">
  
    <div class="col-md-4">

        <br>
    
    
 
    <button id="singlebutton" name="singlebutton" class="btn btn-primary" onclick=" ">Procced</button>
  </div>
</div>
   </form>
    </body>
</html>
