<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
        <style>
           body{
  margin: 0;
  font-family: sans-serif;
  background: #34495e;
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

#nav{
    font-family: 'Montserrat', sans-serif;
}

#nav{
    font-family: 'Montserrat', sans-serif;
}
.homered{
    background-color: red;
    padding: 30px 10px 16px 10px;
}
.divider{
    background-color: red;
    height: 10px;
    padding-top: 15px;
}
.homeblack:hover{
    background-color:grey;
    padding: 30px 10px 16px 10px;
}
.homesub{
        font-family: 'Raleway', sans-serif;
        margin: 0;
        padding: 9% 5% 0% 55%;
        font-size: 25px;
        color: yellow;
    }
    .homedes{
        font-family: 'Raleway', sans-serif;
        margin: 0.5% 0% 0% 55%;
        font-size: 75px;
        color: white;
        background-color: rgba(0,0,0,0.4);
        display: inline-block
    }
    .homepool{
        font-family: 'Oswald' ,sans-serif;
        margin: 0% 0% 0% 55%;
        font-size: 64px;
        color: black;
        display: inline-block;  
        }
        .homebutton{
            margin: 0% 0% 0% 55%;
            background: yellow;
            color:black;
            border: none;
            height:50px;
            font-size:  1.4em;  
            padding: 0 1em;
            cursor: pointer;
            outline : none;
            font-family: 'Raleway', sans-serif;

        }
        </style>
    </head>
   <body>
       <% 
           response.setHeader("Cache-Control","no-cache, no-store ,must-revalidate");
           response.setHeader("Pragma","no-cache");
           response.setHeader("Expires","0");
           
        if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login.jsp");
        }
        %>
     <header>
        <nav>
            <h1>CarPool</h1>
        </nav>
     </header>
    <div class="divider"></div>
    <div>
        <h2 class="homesub">WELCOME!!<span style="color:white"> ${username}
         </span></h2>
        <h1 class="homedes">CAR</h1>
        <h1 class="homepool">POOLING</h1>
        <br><br>
        <a href="offer.jsp">
            <button class="homebutton" >OffEr A riDE</button>
        </a></div>
        <br>
        <a href="login.jsp">
            <button class="homebutton" >Logout</button>
        </a>
        </div>
     </header>
    </body>
</html>
