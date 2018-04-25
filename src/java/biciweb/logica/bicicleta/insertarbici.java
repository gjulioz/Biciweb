package biciweb.logica.bicicleta;

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

/**
 *
 * @author julio
 */
@WebServlet(name = "insertarbici", urlPatterns = {"/insertarbici.do"})
public class insertarbici extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
                    String estado= request.getParameter("es");
                    String color= request.getParameter("co");
                    int identificacion=Integer.parseInt(request.getParameter("idd"));

                    try { 
                                Class.forName("org.postgresql.Driver"); 
                        } catch (Exception e) { 
                            out.println("No se pudo cargar el puente JDBC-ODBC.");
                            return; 
                         } 
                           
                        try{
                            Connection cnn = DriverManager.getConnection("jdbc:postgresql://127.0.0.1/BICI", "postgres", "1111");
                            PreparedStatement ps = cnn.prepareStatement("INSERT INTO \"BICICLETA\" (\"ID_BICICLETA\",\"ESTADO\",\"COLOR\") VALUES('"+identificacion+"','"+estado+"','"+color+"');");
                            ResultSet rs = ps.executeQuery();

                        }catch(SQLException ex){
                           ex.printStackTrace();
                           out.println("<script>");
                           out.println("$(document).ready(function m_usuario(){");
                           out.println("alert(\"Registro la existe\")");
                           out.println("});");
                           out.println("</script>");
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
