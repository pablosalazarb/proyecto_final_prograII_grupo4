<%-- 
    Document   : newjsp
    Created on : 28-oct-2022, 1:37:52
    Author     : susan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  <head>
    <title>Dashboard</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- CSS only -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport cont" content="width=device-width, initial-scale=1,maximum-">        
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link href="static/css/style.css" rel="stylesheet" type="text/css"/>
    <script src="static/js/main.js" type="text/javascript"></script>
  </head>
  <body>      
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
                                <button class="close-btn" onclick="togglePopup2()">&times;</button>
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
                   <div class="name_job">
                     <div class="name">Softech</div>
                     <div class="job">Procrastinating for a lifetime</div>
                   </div>
                 </div>
                 <a href="index.jsp" >
                    <i  class='bx bx-log-out' id="log_out" ></i>
                
                </a>
                 
             </li>
             
             <li>
                
                
                
            </li>

            </ul>
          </div>
            
   
        <div class="main-content">
            
            <header>
               <h2>
            Dashboard
       
    </h2>
                   
       
        

    <div class="search-wrapper">
    <span class="las la-search"></span>
    <input type="search" placeholder="Search here">
</div>

<div class="user-wrapper">
    <img src="https://scontent.fgua2-1.fna.fbcdn.net/v/t39.30808-6/307746927_5837900749563170_2039318999615401823_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=y1iNIgWnR7sAX-BVB9k&_nc_ht=scontent.fgua2-1.fna&oh=00_AT_cxL9YS0tUhIeSIobQhNObbSe6T-iHIzPl_KHY30aNkA&oe=635935B2" width="40" height="40" alt="">
<div><h4>Pablo Salazar</h4>
<small>Admin</small></div>
</div>              
    </header>


<main>
    
 
   

    <div class="report">
        <h3>Resume</h3>
        <button>Generate Report <span class="las la-download"></span></button>
    </div>

    <div class="cards">
       
        <div class="card-single">
            <div>
                <h1>Agregar Js</h1>
                <span>Customers</span>
            </div>
            <div>
                <span class="las la-users"></span>
            </div>
        </div>

        <div class="card-single">
            <div>
                <h1>Agregar Js</h1>
                <span>Projects</span>
            </div>
            <div>
                <span class="las la-tasks"></span>
            </div>
        </div>

        <div class="card-single">
            <div>
                <h1>Agregar Js</h1>
                <span>Order</span>
            </div>
            <div>
                <span class="las la-clipboard"></span>
            </div>
        </div>

        <div class="card-single">
            <div>
                <h1>Agregar Js</h1>
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
                <button onclick="togglePopup()">Add new project <span class="las la-plus"></span></button>
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
                                                <div class="progress-bar" style="width:100%; background:rebeccapurple;">
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
                                                 <div class="progress-bar" style="width:65%; background:deeppink;">
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
                                                 <div class="progress-bar" style="width:20%; background:orangered;">
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
                <button onclick="togglePopup2()">Add member <span class="las la-plus"></span></button>
            </div>

            <div class="card-body">
                <div class="customer">
                    <div class="info">
                        <img src="https://scontent.fgua2-1.fna.fbcdn.net/v/t39.30808-6/271735352_2331626113641257_7849750291857652087_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=rd5wjBU7SugAX-Dfg1e&_nc_ht=scontent.fgua2-1.fna&oh=00_AT_OOAQRa8yq26xwpfvwOTXMzvTReA7mSNV2n22cnR5jQA&oe=635967E6" width="40px" height="40px" alt="">
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
                        <img src="https://scontent.fgua2-1.fna.fbcdn.net/v/t39.30808-6/287739165_10225965729003734_3942016747171343976_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=CTNumON8PlMAX9JGFOo&tn=yjHDaRvu1vxCMwkF&_nc_ht=scontent.fgua2-1.fna&oh=00_AT9LJRywqfUx3tchgNZGIyYPHtE3GNYMMNvYL9RWv7O2Ow&oe=63590679" width="40px" height="40px" alt="">
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
        
        


<script>
    let sidebar = document.querySelector(".sidebar");
    let closeBtn = document.querySelector("#btn");
    let searchBtn = document.querySelector(".bx-search");
  
    closeBtn.addEventListener("click", ()=>{
      sidebar.classList.toggle("open");
      menuBtnChange();//calling the function(optional)
    });
  
    searchBtn.addEventListener("click", ()=>{ // Sidebar open when you click on the search iocn
      sidebar.classList.toggle("open");
      menuBtnChange(); //calling the function(optional)
    });
  
    // following are the code to change sidebar button(optional)
    function menuBtnChange() {
     if(sidebar.classList.contains("open")){
       closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
     }else {
       closeBtn.classList.replace("bx-menu-alt-right","bx-menu");//replacing the iocns class
     }
    }
    </script>

    </body>
</html>