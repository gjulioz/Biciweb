$(document).ready(function (){
        $("#buscar").click(function () {         
            var id = $("#d3").val();
            if(id==""){
                alert("Existen campos vacios");
            }else{
                $.ajax({
                    url: "buscar.do",
                    data: {
                        d3: id
                    },
                    success: function( result ) {
                        $("#conte").html(result);
                    }
                });
            }
        });
});