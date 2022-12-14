package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String logo = request.getParameter("logo");
            String aboutus = request.getParameter("aboutus");
            String contactus = request.getParameter("contactus");
            String applyit = request.getParameter("applyit");
            String profile = request.getParameter("profile");
            String search = request.getParameter("search");
            String searchbutton = request.getParameter("searchbutton");

            if (profile != null) {
                response.sendRedirect("ProfilePage.jsp");
            }

            if (logo != null) {
                response.sendRedirect("HomePage.jsp");
            }

            if (aboutus != null) {
                response.sendRedirect("AboutUsPage.jsp");
            }

            if (contactus != null) {
                response.sendRedirect("ContactUsPage.jsp");
            }

            if (applyit != null) {
                RequestDispatcher rd1 = request.getRequestDispatcher("Analyze.jsp");
                rd1.forward(request, response);
            }

            String[] a = new String[]{"Home", "HomePage"};
            if (searchbutton != null) {
                for (int i = 0; i < a.length; i++) {
                    if (search.equalsIgnoreCase(a[i])) {
                        response.sendRedirect("HomePage.jsp");
                        break;
                    } else {
                        response.sendRedirect("ErrorPage.jsp");
                        break;
                    }
                }
//                RequestDispatcher rd1 = request.getRequestDispatcher("Analyze.jsp");
//                rd1.forward(request, response);
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
