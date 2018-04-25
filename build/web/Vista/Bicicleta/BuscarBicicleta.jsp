<%-- 
    Document   : BuscarBicicleta
    Created on : 24/04/2018, 07:57:01 PM
    Author     : julio
--%>

<%@page import="biciweb.logica.bicicleta.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar Bicicleta</title>
        <link href="css/estilos.css" rel="stylesheet">
        <script src="js/jquery.min.js"></script>
    </head>
    <body>
        <script src="js/Bicicleta/ScriptBuscarBicicleta.js"></script>
        <br>
        <form class="form-horizontal" > 
            <div class="form-group">
                <div class="col-sm-10"  >
                    <h1 align="center" >Buscar Bicicleta</h1>
                    <h3 align="center" >Digite el id de la  bicicleta a buscar</h3>
                </div>
            </div>
            <br>
            <div class="form-group">
                <label class="control-label col-sm-10" for="identificacion">Identidicacion de la bicicleta:</label>
                <div class="col-sm-10"  >
                    <input id="idd" type="number"  class="form-control" name="idd" placeholder="Ingrese identificacion" />
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
