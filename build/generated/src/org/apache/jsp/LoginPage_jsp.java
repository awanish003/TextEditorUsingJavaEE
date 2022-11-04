package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class LoginPage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>TEXT-UTILS / LOGIN PAGE</title>\n");
      out.write("    <style>\n");
      out.write("        html,\n");
      out.write("        body {\n");
      out.write("            width: 100%;\n");
      out.write("            height: 100%;\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        ::selection {\n");
      out.write("            background-color: #dba6ae;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .container {\n");
      out.write("            width: 100%;\n");
      out.write("            height: 100%;\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .Box {\n");
      out.write("            width: 30%;\n");
      out.write("            height: 74%;\n");
      out.write("            border: 2px solid rgb(106, 106, 106);\n");
      out.write("            margin-top: 30px;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            display: flex;\n");
      out.write("            align-items: center;\n");
      out.write("            flex-direction: column;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .Logo {\n");
      out.write("            margin-top: 30px;\n");
      out.write("            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;\n");
      out.write("            font-size: 3.4vw;\n");
      out.write("            font-weight: bold;\n");
      out.write("            color: rgb(116 116 116);\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .description {\n");
      out.write("            width: 100%;\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .LogoDescription {\n");
      out.write("            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;\n");
      out.write("            font-size: 1.2vw;\n");
      out.write("            text-align: center;\n");
      out.write("            margin: 20px 0px;\n");
      out.write("            padding: 0px 80px;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .form {\n");
      out.write("            width: 100%;\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("            flex-direction: column;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .input {\n");
      out.write("            width: 65%;\n");
      out.write("            height: 3vw;\n");
      out.write("            margin: 18px 0px;\n");
      out.write("            padding: 0px 10px;\n");
      out.write("            outline: none;\n");
      out.write("            border: 0.5px solid rgb(86, 86, 86);\n");
      out.write("            border-radius: 4px;\n");
      out.write("            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;\n");
      out.write("            font-size: 1.2vw;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .buttons {\n");
      out.write("            width: 100%;\n");
      out.write("            height: 4vw;\n");
      out.write("            display: flex;\n");
      out.write("            align-items: center;\n");
      out.write("            justify-content: space-between;\n");
      out.write("            margin: 30px 0px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .createbtn {\n");
      out.write("            margin-left: 20px;\n");
      out.write("            outline: none;\n");
      out.write("            border: none;\n");
      out.write("            background: none;\n");
      out.write("            cursor: pointer;\n");
      out.write("            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;\n");
      out.write("            font-weight: bold;\n");
      out.write("            color: rgb(136, 79, 190);\n");
      out.write("            font-size: 1.2vw;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .signin {\n");
      out.write("            width: 25%;\n");
      out.write("            height: 70%;\n");
      out.write("            margin-right: 40px;\n");
      out.write("            outline: none;\n");
      out.write("            border: 2px solid rgb(116 116 116);\n");
      out.write("            border-radius: 4px;\n");
      out.write("            cursor: pointer;\n");
      out.write("            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;\n");
      out.write("            font-weight: bold;\n");
      out.write("            font-size: 1.3vw;\n");
      out.write("            background-color: white;\n");
      out.write("            color: rgb(116 116 116);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .signin:hover {\n");
      out.write("            background-color: rgb(116 116 116);\n");
      out.write("            color: white;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <form action=\"Login.jsp\" method=\"POST\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"Box\">\n");
      out.write("                <label class=\"Logo\">TEXT-UTILS</label>\n");
      out.write("                <div class=\"description\">\n");
      out.write("                    <label class=\"LogoDescription\"><strong>SIGN IN</strong> To TEXT-UTILS To ACCESS YOUR FEATURES,\n");
      out.write("                        WORKSPACE, SETTINGS AND MANY\n");
      out.write("                        MORE...</label>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form\">\n");
      out.write("                    <input type=\"text\" name=\"loginusername\" class=\"input\" placeholder=\"USERNAME....\">\n");
      out.write("                    <input type=\"password\" name=\"loginpassword\" class=\"input\" placeholder=\"PASSWORD....\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"buttons\">\n");
      out.write("                    <button type=\"submit\" name=\"createaccount\" class=\"createbtn\">create account</button>\n");
      out.write("                    <button type=\"submit\" name=\"signin\" class=\"signin\">SIGN IN</button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </form>\n");
      out.write("</body>\n");
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
