package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ModificarUsuario_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Modificar Usuario</title>\n");
      out.write("        <link href=\"css/estilos.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <br>\n");
      out.write("        <form class=\"form-horizontal\" action=\"insertar\" method=\"POST\" >\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <div class=\"col-sm-10\"  >\n");
      out.write("                    <h1 align=\"center\" >Modificar Usuarios</h1>\n");
      out.write("                    <h3 align=\"center\" >Digite la informacion a modificadar</h3>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <br>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label class=\"control-label col-sm-10\" for=\"identificacion\">Identidicacion del usuario:</label>\n");
      out.write("                <div class=\"col-sm-10\"  >\n");
      out.write("                    <input id=\"d1\" type=\"search\"  class=\"form-control\" name=\"d1\" placeholder=\"Ingrese identificacion\" />\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <div class=\"col-sm-10\"  >\n");
      out.write("                    <center> <button type=\"submit\" value=\"Buscar\" class=\"btn btn-default\">Buscar</button></center>\n");
      out.write("                </div>\n");
      out.write("            </div>    \n");
      out.write("            <br>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label class=\"control-label col-sm-10\" for=\"Nombre\">Nombre:</label>\n");
      out.write("                <div class=\"col-sm-10\"  >\n");
      out.write("                    <input id=\"d1\" type=\"text\"  class=\"form-control\" name=\"d1\" placeholder=\"Ingrese nombre\" />\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label class=\"control-label col-sm-10\" for=\"Apellido\">Apellido:</label>\n");
      out.write("                <div class=\"col-sm-10\">\n");
      out.write("                    <input id=\"d2\" type=\"text\"  class=\"form-control\" name=\"d2\" placeholder=\"Ingrese apellido\" />\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label class=\"control-label col-sm-10\" for=\"Identificacion\">Identificación:</label>\n");
      out.write("                <div class=\"col-sm-10\">\n");
      out.write("                    <input id=\"d3\" type=\"number\"  class=\"form-control\" name=\"d3\" placeholder=\"Ingrese identificacion\" />\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label class=\"control-label col-sm-10\" for=\"Edad\">Edad:</label>\n");
      out.write("                <div class=\"col-sm-10\">\n");
      out.write("                    <input id=\"d4\" type=\"number\"  class=\"form-control\" name=\"d4\" placeholder=\"Ingrese edad\" />\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <div class=\"col-sm-10\"  >\n");
      out.write("                    <center> <button type=\"submit\" value=\"Insertar\" class=\"btn btn-default\">Insertar</button></center>\n");
      out.write("                </div>\n");
      out.write("            </div>    \n");
      out.write("        </form>\n");
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
