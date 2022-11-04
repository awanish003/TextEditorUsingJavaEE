package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            .warnpassword {\n");
      out.write("                width: 40%;\n");
      out.write("                height: 40px;\n");
      out.write("                background-color: rgba(249, 133, 133, 0.787);\n");
      out.write("                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;\n");
      out.write("                font-size: large;\n");
      out.write("                display: flex;\n");
      out.write("                justify-content: center;\n");
      out.write("                align-items: center;\n");
      out.write("                border-radius: 10px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .submitsuccess{\n");
      out.write("                width: 40%;\n");
      out.write("                height: 40px;\n");
      out.write("                background-color: rgba(130, 242, 136, 0.713);\n");
      out.write("                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;\n");
      out.write("                font-size: large;\n");
      out.write("                display: flex;\n");
      out.write("                justify-content: center;\n");
      out.write("                align-items: center;\n");
      out.write("                border-radius: 10px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            try {
                String registerusername = request.getParameter("username");
                String registerpassword = request.getParameter("userpassword");
                String confirmregisterpassword = request.getParameter("userpassword2");
                String registeremail = request.getParameter("useremail");
                String registersubmitbutton = request.getParameter("signup");

                
                if (registerpassword.equals(confirmregisterpassword) && registersubmitbutton != null) {
                    String warnpassword = "<h2 class=" + "submitsuccess" + ">Congratulations Sign Up Done Successfully!!</h2>";
                    RequestDispatcher rd1 = request.getRequestDispatcher("RegistrationPage.jsp");
                    rd1.include(request, response);
                    out.println(warnpassword);
                    
                    
                    Class.forName("org.apache.jdbc.derby.ClientDriver");
                    Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Registration", "app","app");
                    PreparedStatement ps = c.prepareStatement("insert into REGISTER values(?, ?, ?)");
                    
                    ps.setString(1, registerusername);
                    ps.setString(2, registerpassword);
                    ps.setString(3, registeremail);
                    
                    ps.executeUpdate();

                    
                } else if(!registerpassword.equals(confirmregisterpassword) && registersubmitbutton != null){
                    String warnpassword = "<h2 class=" + "warnpassword" + ">Confirm Password Does'nt Match! Please Renter Again..</h2>";
                    RequestDispatcher rd1 = request.getRequestDispatcher("RegistrationPage.jsp");
                    rd1.include(request, response);
                    out.println(warnpassword);
                }

//                if (registersubmitbutton != null) {
//                    String warnpassword = "<h2></h2>";
//                    RequestDispatcher rd2 = request.getRequestDispatcher("RegistrationPage.jsp");
//                    rd2.include(request, response);
//                    out.println(warnpassword);
//                }
//                else if(registersubmitbutton != null){
//                    String warnpassword = "<h2 class=" + "submitsuccess" + ">Congratulations Sign Up Done Successfully!!</h2>";
//                    RequestDispatcher rd2 = request.getRequestDispatcher("RegistrationPage.jsp");
//                    rd2.include(request, response);
//                    out.println(warnpassword);
//                }
            } catch (Exception e) {
                out.println(" ERROR : " + e);
            }
        
      out.write("\n");
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
