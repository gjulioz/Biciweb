<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="biciweb.logica.usuario.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
        <link href="css/estilos.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <%      
        out.print("<h1 align=\"center\">Usuarios</h1>");
        out.print("<br>");
        out.print("<table align=\"center\" id=\"tablaUsuario\" border=\"3\">");
        out.print("<thead>");
        out.print("<td>Identificacion</td>");
        out.print("<td>Nombre</td>");
        out.print("<td>Apellido</td>");
        out.print("<td>Edad</td>");
        out.print("</thead>");
        out.print("<tbody>");
        
                        try { 
                                Class.forName("org.postgresql.Driver"); 
                        } catch (Exception e) { 
                            out.println("No se pudo cargar el puente JDBC-ODBC.");
                            return; 
                         } 
                           
                        try{
                            Connection cnn = DriverManager.getConnection("jdbc:postgresql://127.0.0.1/BICI", "postgres", "1111");

                            PreparedStatement ps = cnn.prepareStatement("SELECT * FROM \"USUARIO\";");
                            ResultSet rs = ps.executeQuery();
                            
                            while(rs.next()){
                               out.println("<tr><td>"+rs.getString("ID_USUARIO")+"</td><td>"+rs.getString("NOMBRE")+"</td><td>"+rs.getString("APELLIDO")+"</td>"+"</td><td>"+rs.getString("EDAD")+"</td></tr>");
                            }                                          
                        }catch(Exception er ){
                            out.println("Error de conexion");
                        }
                       
                  out.print("</tbody>");
                  out.print("</table>");

                        
                        
                %>
            
    </body>
</html>
