

/*
Universidad Mariano Galvez de Guatemala
Archivos de controlador para el frontend implementando JS
Proyecto Final de Programacion II
Grupo 4
Autores: Suzzane Acevedo, Josue Arango, Brayan Martinez, Melvin Henrandez, Juan P. Salazar
Fecha de creacion: 22/10/2022
*/

/*

-------------------- INICIAN CONTROLADORES PRINCIPALES --------------------

*/

//Funcion para poder mostrar/esconder contenedores html utilizando el id
function show_container(id_container){
	//Mandamos a llamar la funcion del document para obtener contenedor id
	let container = document.getElementById(id_container);
	container.style.display = "flex"; //Cambiamos el atributo de estilo display del objeto
}

function hide_container(id_container){
	//Mandamos a llamar la funcion del document para obtener contenedor id
	let container = document.getElementById(id_container);
	container.style.display = "none"; //Cambiamos el atributo de estilo display del objeto
}

//Funcion que permite hacer el pop up  de los modales
function togglePopup(){
    document.getElementById("popup-1").classList.toggle("active");

}

document.addEventListener('keydown', function(event){
	if(event.key === "Escape"){
document.getElementById("popup-1").classList.toggle("active");
	}
})


function togglePopup2(){
    document.getElementById("popup-2").classList.toggle("active");

}


/*

-------------------- INICIAN CONTROLADORES DEL LOGIN --------------------

*/

function login(){
    var user, pass;
    user = document.getElementById("user").value;
    pass = document.getElementById("pass").value;
    if(user=="Suzzanne" && pass== "Holi"){
        window.location="index.html";
    }else{
        errMsj('Invalid username or password');
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
function comeDom (){
    let usuarios = new Object();
    let user=document.getElementById("user");
    let pass=document.getElementById("pass");
    let tipUsr=document.getElementById("tipUsr");
    usuarios.user=user.value;
    usuarios.pass=pass.value;
    usuarios.tipUsr=tipUsr.value;
}

function sendData2(){
	const XHR = new XMLHttpRequest();
	  var formData = new URLSearchParams(new FormData(document.getElementById('formuser'))).toString();
	  XHR.addEventListener('error',(event) => {alert('Oops! ah ocurrido un error (T_T)');});
	  XHR.open('POST', 'ServletUser', true);
          XHR.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    
          XHR.onload = () => { if (XHR.readyState === XHR.DONE && XHR.status === 200){
            console.log("response => " + XHR.response);
            susMsj('Registro Exitoso'); }};
          XHR.send(formData);	
}
function susMsj(msj){
  Swal.fire({
  icon: 'success',
  title: msj,
  showConfirmButton: false,
  timer: 1500
})
}

/*

-------------------- Para el menu desplegable--------------------

*/



