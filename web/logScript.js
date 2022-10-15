function login(){
    var user, pass;
    user = document.getElementById("user").value;
    pass = document.getElementById("pass").value;
    if(user=="Suzzanne" && pass== "Holi" || user=="Arango" && pass=="1234"){
        window.location="index.html";
    }else{
        errMsj('Usuario o Contraseña no validos');
    }
    
}

function errMsj(msj){
  Swal.fire({
  icon: 'error',
  title: msj,
  showConfirmButton: false,
  timer: 1500
})
}