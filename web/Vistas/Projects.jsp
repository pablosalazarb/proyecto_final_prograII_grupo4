<%-- 
    Document   : Projects
    Created on : 28-oct-2022, 18:40:21
    Author     : susan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>Dashboard/Collaborator</title>
    <meta charset="UTF-8">
    <!-- CSS-->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport cont" content="width=device-width, initial-scale=1,maximum-">        
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link href="../../../web/static/css/style.css" rel="stylesheet" type="text/css"/>
    <!-- Java-->
    <script src="https://kit.fontawesome.com/0539a5873a.js" crossorigin="anonymous"></script>
    
  </head>
  <!-- Body-->
  <body>   

    
    <!--Menu desplegable-->
        <div class="sidebar">
            <div class="logo-details">
              <i class='bx bxl-c-plus-plus icon'></i>
                <div class="logo_name">Softech</div>
                <i class='bx bx-menu' id="btn" ></i>
            </div>
            <ul class="nav-list">
                <li>
                    <i class='bx bx-search' ></i>
                   <input type="text" placeholder="Search...">
                   <span class="tooltip">Search</span>
                </li>
              <li>
                <a href="#">
                  <i class='bx bx-grid-alt'></i>
                  <span class="links_name">Dashboard</span>
                </a>
                 <span class="tooltip">Dashboard</span>
              </li>
              <li>
               <a href="#">
                 <i class='bx bx-user' ></i>
                 <span class="links_name">User</span>
               </a>
               <span class="tooltip">User</span>
             </li>
             <li>
               <a href="#">
                 <i class='bx bx-chat' ></i>
                 <span class="links_name">Messages</span>
               </a>
               <span class="tooltip">Messages</span>
             </li>
             <li>
               <a href="#">
                 <i class='bx bx-pie-chart-alt-2' ></i>
                 <span class="links_name">Analytics</span>
               </a>
               <span class="tooltip">Analytics</span>
             </li>
             <li>
               <a href="#" >
                 <i  class='bx bx-folder' ></i>
                 <span class="links_name">Project Manager</span>
               </a>
               
               <span class="tooltip">Projects</span>
             </li>

             <div>
              <div class="popup" id="popup-1">
                  <div class="overlay"></div>
                  <div class="content">
                    
                              <form class="form-register" method="dialog" action="#">
                               <div class="close-container"> <button class="close-btn" onclick="togglePopup()">&times;</button></div>
                                <div class="title">S O F T E C H</div> 
                                <div class="user-details">
                                  <div class="input-box">
                                    <span class="details">ID</span>
                                    <input type="text" placeholder="Identification code" required>
                                  </div>
                                  <div class="input-box">
                                    <span class="details">Project</span>
                                    <input type="text" placeholder="Enter username" required>
                                  </div>
                                  <div class="input-box">
                                    <span class="details">Software</span>
                                    <input type="text" placeholder="Enter type" required>
                                  </div>
                                  <div class="input-box">
                                    <span class="details">Category</span>
                                    <input type="text" placeholder="Enter category " required>
                                  </div>
                                  <div class="input-box">
                                    <span class="details">Description</span>
                                    <input type="text" placeholder="Enter descrption" required>
                                  </div>
                                  <div class="input-box">
                                    <span class="details">Admin</span>
                                    <input type="text" placeholder="Enter admin" required>
                                  </div>
                                </div>
                             
                                <div class="button">
                                  <input type="submit" value="!S U B M I T¡">
                                </div>
                                      
                              </form>
                      </div>
                  </div>    

              </div>
          
              <div>
                <div class="popup" id="popup-2">
                  <div class="overlay"></div>
                  <div class="content">
             
                              <form class="form-register" method="dialog" action="#">
                                <div class="close-container"><button class="close-btn" onclick="togglePopup2()">&times;</button></div>
                                <div class="title">S O F T E C H</div> 
                                <div class="user-details">
                    
                                  <div class="input-box">
                                    <span class="details">Name</span>
                                    <input type="text" placeholder="Enter collaborator name" required>
                                  </div>
                                  <div class="input-box">
                                    <span class="details">Email</span>
                                    <input type="email" placeholder="Enter email" required>
                                  </div>
    
                                </div>
                                <div class="R O L E S">
                                  <span class="details">R O L E S</span>
                                  <input type="radio" name="gender" id="dot-1">
                                  <input type="radio" name="gender" id="dot-2">
                                  <input type="radio" name="gender" id="dot-3">
                                  
                                    

                                  <div class="category">
                                    <label for="dot-1">
                                    <span class="dot one"></span>
                                    <span class="gender">Collaborator</span>
                                  </label>
                                  <label for="dot-2">
                                    <span class="dot two"></span>
                                    <span class="gender">Admin</span>
                                  </label>
                                  <label for="dot-3">
                                    <span class="dot three"></span>
                                    <span class="gender">Customer</span>
                                    </label>
                                  </div>
                                </div>
                                <div class="button">
                                  <input type="submit" value="!S U B M I T¡">
                                </div>
                                      
                              </form>
                      </div>
                  </div>    
    
    
    </div>
               
          
             <li>
               <a href="#">
                 <i class='bx bx-cart-alt' ></i>
                 <span class="links_name">Order</span>
               </a>
               <span class="tooltip">Order</span>
             </li>
             <li>
               <a href="#">
                 <i class='bx bx-heart' ></i>
                 <span class="links_name">Saved</span>
               </a>
               <span class="tooltip">Saved</span>
             </li>
             <li>
               <a href="#">
                 <i class='bx bx-cog' ></i>
                 <span class="links_name">Setting</span>
               </a>
               <span class="tooltip">Setting</span>
             </li>
             
             <li class="profile">
                 <div class="profile-details">
                   <!--<img src="profile.jpg" alt="profileImg">-->
                   
                 </div>

                     <a href="../../../web/indexLogin.html">
                    <i  class='bx bx-log-out' id="log_out" ></i>
                    <div class="name_job">
                      <div class="name">Softech</div>
                      <div class="job">Procrastinating for a lifetime</div>
                    </div>
                </a>
                 
             </li>

             
             
            

            </ul>
          </div>
            
   
          <!--Contenido de la vista dashboard-->
        <div class="main-content">
            
          <!--Barra nav-->
            <header>
               <h2>
          Projects
            
    </h2>
                   
    

<div class="user-wrapper">

<div><h4>General view</h4>


  <h5>Button</h5>
<button  class="switch" id="switch">
  
  <span><i class="fa-solid fa-sun"></i></span>
  <span><i class="fa-solid fa-moon"></i></span>
</button>



</div>
</div>     



    </header>


<main>
    
 
   


  

    <div class="recent-grid">
        <div class="projects">
            <div class="card"><div class="card-header">
                <h3>All Projects</h3>
                <button onclick="togglePopup()">Add new project <i class="fa-solid fa-plus"></i></button>
            </div>
            <div class="card-body">
                
                <div class="table-responsive">
                    <table width="100%">
                        <thead>
                        <tr><tr>
                            <td>Codigo Proyecto</td>
                            <td>Nombre de Proyecto</td>
                            <td>Descripcion</td>
                            <td>Fecha de Creacion</td>
                            <td>Responsable </td>
                            <td>Estado</td>
                            <td>Categoria Proyecto</td>
                        </tr>
                    </thead>
                        <tbody>
                            
                        </tbody>
                    </table>
                </div>
            </div>
                </div>
                
        </div>
     
        </div>

          

<!--JavaScript-->


<script src="../../../web/static/js/main.js" type="text/javascript"></script>

    </body>
</html>
