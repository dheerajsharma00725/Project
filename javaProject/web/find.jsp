<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html><head>
<style>
body{
  margin: 0;
  padding: 0;
  font-family: sans-serif;
  background: #cccccc;
}
.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}
.topnav-right {
  float: right;
}


.topnav a.active {
    background-color: #4CAF50;
  color: white;
}
.TitleGrey {
    font-family: Comfortaa, arial, sans-serif;
    font-weight: 600;
    font-style: normal;
    color: #585857;
    font-size: 29px;
    line-height: normal;
}
.innerGrey {
    font-family: Comfortaa, arial, sans-serif;
    font-weight: 500;
    font-style: normal;
    color: #585857;
    font-size: 20px;
    line-height: normal;
}
input[type=text] {
    width: 30%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 7px solid #555;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    outline: none;
}

input[type=text]:focus {
    border: 5px solid #555;
}
input[type=date] {
    width: 30%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 7px solid #555;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    outline: none;
}

input[type=date]:focus {
    border: 5px solid #555;
}
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: grey;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
header{
    background: black;
    color: white;
    padding: 8px 0px 6px 40px;
    height: 45px;
}
header h1{
    display: inline;
    font-family: 'Oswald' ,sans-serif;
    font-weight: 400;
    font-size: 32px;
    float: left;
    margin-top: 0px;
    margin-right: 10px ;
}
nav ul{
    display: inline;
    padding: 0px;
    float: left;
}
nav ul li{
   display: inline-block;
   list-style-type: none;
   color: white;
   margin-right: 12px;
}
nav ul li a{
    color: white;
    text-decoration: none;
}
.homered{
    background-color: red;
    padding: 30px 10px 16px 10px;
}
.divider{
    background-color: red;
    height: 10px;
}
.homeblack:hover{
    background-color: grey;
    padding: 30px 10px 16px 10px;
}
</style>
<script>
    function validate()
{ 
 var start = document.form.username.value; 
 var drop= document.form.password.value;
 
 if (start==null || start=="")
 { 
 alert("Start Point cannot be blank"); 
 return false; 
 }
 else if(drop==null || drop=="")
 { 
 alert("Dropping Point cannot be blank"); 
 return false; 
 } 
}
</script>
</head>
<body>
        <header>
        <nav>
            <h1>CarPool</h1>
            <ul id="nav">
                <li><a class="homeblack" href="index.html">HOME</a></li
                <li><a class="homered" href="get.jsp">FIND RIDE</a></li>
                <li><a class="homeblack" href="login.jsp">LOGIN</a></li>
                
            </ul>
        </nav>
    </header>
    <div class="divider"></div>
<br>
<br>
<form class="box" action="ride.jsp" method="post" onsubmit="return validate()">
    <center>
  <div class="innerGrey">Pickup And Drop-off Points
<br>
<br>
<br>
 <label for="fname">Pickup point</label><br>
<input type="text" id="fname" name="start" placeholder="Enter location for pickup">
<br>
<br>
 <label for="fname">Drop-off point</label><br>
 <input type="text" id="fname" name="end" placeholder="Enter your dropping location"></div>
<div class="TitleGrey">
<br>
<label for="fname">Date</label><br>
<input type="date" id="fname" name="fname" placeholder="Enter date">
<br>
<input class="button" type="submit"value="FIND">
      <span style="color:red">
         <%=(request.getAttribute("errMessage") == null) ? "": request.getAttribute("errMessage")%>
     </span>
    </div>
     </center>
</form>
</body>
</html>
