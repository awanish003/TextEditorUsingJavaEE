package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class HomePage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>TEXT-UTILS / HOME PAGE</title>\n");
      out.write("    <style>\n");
      out.write("        html,\n");
      out.write("        body {\n");
      out.write("            height: 100%;\n");
      out.write("            width: 100%;\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        ::selection {\n");
      out.write("            background-color: #dba6ae;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        header {\n");
      out.write("            position: sticky;\n");
      out.write("            top: 0;\n");
      out.write("            background: white;\n");
      out.write("            box-shadow: rgba(0, 0, 0, 0.15) 1.95px 1.95px 2.6px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        nav {\n");
      out.write("            font-size: 15px;\n");
      out.write("            height: 65px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .left img {\n");
      out.write("            width: 35px;\n");
      out.write("            height: 25px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .container {\n");
      out.write("            padding-left: 30px;\n");
      out.write("            padding-right: 10px;\n");
      out.write("            height: 65px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .container span a {\n");
      out.write("            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;\n");
      out.write("            font-size: 1.6vw;\n");
      out.write("            font-weight: bold;\n");
      out.write("            color: rgb(116 116 116);\n");
      out.write("            text-decoration: none;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .container ul a {\n");
      out.write("            text-decoration: none;\n");
      out.write("            padding: 6px 10px;\n");
      out.write("            border-radius: 4px;\n");
      out.write("            background-color: rgb(236, 235, 235);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .nav-btn {\n");
      out.write("            outline: none;\n");
      out.write("            border: none;\n");
      out.write("            text-decoration: none;\n");
      out.write("            padding: 7px 14px;\n");
      out.write("            border-radius: 4px;\n");
      out.write("            background-color: rgb(236, 235, 235);\n");
      out.write("            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;\n");
      out.write("            font-size: 1.2vw;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .nav-btn:hover {\n");
      out.write("            color: white;\n");
      out.write("            background-color: rgba(28, 19, 19, 0.43);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .container ul a:hover {\n");
      out.write("            color: white;\n");
      out.write("            background-color: rgba(28, 19, 19, 0.43);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        nav ul li {\n");
      out.write("            list-style: none;\n");
      out.write("            padding: 0px 20px;\n");
      out.write("            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;\n");
      out.write("            font-size: 1.2vw;\n");
      out.write("            font-weight: 400;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .flex {\n");
      out.write("            display: flex;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .items-center {\n");
      out.write("            align-items: center;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .justify-center {\n");
      out.write("            justify-content: center;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .flexdirection {\n");
      out.write("            flex-direction: column;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .space-between {\n");
      out.write("            justify-content: space-between;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .uppercase {\n");
      out.write("            text-transform: uppercase;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .semibold {\n");
      out.write("            font-weight: bolder;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("\n");
      out.write("        .mx-2 {\n");
      out.write("            margin-left: 4px;\n");
      out.write("            margin-right: 4px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .mx-4 {\n");
      out.write("            margin-left: 25px;\n");
      out.write("            margin-right: 20px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .my-2 {\n");
      out.write("            margin-top: 14px;\n");
      out.write("            margin-bottom: 14px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("\n");
      out.write("        .s1 {\n");
      out.write("            background-color: rgb(243, 240, 240);\n");
      out.write("            height: 150vh;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("\n");
      out.write("        .searchbutton {\n");
      out.write("            outline: none;\n");
      out.write("            border: none;\n");
      out.write("            background: none;\n");
      out.write("            width: 11%;\n");
      out.write("            padding: 0;\n");
      out.write("            margin-bottom: 8px;\n");
      out.write("            height: 48%;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .search {\n");
      out.write("            outline: none;\n");
      out.write("            background: none;\n");
      out.write("            border: none;\n");
      out.write("            width: 19vw;\n");
      out.write("            height: 2vw;\n");
      out.write("            border-bottom: 1px solid rgb(128, 0, 128);\n");
      out.write("            border-bottom-left-radius: 6px;\n");
      out.write("            padding-left: 20px;\n");
      out.write("            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;\n");
      out.write("            font-size: 1.2vw;\n");
      out.write("            font-weight: bold;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .SearchImg {\n");
      out.write("            width: 90%;\n");
      out.write("            height: 100%;\n");
      out.write("            margin-top: 2px;\n");
      out.write("            border-bottom-right-radius: 8px;\n");
      out.write("            border-top-right-radius: 8px;\n");
      out.write("            border-top-left-radius: 8px;\n");
      out.write("            border: 1px solid rgb(128, 0, 128);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .Welcome {\n");
      out.write("            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;\n");
      out.write("            font-size: 4.5vw;\n");
      out.write("            font-weight: 400;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .description {\n");
      out.write("            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;\n");
      out.write("            font-size: 2vw;\n");
      out.write("            font-weight: 100;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .TextArea {\n");
      out.write("            max-width: 1030px;\n");
      out.write("            min-width: 1030px;\n");
      out.write("            max-height: 356px;\n");
      out.write("            min-height: 356px;\n");
      out.write("            outline: none;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            padding: 40px 40px;\n");
      out.write("            font-size: 1.5vw;\n");
      out.write("            font-family: monospace;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .form-check-label {\n");
      out.write("            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;\n");
      out.write("            font-size: 1.5vw;\n");
      out.write("            font-weight: bold;\n");
      out.write("            color: rgba(0, 0, 0, 0.742);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .form-check-input {\n");
      out.write("            width: 1.5vw;\n");
      out.write("            height: 1.5vw;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .apply {\n");
      out.write("            width: 12vw;\n");
      out.write("            height: 4vw;\n");
      out.write("            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;\n");
      out.write("            font-size: 2vw;\n");
      out.write("            font-weight: 500;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            cursor: pointer;\n");
      out.write("            outline: none;\n");
      out.write("            border: none;\n");
      out.write("            background-color: rgba(128, 255, 0, 0.53);\n");
      out.write("            color: rgba(19, 51, 230, 0.52);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .profilebox{\n");
      out.write("            width: 20%;\n");
      out.write("            height: 100%;\n");
      out.write("            display: flex;\n");
      out.write("            align-items: center;\n");
      out.write("            justify-content: center;\n");
      out.write("            flex-direction: column;\n");
      out.write("            margin-left: 10px;\n");
      out.write("            outline: none;\n");
      out.write("            border: none;\n");
      out.write("            background: none;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .profileimg{\n");
      out.write("            margin-top: 4px;\n");
      out.write("            width: 55%;\n");
      out.write("            height: 50%;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .profilename{\n");
      out.write("            margin: 2px 0px;\n");
      out.write("            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;\n");
      out.write("            font-size: 1.2vw;\n");
      out.write("            font-weight: bold;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .TextArea::-webkit-scrollbar-track {\n");
      out.write("            border: 5px solid white;\n");
      out.write("            background-color: #b2bec3;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .TextArea::-webkit-scrollbar {\n");
      out.write("            width: 15px;\n");
      out.write("            background-color: #dfe6e9;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .TextArea::-webkit-scrollbar-thumb {\n");
      out.write("            background-color: #91caff99;\n");
      out.write("            border-radius: 10px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <form action=\"Home.jsp\" method=\"POST\">\n");
      out.write("        <header class=\"container\">\n");
      out.write("            <nav class=\"flex space-between \">\n");
      out.write("                <div class=\"left flex items-center \">\n");
      out.write("                    <span><a href=\"HomePage.jsp\" name=\"logo\">TEXT-UTILS.com</a></span>\n");
      out.write("                    <ul class=\"flex items-center justify-center uppercase semibold\">\n");
      out.write("                        <li><button class=\"nav-btn\" name=\"aboutus\">About Us</button></li>\n");
      out.write("                        <li><button class=\"nav-btn\" name=\"contactus\">Contact Us</button></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"right flex items-center\">\n");
      out.write("                    <input type=\"text\" name=\"search\" id=\"search\" class=\"search\" placeholder=\"Search...\">\n");
      out.write("                    <button class=\"searchbutton\" name=\"searchbutton\"><img src=\"search-26265.png\" alt=\"SearchImg\" class=\"SearchImg\"></button>\n");
      out.write("                    <button class=\"profilebox\" name=\"profile\">\n");
      out.write("                        <img src=\"userimg.png\" alt=\"profileimg\" class=\"profileimg\">\n");
      out.write("                        ");
 String username = session.getAttribute("username").toString();
                           out.println("<p class="+"profilename"+">" + username + "</p>");
                        
      out.write("\n");
      out.write("                    </button>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("    </form>\n");
      out.write("\n");
      out.write("    <div class=\"body flex items-center justify-center flexdirection my-2\">\n");
      out.write("\n");
      out.write("        <div class=\"WelcomeLabel flex items-center justify-center flexdirection\">\n");
      out.write("            <label class=\"Welcome\">Welcome ");
 out.println(username); 
      out.write(" To Text-Utils</label>\n");
      out.write("            <label class=\"description\">Edit Your Text Easily, Efficiently, Just In Time!</label>\n");
      out.write("        </div>\n");
      out.write("        <form action=\"/analyze\" method=\"post\">\n");
      out.write("            <div class=\"my-2 flex flexdirection\">\n");
      out.write("                <textarea class=\"TextArea\" name=\"text\" rows=\"10\"></textarea>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"my-2 mx-4\">\n");
      out.write("                <input class=\"form-check-input\" name=\"removepunc\" type=\"checkbox\">\n");
      out.write("                <label class=\"form-check-label\">Remove punctutions</label>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"my-2 mx-4\">\n");
      out.write("                <input class=\"form-check-input\" name=\"fullcaps\" type=\"checkbox\">\n");
      out.write("                <label class=\"form-check-label\">UPPERCASE</label>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"my-2 mx-4\">\n");
      out.write("                <input class=\"form-check-input\" name=\"newlineremover\" type=\"checkbox\">\n");
      out.write("                <label class=\"form-check-label\">newlineremover</label>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"my-2 mx-4\">\n");
      out.write("                <input class=\"form-check-input\" name=\"extraspaceremover\" type=\"checkbox\">\n");
      out.write("                <label class=\"form-check-label\">extra space remover</label>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"my-2 mx-4\">\n");
      out.write("                <input class=\"form-check-input\" name=\"charcount\" type=\"checkbox\">\n");
      out.write("                <label class=\"form-check-label\">count characters</label>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"my-2 flex align-items justify-center\">\n");
      out.write("                <button type=\"submit\" class=\"apply\">APPLY IT!</button>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
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