<%-- 
    Document   : demo
    Created on : Dec 28, 2022, 9:43:53 PM
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
<%  String id =  session.getAttribute("id").toString(); %>
<style>
body {
  font-family: "Lato", sans-serif;
  
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

#main {
  transition: margin-left .5s;
  padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
<body>
    
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="deposite1.jsp">Deposite</a>
  <a href="change.jsp">password reset</a>
  <a href="withdra1.jsp">Withdraw</a>
  <a href="tranfer1.jsp">Transfer</a>
  <a href="bal.jsp">Balance</a>
  <a href="passbook.jsp">Pass Book</a>
  <a href="logout.jsp">Logout</a>
</div>

  <div id="main">
 
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;Options</span>
</div>

</body>
</html>
<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "200px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>
