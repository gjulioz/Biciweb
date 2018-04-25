<%-- 
    Document   : EditarUsuario
    Created on : 21/04/2018, 06:28:31 PM
    Author     : julio
--%>

<%@page import="clases.b_dato"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="biciweb.logica.usuario.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">
        <script src="js/jquery.min.js"></script>
    </head>
    <body>
        <script src="js/Usuario/ScriptGestionar.js"></script>
        <br>
        <form class="form-horizontal">
            <div class="form-group">
                <div class="col-sm-10"  >
                    <h1 align="center" >Informacion Del usuario</h1>
                    <h3 align="center" >Gestione la informacion del usuario seleccionado</h3>
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
                    <input id="d33" type="number" readonly="readonly"  class="form-control" name="d33" placeholder="Ingrese identificacion" />
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
                <center> 
                    <button type="button" id="actualizar" value="actualizar" class="btn btn-default">Actualizar</button>
                    <button type="button" id="eliminar" value="actualizar" class="btn btn-default">Eliminar</button>
                </center>
            </div>
        </div> 
        </form>
        
        
        <%
            
            b_dato obj = new b_dato();
            int identificacion = Integer.parseInt(obj.getdato());
            try { 
                   Class.forName("org.postgresql.Driver"); 
                } catch (Exception e) { 
                    out.println("No se pudo cargar el puente JDBC-ODBC.");
                    return; 
                 } 

                try{
                    Connection cnn = DriverManager.getConnection("jdbc:postgresql://127.0.0.1/BICI", "postgres", "1111");
                    PreparedStatement ps = cnn.prepareStatement("SELECT * FROM \"USUARIO\" WHERE \"ID_USUARIO\" = '"+identificacion+"';");
                    ResultSet rs = ps.executeQuery();
                    if(rs.next()){
                       out.println("<script>");
                        out.println("$(document).ready(function(){");
                        out.println("$(\"#d33\").val('"+rs.getString("ID_USUARIO")+"');");
                        out.println("$(\"#d1\").val('"+rs.getString("NOMBRE")+"');");
                        out.println("$(\"#d2\").val('"+rs.getString("APELLIDO")+"');");
                        out.println("$(\"#d4\").val('"+rs.getString("EDAD")+"');");
                        out.println("});");
                        out.println("</script>");
                    }else{
                        //response.sendRedirect("ModificarUsuario.jsp");
                    }
                }catch(SQLException ex){
                   ex.printStackTrace();
                }

        %>
    </body>
</html>
