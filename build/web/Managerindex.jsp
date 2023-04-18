<%-- 
    Document   : Managerindex
    Created on : Dec 22, 2022, 10:50:34 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
             <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <div style="background-color:#111; height:100px">
            <br>
    <h1 align="center" style="color: #f1f1f1">MYSORE RURAL BANK</h1>
    </div>
    <marquee> <h3 style="color: red"><b>MYSORE RURAL BANK<b> </h3></marquee>
</head>
    <body>
<form  class="form-horizontal" method="post" action="validation.jsp">
<fieldset>

   
    <br>
    
    <!-- Text input-->
<div class="form-group" align="center">
 
  <div class="col-md-4">
  <input id="text11" name="text1" type="text" placeholder="_ID_" class="form-control input-md">
  
  </div>
</div>
    
    <br>  
<!-- Password input-->
<div class="form-group" align="center">
  
  <div class="col-md-4">
    <input id="pass1" name="pass" type="password" placeholder="PASSWORD" class="form-control input-md">
   
  </div>
</div>
<br>
<span id="in" style="color:red; font-weight:bold; display:none"> INVALID CREDENTIAL </span>
<!-- Button -->
<div class="form-group" align="center">
  
    <div class="col-md-4">
       
    
    
    
 
        <button id="singlebutton" name="singlebutton" class="btn btn-primary" >Login</button>
  </div>
</div>



</fieldset>
</form>
    </body>
   
      
  </html>
