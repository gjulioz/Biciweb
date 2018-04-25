$(document).ready(function (){
    
    $("#insertar").click(function () {         
            var id = $("#d3").val();
            var nombre = $("#d1").val();
            var apellido = $("#d2").val();
            var edad = $("#d4").val();
            if(id=="" || nombre=="" || apellido=="" || edad==""){
                alert("Existen campos vacios");
            }else{
                    $.ajax({
                        url: "insertar.do",
                        data: {
                            d1 : nombre,
                            d2 : apellido,
                            d4 : edad,
                            d3: id

                        },
                        success: function( result ) {
                            alert("registro insertado");
                            $("#d3").val("");
                            $("#d1").val("");
                            $("#d4").val("");
                            $("#d2").val("");
                        }
                    });
            }
            
    });
});