<%-- 
    Document   : home
    Created on : 22-oct-2022, 9:11:42
    Author     : susan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DASHBOARD</title>
        
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta name="viewport cont" content="width=device-width, initial-scale=1,maximum-">        
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <link href="static/css/style.css" rel="stylesheet" type="text/css"/>
    </head> 
     
    
    <% 
        response.setHeader("Cache-Control", "nocache, no-store, must-revalidate");
        if(session.getAttribute("mail")==null){
            response.sendRedirect("/index.jsp");
        }
    %>
    
        
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
               
                    <a href="home.jsp">
                  <i class='bx bx-grid-alt'></i>
                  <span class="links_name">Dashboard</span>
                </a>
                 <span class="tooltip">Dashboard</span>
              </li>
              <li>
               
                  <a href="Vistas/cliente.jsp">
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
                 <a href="Vistas/Collaborator.jsp">
                 <i class='bx bx-pie-chart-alt-2' ></i>
                 <span class="links_name">Collaborator</span>
               </a>
               <span class="tooltip">Collaborator</span>
             </li>
             <li>
                 <a href="Vistas/Projects.jsp">
                 <i  class='bx bx-folder' ></i>
                 <span class="links_name">Project Manager</span>
               </a>
               
               <span class="tooltip">Projects</span>
             </li>

             <div>
              <div class="popup" id="popup-1">
                  <div class="overlay"></div>
                  <div class="content">
                    
                              <form class="form-register" method="dialog" action="#" id="formpro">
                               <div class="close-container"> <button class="close-btn" onclick="togglePopup()">&times;</button></div>
                                <div class="title">S O F T E C H</div> 
                                <div class="user-details">
                                  <div class="input-box">
                                    <span class="details">ID</span>
                                    <input type="text" placeholder="Identification code" id="idp" required>
                                    <input type="hidden" name="control" value="GUARDAR">
                                  </div>
                                  <div class="input-box">
                                    <span class="details">Project</span>
                                    <input type="text" placeholder="Enter username" id="project" required>
                                  </div>
                                  <div class="input-box">
                                    <span class="details">Description</span>
                                    <input type="text" placeholder="Enter descrption"  id="description" required>
                                  </div>
                                  <div class="input-box">
                                    <span class="details">Creation Date</span>
                                    <input type="text" placeholder="Enter descrption"  id="date" required>
                                  </div>
                                  <div class="input-box">
                                    <span class="details">Manager</span>
                                    <select class="form-select" id="manager">
                                        <option selected>Select</option>
                                        <option value="1">Suzzanne</option>
                                        <option value="2">Arango</option> 
                                        <option value="3">Alexander</option>
                                        <option value="4">Melvin</option></select></div>
                                   
                                  <div class="input-box">
                                    <span class="details">Status</span>
                                    <select class="form-select" id="estatus">
                                        <option selected>Select</option>
                                        <option value="1">Asignado</option>
                                        <option value="2">En Proceso..</option> 
                                        <option value="3">Finalizado</option></select></div>
                                  
                                  <div class="input-box">
                                    <span class="details">Category</span>
                                    <input type="text" placeholder="Enter category " id="category" required>
                                  </div> 
                                  

                                <div class="button">
                                    <input type="submit" value="!S U B M I T??" onclick="sendDataPro()">
                                </div>
                                </div>       
                              </form></div>
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
                                  <input type="submit" value="!S U B M I T??">
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
                 <a href="Logout">Logout - ${UsuarioLogueado}<!------------ CERRAR SESION ------------>
                    <i  class='bx bx-log-out' id="log_out" ></i>
                   
                </a>
                 
             </li>

             
             
            

            </ul>
          </div>
            
   
          <!--Contenido de la vista dashboard-->
        <div class="main-content">
            
          <!--Barra nav-->
            <header>
               <h2>
            Dashboard
            
    </h2>
                   
    

<div class="user-wrapper">
    <img src="https://scontent.fgua3-3.fna.fbcdn.net/v/t39.30808-6/307746927_5837900749563170_2039318999615401823_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=fsa40JXMVEkAX-jqw_Y&_nc_ht=scontent.fgua3-3.fna&oh=00_AfDg1xGMYuM1KC94JSaFPPmoW9pf5jnwafLzsJY2W4jdFQ&oe=63611EB2" width="40" height="40" alt="">
