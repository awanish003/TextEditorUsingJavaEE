<%-- 
    Document   : Profile
    Created on : Aug 15, 2022, 8:46:57 PM
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
            String logout = request.getParameter("logout");
            
            if(logout != null){
                session.invalidate();
                response.sendRedirect("LoginPage.jsp");
            }
        %>
    </body>
</html>
