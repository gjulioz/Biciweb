$(document).ready(function (){
        $("#actualizar").click(function () {         
            var id = $("#d33").val();
            var nombre = $("#d1").val();
            var apellido = $("#d2").val();
            var edad = $("#d4").val();
            if(id=="" || nombre=="" || apellido=="" || edad==""){
                alert("Existen campos vacios");
            }else{
                $.ajax({
                    url: "actualizar.do",
                    data: {
                        d1 : nombre,
                        d2 : apellido,
                        d4 : edad,
                        d33: id

                    },
                    success: function( result ) {
                        alert("registro actualizado");
                       //$("#contenedor").load("ModificarUsuario.jsp");
                    }
                });
            }
            
        });
        $("#eliminar").click(function () {         
            var id = $("#d33").val();
            $.ajax({
                url: "eliminar.do",
                data: {
                    d33: id
                },
                success: function( result ) {
                    alert("registro eliminado");
                }
            });
        });
});

