<%-- 
    Document   : Home.jsp
    Created on : Aug 12, 2022, 8:53:23 PM
    Author     : SYSTEM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
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

            search = search.toLowerCase();
            String[] a1 = new String[]{"home", "homepage"};
            String[] a2 = new String[]{"about", "aboutuspage"};
            String[] a3 = new String[]{"contactus", "contact"};
            String[] a4 = new String[]{"profile", "profilepage"};
            String[] a5 = new String[]{"register", "registerpage"};

            if (searchbutton != null) {
                for (int i = 0; i < a1.length; i++) {
                    if (search.contains(a1[i])) {
                        response.sendRedirect("HomePage.jsp");
                        break;
                    }else if (search.contains(a2[i])) {
                        response.sendRedirect("AboutUsPage.jsp");
                        break;
                    }else if (search.contains(a3[i])) {
                        response.sendRedirect("ContactUsPage.jsp");
                        break;
                    }else if (search.contains(a4[i])) {
                        response.sendRedirect("ProfilePage.jsp");
                        break;
                    }else if (search.contains(a5[i])) {
                        session.invalidate();;
                        response.sendRedirect("RegistrationPage.jsp");
                        break;
                    } else {
                        response.sendRedirect("ErrorPage.jsp");
                        break;
                    }
                }
            }
        %>
    </body>
</html>
