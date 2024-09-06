package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class about_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>About Us Page</title>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                margin: 20px;\n");
      out.write("                padding: 10px;\n");
      out.write("                background-color: #080808;\n");
      out.write("                color: #fff;\n");
      out.write("                font-family : 'Pappins',sans-serif;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .container h1{\n");
      out.write("                font-size: 60px;\n");
      out.write("                color: #ff004f;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .container p{\n");
      out.write("                font-size: 50px;\n");
      out.write("                font-weight: 100px;\n");
      out.write("                color: #ababab;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .tab-links{\n");
      out.write("                /*justify-content: space-between;*/\n");
      out.write("                background: #808085;\n");
      out.write("                cursor: pointer;\n");
      out.write("                position: relative;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            a{\n");
      out.write("                margin: 220px;\n");
      out.write("                padding: 10px;\n");
      out.write("                font-size: 25px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            a:hover{\n");
      out.write("                \n");
      out.write("                color: #ff004f;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .row{\n");
      out.write("                display: flex;\n");
      out.write("                margin-top: 90px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .left{\n");
      out.write("                \n");
      out.write("                flex-basis: 35%;\n");
      out.write("                margin-left: 10px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .left h2{\n");
      out.write("                color: #ff004f;\n");
      out.write("                margin-top: 0;\n");
      out.write("                font-size: 40px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .left p{\n");
      out.write("                font-size: 30px;\n");
      out.write("                font-weight: 100px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .right{\n");
      out.write("                flex-basis:45%;\n");
      out.write("                margin-left: 120px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <center><h1 style=\"color:grey;\"><i><u>About Us</u></i></h1>\n");
      out.write("                <h1>We help managements of every size office -\n");
      out.write("                    form <br>entrepreneurs to iconic brands.</h1>\n");
      out.write("                <p>It lets you deliver amazing experiences .</p>\n");
      out.write("            </center>\n");
      out.write("            \n");
      out.write("            <div class=\"tab\">\n");
      out.write("                <nav class=\"tab-links\">\n");
      out.write("                    <a href=\"#\" style=\"margin-left:50px;\">Achievements</a>\n");
      out.write("                    <a href=\"#\">Services</a>\n");
      out.write("                    <a href=\"#\" style=\"margin-right:20px;\">Reviews</a>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"row\">\n");
      out.write("                 <div class=\"left\">\n");
      out.write("                <h2>It helps businesses own their management</h2>\n");
      out.write("                <p> Office management involves the planning, design, and implementation of work within an organization and its offices.It encompasses creating a focused work environment and guiding and coordinating the activities of office personnel to achieve business goals.\n");
      out.write("                    <br><br> In essence, office management ensures the smooth and efficient operation of an office, covering tasks such as mail handling, document management, and assigning roles and responsibilities</p>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"right\">\n");
      out.write("                <img src=\"images/office.jpg\" width=\"700\" height=\"700\">\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
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
