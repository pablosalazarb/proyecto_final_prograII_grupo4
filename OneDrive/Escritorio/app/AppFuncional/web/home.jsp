<%-- 
   
    Author     : Arango
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>App Web</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
   
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <script src="js/script.js"></script>
        
    </head>
    <body>     
        
         <header>
         

   

<div class="user-wrapper">
    <img src="https://scontent.fgua2-1.fna.fbcdn.net/v/t39.30808-6/271735352_2331626113641257_7849750291857652087_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=caxCBEscESoAX__R9fT&_nc_ht=scontent.fgua2-1.fna&oh=00_AT87WaYzqqPrDdycdA3sb5tZpW3546WpOKYj1JNoa99B2Q&oe=634F84A6" width="60px" height="60px" alt="">
<div><h4>Josue Arango</h4>
<small>Admin</small></div>
</div>              
    </header>
    
    <div class="d-flex justify-content-around">
   <form class="form-register"   method="POST"  id="form" name="form" action="NewServlet2">
               <h1>Formulario ola</h1>
            <div class="form-group">
                <label for="exampleInputName">Codigo</label>
                <input class="form-control" type="text"  name="codigo" id="codigo" >
                <input type="hidden" name="control" value="GUARDAR">
            </div>
            <div class="form-group">
                <label for="exampleInputName">Nombre del alumno</label>
                <input class="form-control" type="text" name="nombre" id="nombre" >
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Email address</label>
              <input type="email" class="form-control"  aria-describedby="emailHelp" name="correo" id="correo"  >
         
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Direccion</label>
              <input type="text" class="form-control"  name="direccion" id="direccion"  >
            </div>
               
                <div class="form-group">
              <label for="exampleInputPassword1">Telefono</label>
              <input type="text" class="form-control"  name="telefono" id="direccion"  >
            </div>
            
            <select class="form-control" name="opcion">
                <option value="1">Opción 1</option>
                <option value="2">Opción 2</option>
            </select><br>
            <input type="button" value="Enviar Formulario" onclick="enviarFormularioOpcion2();" class="btn btn-info" id="btn3">
              
                
                
             <a href="Logout" class="btn btn-danger">Cancelar</a>
        </form>   
        </div>
          <div id="table" class="p-3 bd-highlight">
              
            <div class="container" id="container2">
                
                <!--Creo un boton para mostrar el formulario en ventana modal, falta implementar el javascript-->
                <button  onclick="togglePopup()" >Nuevo alumno <span class="las la-plus"></span></button>
               
                <table class="table table-striped table-hover" >
                    <thead class="form2">
                        <tr>
                            
                            <td>Codigo de Estudiante</td>
                            <td>Nombre del Estudiante</td>
                            <td>Dirección</td>
                            <td>Correo Institucional</td>
                            <td>Telefono</td>
                            <td>Tipo</td>
                            <td>Acción</td>
                            
                        </tr>
                        
                    </thead>
                    <tbody id="bodyTable">

                    </tbody>                     
                </table>
            </div>
        </div>
        </div>
    </body>
</html>