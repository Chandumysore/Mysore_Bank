<%-- 
    Document   : signup1.jsp
    Created on : Dec 25, 2022, 2:15:15 PM
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
        <form class="form-horizontal" onsubmit="return fun()" name="formhere" method="post" action="sign2.jsp" >
<fieldset>

<!-- Form Name -->


<!-- Text input-->
<div class="form-group" align="center">
 
  <div class="col-md-4">
      <input id="textinput" name="text1" type="text" placeholder="Name" class="form-control input-md" required>
 
  </div>
</div>
<br>
<div class="form-group" align="center">
 
  <div class="col-md-4" >
  <input id="t2" name="text2" type="number" placeholder="Contact No" class="form-control input-md" required>
  <b><span id="d2" style="color:red"></span></b>
  </div>
</div>
<br>
<div class="form-group" align="center">
 
  <div class="col-md-4" >
  <input id="textinput" name="text3" type="text" placeholder="Address" class="form-control input-md" required>
 
  </div>
</div>
<br>
<div class="form-group" align="center">
 
  <div class="col-md-4" >
  <input id="t1" name="text4" type="password" placeholder="password" class="form-control input-md" required>
 
  </div>
</div>
<br>
<div class="form-group" align="center">
 
  <div class="col-md-4" >
  <input id="tt" name="text" type="password" placeholder="conform password" class="form-control input-md" required>
  <b><span id="d1" style="color:red"></span></b>
  </div>
</div>
<br>
<div class="form-group" align="center">
  Select a Hint for your password Recovery
  <div class="col-md-4">
    <select id="selectbasic" name="selectbasic" class="form-control">
      <option value="1">your First school studied</option>
      <option value="2">your fav teacher name</option>
      <option value="2">your pet name</option>
      <option value="2">your first GF name</option>
      <option value="2">your second GF name</option>
    </select>
  </div>
</div>
<br>
<div class="form-group" align="center">
 
  <div class="col-md-4">
       
  <input id="textinput" name="text5" type="text" placeholder="Hint" class="form-control input-md" required>
 
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
        <script>
            function fun(){
             
               var con= document.getElementById("t2").value;
               if(con.length!=10 )
               {
                 document.getElementById("d2").innerHTML="Phone number must be 10 Digit!"; 
                 setTimeout("fun1()",3000);
                  return false;  
               }
               
                var a=document.getElementById("t1").value
                var b=document.getElementById("tt").value
                if(a != b)
                {
                  document.getElementById("d1").innerHTML="conform password Does not match!"; 
                  setTimeout("fun2()",3000);
                  return false;
                }
                  return true;
                }
             function fun1(){
                 
             document.getElementById("d2").innerHTML="  "; 
              }
               function fun2(){
    
                       document.getElementById("d1").innerHTML="  "; 
               }
            </script>
            
    </body>
</html>
