/*
Universidad Mariano Galvez de Guatemala
Archivos de controlador para el frontend implementando JS
Proyecto Final de Programacion II
Grupo 4
Autores: Suzzane Acevedo, Josue Arango, Brayan Martinez, Melvin Henrandez, Juan P. Salazar
Fecha de creacion: 22/10/2022
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