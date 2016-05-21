package org.apache.jsp.admin.empresas;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cadastrar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../_layouts/header.jsp", out, false);
      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../_layouts/sidebar.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"content-wrapper\">\r\n");
      out.write("    <section class=\"content\">\r\n");
      out.write("        <div class=\"box box-default\">\r\n");
      out.write("            <div class=\"box-header with-border\">\r\n");
      out.write("                <h3 class=\"box-title\">Cadastrar Empresa</h3>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /.box-header -->\r\n");
      out.write("            <div class=\"box-body\">\r\n");
      out.write("            <form id=\"contact-form\" class=\"contact\" name=\"contact-form\" method=\"post\" action=\"EmpresaSV\">\r\n");
      out.write("                       <input type=\"hidden\" name=\"action\" value=\"salvar\" />\r\n");
      out.write("                       <input type=\"hidden\" name=\"id\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${objEmpresa.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" />\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-md-6\">\r\n");
      out.write("                            <div class=\"form-group\">\r\n");
      out.write("                                <label>Nome</label>\r\n");
      out.write("                                <input type=\"text\" name=\"nome\" required=\"required\" class=\"form-control\" placeholder=\"SOS Company\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${objEmpresa.nome}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-md-6\">\r\n");
      out.write("                            <div class=\"form-group\">\r\n");
      out.write("                                <label>Telefone</label>\r\n");
      out.write("                                <input type=\"text\" name=\"telefone\" class=\"form-control\" placeholder=\"(62)9999-9999\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${objEmpresa.telefone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-md-6\">\r\n");
      out.write("                            <div class=\"form-group\">\r\n");
      out.write("                                <label>Email</label>\r\n");
      out.write("                                <div class=\"input-group\">\r\n");
      out.write("                                    <span class=\"input-group-addon\"><i class=\"fa fa-envelope\"></i></span>\r\n");
      out.write("                                    <input type=\"text\" name=\"email\" required=\"required\" class=\"form-control\" placeholder=\"joao@email.com\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${objEmpresa.nome}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                         <div class=\"col-md-6\">\r\n");
      out.write("                            <div class=\"form-group\">\r\n");
      out.write("                                <label>Senha</label>\r\n");
      out.write("                                <input type=\"text\" type=\"password\" required=\"required\" class=\"form-control\" placeholder=\"*********\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-md-6\">\r\n");
      out.write("                            <div class=\"form-group\">\r\n");
      out.write("                                <label>CNPJ</label>\r\n");
      out.write("                                <input type=\"text\" required=\"required\" class=\"form-control\" placeholder=\"00.000.000/0000-00\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                                  \r\n");
      out.write("                        <div class=\"col-md-12\">\r\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-default btn-sm pull-right\" title=\"Enviar\">\r\n");
      out.write("                                Salvar\r\n");
      out.write("                            </button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("                <!-- /.row -->\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </section>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../_layouts/footer.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("    $('#empresas').addClass('active');\r\n");
      out.write("    $('#empresas').children('.treeview-menu').children('.cadastrar').addClass('active');\r\n");
      out.write("</script>");
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
