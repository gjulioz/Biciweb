<%-- 
    Document   : MostrarBiciclita
    Created on : 24/04/2018, 07:46:20 PM
    Author     : julio
--%>
<%@page import="biciweb.logica.bicicleta.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%      
        out.print("<h1 align=\"center\">Bicicletas</h1>");
        out.print("<br>");
        out.print("<table align=\"center\" id=\"tablaUsuario\" border=\"3\">");
        out.print("<thead>");
        out.print("<td align=\"center\" >Identificacion</td>");
        out.print("<td align=\"center\" >Estado</td>");
        out.print("<td align=\"center\" >Color</td>");
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

                            PreparedStatement ps = cnn.prepareStatement("SELECT * FROM \"BICICLETA\";");
                            ResultSet rs = ps.executeQuery();
                            
                            while(rs.next()){
                               out.println("<tr><td align=\"center\" width=\"300px\">"+rs.getString("ID_BICICLETA")+"</td><td align=\"center\" width=\"300px\">"+rs.getString("ESTADO")+"</td><td align=\"center\" width=\"300px\">"+rs.getString("COLOR")+"</td></tr>");
                            }                                          
                        }catch(Exception er ){
                            out.println("Error de conexion");
                        }
                       
                  out.print("</tbody>");
                  out.print("</table>");

                        
                        
                %>
    </body>
</html>
