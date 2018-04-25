<%-- 
    Document   : GestionarBicicleta
    Created on : 24/04/2018, 08:00:56 PM
    Author     : julio
--%>

<%@page import="biciweb.logica.bicicleta.*"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="clases.b_dato"%>
<%@page import="java.sql.Connection"%>
<%@page import="clases.b_dato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Bicicleta</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">
        <script src="js/jquery.min.js"></script>
    </head>
    <body>
        <script src="js/Bicicleta/ScriptGestionarBicicleta.js"></script>
        <br>
        <form class="form-horizontal">
            <div class="form-group">
                <div class="col-sm-10"  >
                    <h1 align="center" >Informacion De la Bicicleta</h1>
                    <h3 align="center" >Gestione la informacion de la bicicleta seleccionada</h3>
                </div>
            </div>
            <br>
            <div class="form-group">
                <label class="control-label col-sm-10" for="Identificacion">Identificación:</label>
                <div class="col-sm-10">
                    <input id="iddd" type="number" readonly="readonly"  class="form-control" name="iddd" placeholder="Ingrese la identificacion" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-10" for="Nombre">Estado:</label>
                <div class="col-sm-10"  >
                    <input id="es" type="text"  class="form-control" name="es" placeholder="Ingrese el estado" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-10" for="Apellido">Color:</label>
                <div class="col-sm-10">
                    <input id="co" type="text"  class="form-control" name="co" placeholder="Ingrese el color" />
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
                    PreparedStatement ps = cnn.prepareStatement("SELECT * FROM \"BICICLETA\" WHERE \"ID_BICICLETA\" = '"+identificacion+"';");
                    ResultSet rs = ps.executeQuery();
                    if(rs.next()){
                       out.println("<script>");
                        out.println("$(document).ready(function(){");
                        out.println("$(\"#iddd\").val('"+rs.getString("ID_BICICLETA")+"');");
                        out.println("$(\"#es\").val('"+rs.getString("ESTADO")+"');");
                        out.println("$(\"#co\").val('"+rs.getString("COLOR")+"');");
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
