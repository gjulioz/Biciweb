$(document).ready(function (){
        $("#buscar").click(function () {         
            var id = $("#idd").val();
            if(id==""){
                alert("Existen campos vacios");
            }else{
                $.ajax({
                    url: "buscarbici.do",
                    data: {
                        idd: id
                    },
                    success: function( result ) {
                        $("#conte").html(result);
                    }
                });
           }
            
        });
});

