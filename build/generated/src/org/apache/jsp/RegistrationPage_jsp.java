package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class RegistrationPage_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>TEXT-UTILS / REGISTRATION PAGE</title>\n");
      out.write("        <style>\n");
      out.write("            ::selection {\n");
      out.write("                background-color: #e8d5c8;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            body {\n");
      out.write("                /* background: #58c791; */\n");
      out.write("                background: rgb(116 116 116);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .container {\n");
      out.write("                display: flex;\n");
      out.write("                height: 100%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #logbox {\n");
      out.write("                margin: 50px auto;\n");
      out.write("                width: 340px;\n");
      out.write("                background-color: #fff;\n");
      out.write("                border-radius: 4px;\n");
      out.write("                box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            h1 {\n");
      out.write("                text-align: center;\n");
      out.write("                font-size: 175%;\n");
      out.write("                color: #757575;\n");
      out.write("                font-weight: 300;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            h1,\n");
      out.write("            input {\n");
      out.write("                font-family: \"Open Sans\", Helvetica, sans-serif;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .input {\n");
      out.write("                width: 75%;\n");
      out.write("                height: 50px;\n");
      out.write("                display: block;\n");
      out.write("                margin: 0 auto 15px;\n");
      out.write("                padding: 0 15px;\n");
      out.write("                border: none;\n");
      out.write("                border-bottom: 2px solid #ebebeb;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .input:focus {\n");
      out.write("                outline: none;\n");
      out.write("                /* border-bottom-color: #58c791 !important; */\n");
      out.write("                border-block-color: rgb(116 116 116) !important;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .input:hover {\n");
      out.write("                border-bottom-color: #dcdcdc;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .input:invalid {\n");
      out.write("                box-shadow: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .inputButton {\n");
      out.write("                position: relative;\n");
      out.write("                width: 85%;\n");
      out.write("                height: 50px;\n");
      out.write("                display: block;\n");
      out.write("                margin: 30px auto 30px;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                color: white;\n");
      out.write("                /* background-color: #58c791; */\n");
      out.write("                background-color: rgb(145, 145, 145);\n");
      out.write("                border: none;\n");
      out.write("                /* box-shadow: 0 5px 0 #3aad73; */\n");
      out.write("                box-shadow: 0 5px 0 rgb(116 116 116);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .inputButton:hover {\n");
      out.write("                top: 2px;\n");
      out.write("                /* box-shadow: 0 3px 0 #3aad73; */\n");
      out.write("                box-shadow: 0 3px 0 rgb(116 116 116);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .inputButton:active {\n");
      out.write("                top: 5px;\n");
      out.write("                box-shadow: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .inputButton:focus {\n");
      out.write("                outline: none;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <form action=\"Register.jsp\" method=\"POST\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div id=\"logbox\">\n");
      out.write("                    <h1>Create an account</h1>\n");
      out.write("                    <input class=\"input pass\" name=\"username\" type=\"text\" placeholder=\"What's your username?\"\n");
      out.write("                           autofocus=\"autofocus\" required=\"required\" />\n");
      out.write("                    <input class=\"input pass\" name=\"userpassword\" type=\"password\" placeholder=\"Choose a password\"\n");
      out.write("                           required=\"required\" />\n");
      out.write("                    <input class=\"input pass\" name=\"userpassword2\" type=\"password\" placeholder=\"Confirm password\"\n");
      out.write("                           required=\"required\" />\n");
      out.write("                    <input class=\"input pass\" name=\"useremail\" type=\"email\" placeholder=\"Email address (optional)\" />\n");
      out.write("                    <input class=\"inputButton\" name=\"signup\" type=\"submit\" value=\"Sign me up!\" />\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>");
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
