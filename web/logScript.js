/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */


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