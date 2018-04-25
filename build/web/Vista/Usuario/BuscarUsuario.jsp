<%-- 
    Document   : ModificarUsuario
    Created on : 21/04/2018, 06:08:12 PM
    Author     : julio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="biciweb.logica.usuario.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Usuario</title>
        <link href="css/estilos.css" rel="stylesheet">
        <script src="js/jquery.min.js"></script>
    </head>
    <body>
        <script src="js/Usuario/ScriptBuscar.js"></script>
        <br>
        <form class="form-horizontal" > 
            <div class="form-group">
                <div class="col-sm-10"  >
                    <h1 align="center" >Buscar Usuarios</h1>
                    <h3 align="center" >Digite el id del usuario a buscar</h3>
                </div>
            </div>
            <br>
            <div class="form-group">
                <label class="control-label col-sm-10" for="identificacion">Identidicacion del usuario:</label>
                <div class="col-sm-10"  >
                    <input id="d3" type="number"  class="form-control" name="d3" placeholder="Ingrese identificacion" />
                </div>
            </div>            
            <br>            
        </form>
        <div class="form-group">
                <div class="col-sm-10"  >
                    <center> <button id="buscar" type="button"class="btn btn-default">Buscar</button></center>
                </div>
        </div>
        <div id="conte">
                
        </div
        
    </body>
</html>
