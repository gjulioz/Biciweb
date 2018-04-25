<%-- 
    Document   : CrearBicicleta
    Created on : 24/04/2018, 07:12:22 PM
    Author     : julio
--%>
<%@page import="biciweb.logica.bicicleta.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Bicicleta</title>
        <link href="css/estilos.css" rel="stylesheet">
        <script src="js/jquery.min.js"></script>
    </head>
    <body>
        <script src="js/Bicicleta/ScriptCrearBicicleta.js"></script>
            <br>
        <form class="form-horizontal" action="insertar" method="POST" >
            <div class="form-group">
                <div class="col-sm-10"  >
                    <h1 align="center" >Registrar Bicicleta</h1>
                    <h3 align="center" >Digite la información de la bicicleta</h3>
                </div>
            </div>
            <br>
            <div class="form-group">
                <label class="control-label col-sm-10" for="identificacion">ID de la bicileta:</label>
                <div class="col-sm-10"  >
                    <input id="idd" type="number"  class="form-control" name="idd" placeholder="Ingrese el id" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-10" for="estado">Estado:</label>
                <div class="col-sm-10">
                    <input id="es" type="text"  class="form-control" name="es" placeholder="Ingrese el estado" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-10" for="color">Color:</label>
                <div class="col-sm-10">
                    <input id="co" type="text"  class="form-control" name="co" placeholder="Ingrese el color" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-10"  >
                    <center> <button type="button" id="insertarbici" value="Insertar" class="btn btn-default">Insertar</button></center>
                </div>
            </div>    
        </form>
    </body>
</html>
