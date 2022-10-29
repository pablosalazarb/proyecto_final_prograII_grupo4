<%-- 
    Document   : index
    Created on : 22-oct-2022, 9:12:36
    Author     : susan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="https://raw.githubusercontent.com/Suzzanne20/ResourceNekoStation/main/chiphd_106075.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >
        <link href="static/css/logStyle.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        
    </head>
    <body>               
    <div class="container"> <c:if test="${success ==0}"> <div class="alert alert-danger" id="error">${mensaje}</div></c:if>
      <input type="checkbox" id="flip">  
      <div class="cover">
        <div class="front"><img src="https://st3.depositphotos.com/4678277/35807/i/600/depositphotos_358072788-stock-photo-top-above-high-angle-view.jpg" alt=""></div>
        <div class="back"> <img class="" src="https://purelifi.com/wp-content/uploads/2019/02/AdobeStock_118793641-1320x740.jpeg" alt="">
        <div class="text"> <span class="text-1">Complete miles of journey <br> with one step</span> <span class="text-2">Let's get started</span> </div> </div> 
      </div>
     <!-------- LOGIN --------->        
     <div class="forms"> <div class="form-content"> 
        <div class="login-form">
        <div class="title">Login</div> <form action="NewServlet" method="POST">
        <div class="input-boxes">
            <div class="input-box"> 
                <i class="fas fa-envelope"></i>
                <input type="text" required="required" name="mail" placeholder="Enter your email">
            </div>
            <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" required="required" name="pass" placeholder="Enter your password">
            </div>
            <div class="text"><a href="#">Forgot password?</a></div> <!-- Boton LOG --> 
            <div class="button input-box"> <input type="submit" value="Login"></div>
            <div class="text sign-up-text">Don't have an account? <label for="flip">Sing up now</label></div>
        </div> </form>
      </div>
     <!-------- SIGN UP --------->         
     <div class="signup-form"><form method="POST" action="ServletUser" id="form">
        <div class="title">Sing up</div>
        <div class="input-boxes"> <div class="input-box">
            <i class="fa fa-user"></i> 
            <input type="text" placeholder="Code user" required="" id="idu"> 
            <input type="text" placeholder="Name" required="" id="user">
            <input type="hidden" name="control" value="GUARDAR">
          </div>
          <div class="input-box">
            <i class="fas fa-envelope"></i> 
            <input type="text" placeholder="Enter your email" required="" id="mail">
          </div>
          <div class="input-box">
            <i class="fas fa-lock"></i>
            <input type="password" placeholder="Enter your password" required="" id="pass">
          </div>   
          <div class="input-box">
            <i class="fas fa-user"></i>
            <div class="col-12"><select class="form-select col-12" aria-label="type of user" id="tipUsr">
                <option selected>type of user</option>
                <option value="1">Admin</option>
                <option value="2">Colaborador</option> 
                <option value="3">Cliente</option> </select></div>
          </div> <!-- Boton Reg -->      
          <div class="button input-box"><input type="button" value="Submit" onclick="sendData()"></div>
          <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
        </div> </form>
     </div>
                        
     </div></div>
    </div>
           
  
        
    <script src="static/js/main.js"></script>    
    </body>
</html>
