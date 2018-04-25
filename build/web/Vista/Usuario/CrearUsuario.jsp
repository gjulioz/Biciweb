<%-- 
    Document   : crear
    Created on : 24/04/2018, 05:39:04 PM
    Author     : julio
--%>
<%@page import="biciweb.logica.usuario.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Usuarios</title>
        <link href="css/estilos.css" rel="stylesheet">
    </head>
    <body>
        <script src="js/Usuario/ScriptCrear.js"></script>
        <br>
        <form class="form-horizontal">
            <div class="form-group">
                <div class="col-sm-10"  >
                    <h1 align="center" >Crear Usuarios</h1>
                    <h3 align="center" >Digite la información del usuario</h3>
                </div>
            </div>
            <br>
            <div class="form-group">
                <label class="control-label col-sm-10" for="Nombre">Nombre:</label>
                <div class="col-sm-10"  >
                    <input id="d1" type="text"  class="form-control" name="d1" placeholder="Ingrese nombre" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-10" for="Apellido">Apellido:</label>
                <div class="col-sm-10">
                    <input id="d2" type="text"  class="form-control" name="d2" placeholder="Ingrese apellido" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-10" for="Identificacion">Identificación:</label>
                <div class="col-sm-10">
                    <input id="d3" type="number"  class="form-control" name="d3" placeholder="Ingrese identificacion" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-10" for="Edad">Edad:</label>
                <div class="col-sm-10">
                    <input id="d4" type="number"  class="form-control" name="d4" placeholder="Ingrese edad" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-10"  >
                    <center> <button type="button" id="insertar" value="Insertar" class="btn btn-default">Insertar</button></center>
                </div>
            </div>    
        </form>
    </body>
</html>
