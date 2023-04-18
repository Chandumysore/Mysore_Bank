package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Managerindex_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("             <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("          <div style=\"background-color:#111; height:100px\">\n");
      out.write("            <br>\n");
      out.write("    <h1 align=\"center\" style=\"color: #f1f1f1\">MYSORE RURAL BANK</h1>\n");
      out.write("    </div>\n");
      out.write("    <marquee> <h3 style=\"color: red\"><b>MYSORE RURAL BANK<b> </h3></marquee>\n");
      out.write("</head>\n");
      out.write("    <body>\n");
      out.write("<form  class=\"form-horizontal\" method=\"post\" action=\"manager.jsp\">\n");
      out.write("<fieldset>\n");
      out.write("\n");
      out.write("   \n");
      out.write("    <br>\n");
      out.write("    \n");
      out.write("    <!-- Text input-->\n");
      out.write("<div class=\"form-group\" align=\"center\">\n");
      out.write(" \n");
      out.write("  <div class=\"col-md-4\">\n");
      out.write("  <input id=\"text11\" name=\"text1\" type=\"text\" placeholder=\"_ID_\" class=\"form-control input-md\">\n");
      out.write("  \n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("    <br>  \n");
      out.write("<!-- Password input-->\n");
      out.write("<div class=\"form-group\" align=\"center\">\n");
      out.write("  \n");
      out.write("  <div class=\"col-md-4\">\n");
      out.write("    <input id=\"pass1\" name=\"pass\" type=\"password\" placeholder=\"PASSWORD\" class=\"form-control input-md\">\n");
      out.write("   \n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<br>\n");
      out.write("<span id=\"in\" style=\"color:red; font-weight:bold; display:none\"> INVALID CREDENTIAL </span>\n");
      out.write("<!-- Button -->\n");
      out.write("<div class=\"form-group\" align=\"center\">\n");
      out.write("  \n");
      out.write("    <div class=\"col-md-4\">\n");
      out.write("       \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write(" \n");
      out.write("        <button id=\"singlebutton\" name=\"singlebutton\" class=\"btn btn-primary\" >Login</button>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</fieldset>\n");
      out.write("</form>\n");
      out.write("    </body>\n");
      out.write("   \n");
      out.write("      \n");
      out.write("  </html>\n");
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