<div><h4>Pablo Salazar</h4>


  <h5>Admin</h5>
<button  class="switch" id="switch">
  
  <span><i class="fa-solid fa-sun"></i></span>
  <span><i class="fa-solid fa-moon"></i></span>
</button>



</div>
</div>       



    </header>


<main>
    
 
   

    <div class="report">
        <h3>Resume</h3>
        <button><i class="fa-solid fa-download"></i> Generate Report </button>
    </div>

    <div class="cards">
       
        <div class="card-single">
            <div>
                <h1>5</h1>
                <span>Customers</span>
            </div>
            <div>
                <span class="las la-users"></span>
            </div>
        </div>

        <div class="card-single">
            <div>
                <h1>3</h1>
                <span>Projects</span>
            </div>
            <div>
                <span class="las la-tasks"></span>
            </div>
        </div>

        <div class="card-single">
            <div>
                <h1>2</h1>
                <span>Order</span>
            </div>
            <div>
                <span class="las la-clipboard"></span>
            </div>
        </div>

        <div class="card-single">
            <div>
                <h1>0</h1>
                <span>Reports</span>
            </div>
            <div>
                <span class="las la-flag"></span>
            </div>
        </div>

    </div>
    

    <div class="recent-grid">
        <div class="projects">
            <div class="card"><div class="card-header">
                <h3>Recent Projects</h3>
                <button onclick="togglePopup()">Add new project <i class="fa-solid fa-plus"></i></button>
            </div>
            <div class="card-body">
                
                <div class="table-responsive">
                    <table width="100%">
                        <thead>
                        <tr><td>Project Tittle (JS)</td>
                            <td>Department (Js)</td>
                            <td>Status (JS)</td>
                            <td>Agregar barra %JS</td>
                        </tr>
                    </thead>
                        <tbody>
                            <tr>
                                <td>UI/UX Design</td>
                                <td>UI TEam</td>
                                <td><span class="status purple">
                                    
                                </span>
                                review</td>

                                <td>
                                    
                                   <div class="container">
                                    <div class="row">
                                        <div class="cold-md-12">
                                            <div class="progress-tittle">
                                                
                                               <div class="progress">
                                                <div class="progress-bar" style="width:100%; background:var(--status-review);">
                                                <div class="progress-value">100%</div>
                                                </div>
                                               </div>
                                            </div>
                                        </div>
                                    </div>
                                   </div>

                                </td>
                            </tr>
                            <tr>
                                <td>Web development</td>
                                <td>Frontend</td>
                                <td><span class="status pink">
                                    
                                </span>
                                in progress</td>
                                <td>
                                    
                                    <div class="container">
                                     <div class="row">
                                         <div class="cold-md-12">
                                             <div class="progress-tittle">
                                                 
                                                <div class="progress">
                                                 <div class="progress-bar" style="width:65%; background:var(--status-progress);">
                                                 <div class="progress-value">65%</div>
                                                 </div>
                                                </div>
                                             </div>
                                         </div>
                                     </div>
                                    </div>
 
                                 </td>
                            </tr>
                            <tr>
                                <td>Usho web</td>
                                <td>Mobile Team</td>
                                <td><span class="status orange">
                                    
                                </span>
                                pending</td>
                                <td>
                                    
                                    <div class="container">
                                     <div class="row">
                                         <div class="cold-md-12">
                                             <div class="progress-tittle">
                                                 
                                                <div class="progress">
                                                 <div class="progress-bar" style="width:20%; background:var(--status-pending);">
                                                 <div class="progress-value">20%</div>
                                                 </div>
                                                </div>
                                             </div>
                                         </div>
                                     </div>
                                    </div>
 
                                 </td>
                            </tr>
                            <tr>
                                
                           
                        </tbody>
                    </table>
                </div>
            </div>
                </div>
                
        </div>
        <div class="customers">
            <div class="card"><div class="card-header">
                <h3>Team members</h3>
                <button onclick="togglePopup2()">Add member <i class="fa-solid fa-plus"></i></button>
            </div>

            <div class="card-body">
                <div class="customer">
                    <div class="info">
                        <img src="https://scontent.fgua3-4.fna.fbcdn.net/v/t39.30808-6/271735352_2331626113641257_7849750291857652087_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Vjzv3onXmWcAX_rbpHl&_nc_ht=scontent.fgua3-4.fna&oh=00_AfBf52bLUS0oayxgZ4fP28v84oXutlY1MeoIJeBLn5agXg&oe=636150E6" width="40px" height="40px" alt="">
                        <div>
                            <h4>Josue Arango</h4>
                            <small>Collaborator</small>
                        </div>
                    </div>

                    <div class="contact">
                        <span class="las la-user-circle"></span>
                        <span class="las la-comment"></span>
                        <span class="las la-phone"></span>
                    </div>

                </div>

                <div class="customer">
                    <div class="info">
                        <img src="https://scontent.fgua1-2.fna.fbcdn.net/v/t39.30808-6/287739165_10225965729003734_3942016747171343976_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=DLN5qSibLc4AX_Yr3Xl&tn=yjHDaRvu1vxCMwkF&_nc_ht=scontent.fgua1-2.fna&oh=00_AfCm-fcUbZpnvwNqIiRFydiAVn8ZilWjodst7a6h9P_XAA&oe=6360EF79" width="40px" height="40px" alt="">
                        <div>
                            <h4>Suzzane Acevedo</h4>
                            <small>Collaborator</small>
                        </div>
                    </div>

                    <div class="contact">
                        <span class="las la-user-circle"></span>
                        <span class="las la-comment"></span>
                        <span class="las la-phone"></span>
                    </div>

                </div>

                <div class="customer">
                    <div class="info">
                        <img src="https://scontent.fgua2-1.fna.fbcdn.net/v/t1.6435-9/109305097_3278839588850005_4754966891591400336_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=3-oBHy2I8W4AX9Gzs7w&_nc_ht=scontent.fgua2-1.fna&oh=00_AT8GSZs_EPPZkC8m10cEiUGMhFH-gOgdy1M7MntDEcOXbg&oe=6377DB72" width="40px" height="40px" alt="">
                        <div>
                            <h4>Bryan Guzman</h4>
                            <small>Collaborator</small>
                        </div>
                    </div>

                    <div class="contact">
                        <span class="las la-user-circle"></span>
                        <span class="las la-comment"></span>
                        <span class="las la-phone"></span>
                    </div>

                </div>

                <div class="customer">
                    <div class="info">
                        <img src="https://scontent.fgua2-1.fna.fbcdn.net/v/t1.6435-9/70198171_766244213794283_6400023298545025024_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=174925&_nc_ohc=5KQsJT7HB7gAX_H0hkz&_nc_ht=scontent.fgua2-1.fna&oh=00_AT-9ItvwwmzDTrt_xNlLfb_5wjONj2zVBl4yP8d7OBUysA&oe=637956BB" width="40px" height="40px" alt="">
                        <div>
                            <h4>Melvin Hernandez</h4>
                            <small>Collaborator</small>
                        </div>
                    </div>

                    <div class="contact">
                        <span class="las la-user-circle"></span>
                        <span class="las la-comment"></span>
                        <span class="las la-phone"></span>
                    </div>

                </div>

                

                

                </div>
                </div>
                </div>
        </div>
        <div class="container2">
            <h2>Progress report</h2>
            <div class="progress-container2">
                <div class="progress2">
                    <div class="mask full">
                        <div class="fill"></div>
                    </div>
                </div>
                <div class="mask half">
                    <div class="fill"></div>
                </div>
                <div class="inside-circle">30 <span>%</span></div>
            </div>

            <div class="line"></div>
            <div class="progress2-report">
                <h3>0% <br> <span>Last Week</span></h3>
                <div class="line"></div>
                <h3>30% <br> <span>This Week</span></h3>
            </div>
            
            </div>
            </div>
        
          </div>


  <script src="static/js/main.js" type="text/javascript"></script>
    </body>
</html>
