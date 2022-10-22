/*
Universidad Mariano Galvez de Guatemala
Archivos de controlador para el frontend implementando JS
Proyecto Final de Programacion II
Grupo 4
Autores: Suzzane Acevedo, Josue Arango, Brayan Martinez, Melvin Henrandez, Juan P. Salazar
Fecha de creacion: 22/10/2022
*/


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


