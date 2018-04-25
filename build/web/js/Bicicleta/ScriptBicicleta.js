$(document).ready(function m_usuario(){
    function cargarDiv(div,url){
                  $(div).load(url);
            }
    $("#m_bici").click(function () {         
            cargarDiv("#contenedor","Vista/Bicicleta/MostrarBiciclita.jsp");
        });
        
    $("#c_bici").click(function () {
            cargarDiv("#contenedor","Vista/Bicicleta/CrearBicicleta.jsp");
        });
        
    $("#mo_bici").click(function () {
            cargarDiv("#contenedor","Vista/Bicicleta/BuscarBicicleta.jsp");
        });   
        
});
