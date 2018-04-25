$(document).ready(function m_usuario(){
    $("#contenedor").load("inicio.jsp");
    function cargarDiv(div,url){
                  $(div).load(url);
            }
    $("#m_usuario").click(function () {         
            cargarDiv("#contenedor","Vista/Usuario/MostrarUsuarios.jsp");
        });
        
    $("#c_usuario").click(function () {
            cargarDiv("#contenedor","Vista/Usuario/CrearUsuario.jsp");
        });
        
    $("#mo_usuario").click(function () {
            cargarDiv("#contenedor","Vista/Usuario/BuscarUsuario.jsp");
        });   
        
});
