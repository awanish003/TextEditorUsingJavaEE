<%-- 
    Document   : Login
    Created on : Aug 10, 2022, 8:19:29 PM
    Author     : SYSTEM
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .warnpassword {
                width: 40%;
                height: 40px;
                background-color: rgba(249, 133, 133, 0.787);
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                font-size: large;
                display: flex;
                justify-content: center;
                align-items: center;
                border-radius: 10px;
            }

            .submitsuccess{
                width: 40%;
                height: 40px;
                background-color: rgba(130, 242, 136, 0.713);
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                font-size: large;
                display: flex;
                justify-content: center;
                align-items: center;
                border-radius: 10px;
            }
        </style>
    </head>
    <body>
        <%
            String loginusername = request.getParameter("loginusername");
            String loginpassword = request.getParameter("loginpassword");
            String loginbutton = request.getParameter("signin");
            String createaccount = request.getParameter("createaccount");


            if(createaccount != null){
                response.sendRedirect("RegistrationPage.jsp");
            }

            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Registration", "app", "app");
            PreparedStatement ps = c.prepareStatement("select * from REGISTER where username = ? and password = ?");

            ps.setString(1, loginusername);
            ps.setString(2, loginpassword);

            ResultSet rs = ps.executeQuery();

            if (rs.next() && loginbutton != null) {

                String loginemail = rs.getString(3);
                String message = "<h2 class=" + "submitsuccess" + ">Login Successfull!!</h2>";
                RequestDispatcher rd1 = request.getRequestDispatcher("RegistrationPage.jsp");
                rd1.include(request, response);
                out.println(message);

                session.setAttribute("username", loginusername);
                session.setAttribute("usernemail", loginemail);
                response.sendRedirect("HomePage.jsp");
            } else {
                String message = "<h2 class=" + "warnpassword" + ">Invalid Username Or Password..</h2>";
                RequestDispatcher rd1 = request.getRequestDispatcher("LoginPage.jsp");
                rd1.include(request, response);
                out.println(message);
            }


        %>
    </body>
</html>
