$(document).ready(function (){
        $("#actualizar").click(function () {         
            var id = $("#idd").val();
            var estado = $("#es").val();
            var color = $("#co").val();
            if(id=="" || estado=="" || color==""){
                alert("Existen campos vacios");
            }else{
                $.ajax({
                    url: "actualizarbici.do",
                    data: {
                        idd : id,
                        es : estado,
                        co : color

                    },
                    success: function( result ) {
                        alert("registro actualizado");
                       //$("#contenedor").load("ModificarUsuario.jsp");
                    }
                });
            }
        });
        $("#eliminar").click(function () {         
            var id = $("#idd").val();
            $.ajax({
                url: "eliminarbici.do",
                data: {
                    idd: id
                },
                success: function( result ) {
                    alert("registro eliminado");
                }
            });
        });
});

