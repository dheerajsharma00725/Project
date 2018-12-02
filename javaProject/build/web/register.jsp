<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/registerstyle.css">

<title>Register</title>
<script>
    function validate()
{ 
 var email = document.form.email.value;
 var username = document.form.username.value; 
 var number = document.form.number.value; 
 var password = document.form.password.value;
 var conpassword= document.form.conpassword.value;
 
 
 else if (email==null || email=="")
 { 
 alert("Email can't be blank"); 
 return false; 
 }
 else if (username == null || username == "")
 { 
 alert("Username can't be blank"); 
 return false; 
 }
 if (number==null || number=="" || number.length<10)
 { 
 alert("Invalid Number"); 
 return false; 
 }
 else if(password.length<6)
 { 
 alert("Password must be at least 6 characters long."); 
 return false; 
 } 
 else if (password!=conpassword)
 { 
 alert("Confirm Password should match with the Password"); 
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
                <li><a class="homeblack" href="index.html">HOME</a></li>
                <li><a class="homeblack" href="find.jsp">GET RIDE</a></li>
                <li><a class="homered" href="login.jsp">LOGIN</a></li>
                
            </ul>
        </nav>
    </header>
    <div class="divider"></div>
    <div>
     <form class="box" action="RegisterServlet" method="post" onsubmit="return validate()">
     <input type="text" name="email" placeholder="Email ID"/>
  <input type="text" name="username" placeholder="Username">
  <input type="text" name="number" placeholder="Contact Number" />
  <input type="password" name="password" placeholder="Password">
  <input type="password" name="conpassword" placeholder="Confirm Passowrd" />
  
  <input type="submit"value="Register">
  <input type="reset" value="Reset">
  </div>
       </form>
    
</body>
</html>