/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package biciweb.logica.usuario;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import clases.b_dato;
/**
 *
 * @author julio
 */
@WebServlet(name = "buscar", urlPatterns = {"/buscar.do"})
public class buscar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        
        int identificacion=Integer.parseInt(request.getParameter("d3"));
        String dato = request.getParameter("d3");
        b_dato obj = new b_dato();
        obj.setdato(dato);
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
                out.println("$(document).ready(function m_usuario(){");
                out.println("$(\"#conte\").load(\"Vista/Usuario/GestionarUsuario.jsp\");");
                out.println("});");
                out.println("</script>");
            }else{
                out.println("<script>");
                out.println("alert(\"Registro no encontrado\");");
                out.println("</script>");
            }
        }catch(SQLException ex){
            ex.printStackTrace();
        }
                        
                        
   
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
