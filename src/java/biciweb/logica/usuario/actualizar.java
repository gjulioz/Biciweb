/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package biciweb.logica.usuario;

import clases.b_dato;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author julio
 */
@WebServlet(name = "actualizar", urlPatterns = {"/actualizar.do"})
public class actualizar extends HttpServlet {

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
        
            String nombre= request.getParameter("d1");
            String apellido= request.getParameter("d2");
            int identificacion=Integer.parseInt(request.getParameter("d33"));
            int edad=Integer.parseInt(request.getParameter("d4"));

            try { 
                Class.forName("org.postgresql.Driver"); 
            } catch (Exception e) { 
                out.println("No se pudo cargar el puente JDBC-ODBC.");
                return; 
            } 

            try{
              
                
                Connection cnn = DriverManager.getConnection("jdbc:postgresql://127.0.0.1/BICI", "postgres", "1111");
                PreparedStatement ps = cnn.prepareStatement("UPDATE \"USUARIO\" SET \"NOMBRE\" = '"+nombre+"', \"APELLIDO\" = '"+apellido+"', \"EDAD\" = '"+edad+"' WHERE \"ID_USUARIO\" = '"+identificacion+"';");
                ResultSet rs = ps.executeQuery();

                //out.println("<script>");
                //out.println("alert(\"Registro actualizado\");");
                //out.println("</script>");

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
