$(document).ready(function (){
        $("#insertarbici").click(function () {         
            var id = $("#idd").val();
            var estado = $("#es").val();
            var color = $("#co").val();
            if(id=="" || estado=="" || color==""){
                alert("Existen campos vacios");
            }else{
                $.ajax({
                    url: "insertarbici.do",
                    data: {
                        idd : id,
                        es : estado,
                        co: color

                    },
                    success: function( result ) {
                        alert("registro insertado");
                        $("#idd").val("");
                        $("#es").val("") ;
                        $("#co").val("");
                    }
                });
            }
        });
});


