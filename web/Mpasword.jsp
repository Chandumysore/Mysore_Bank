<%-- 
    Document   : Mpasword
    Created on : Dec 30, 2022, 1:33:56 AM
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
        <form class="form-horizontal" onsubmit="return fun()" method="post" action="passs.jsp" >
<fieldset>


<div class="form-group" align="center">
 
  <div class="col-md-4" >
  <input id="t2" name="pass1" type="text" placeholder=" Current Password" class="form-control input-md" required>
  <b><span id="d2" style="color:red"> </span></b>
  </div>
</div>
<br>
<div class="form-group" align="center">
 
  <div class="col-md-4" >
  <input id="t3" name="pass2" type="password" placeholder="New Password" class="form-control input-md" required>
  <b><span id="d2" style="color:red"> </span></b>
  </div>
</div>
<br>
<div class="form-group" align="center">

<div class="col-md-4">
        
        <button id="singlebutton" name="singlebutton" class="btn btn-primary" align="center" >Procced</button>
  </div>
</div>

</fieldset>
</form>
        
    </body>
    <script>
            function fun(){
               var com= document.getElementById("t3").value;
               var con= document.getElementById("t2").value;
               if(com == con )
               {
                 document.getElementById("d2").innerHTML="New password May not be Same!"; 
                 setTimeout("fun1()",3000);
                 return false;  
               }
               return true;
           }
               
             function fun1(){
                 
             document.getElementById("d2").innerHTML="  "; 
              }
               
            </script>
</html>
