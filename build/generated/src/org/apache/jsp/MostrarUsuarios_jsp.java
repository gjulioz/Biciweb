package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.io.PrintWriter;
import java.io.IOException;

public final class MostrarUsuarios_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Usuarios</title>\n");
      out.write("        <link href=\"css/estilos.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

        out.print("<h1 align=\"center\">Usuarios</h1>");
        out.print("<br>");
        out.print("<table align=\"center\" id=\"tablaUsuario\" border=\"3\">");
        out.print("<thead>");
        out.print("<th>");
        out.print("<td>Identificacion</td>");
        out.print("<td>Nombre</td>");
        out.print("<td>Apellido</td>");
        out.print("<td>Edad</td>");
        out.print("</th>");
        out.print("</thead>");
        out.print("<tbody>");
                    try {
                        try{
                            Class.forName("org.postgresql.Driver");
                        }
                        catch(ClassNotFoundException e){
                            System.out.println("no se encontró el ");
                        }
                           Connection cnn = DriverManager.getConnection("jdbc:postgresql:://localhost:56463/BICI","postgresql","1111");                          
                           System.out.println("correcto");

                           PreparedStatement ps = cnn.prepareStatement("SELECT * FROM \"USUARIO\";");
                           ResultSet rs = ps.executeQuery();


                           while(rs.next()){
                               out.println("<tr><td>"+rs.getString("ID_USUARIO")+"</td><td>"+rs.getString("NOMBRE")+"</td><td>"+rs.getString("APELLIDO")+"</td></tr>"+"</td><td>"+rs.getString("EDAD")+"</td></tr>");
                           }               
                    }                                     
                   catch (SQLException ex) {
                           ex.printStackTrace();
                           System.out.println("mal 2");
                   }
                out.print("</tbody>");
                out.print("</table>");
                
      out.write("\n");
      out.write("            \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
