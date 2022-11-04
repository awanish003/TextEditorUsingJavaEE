<%-- 
    Document   : ContactUs.jsp
    Created on : Aug 15, 2022, 4:16:37 PM
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
                width: 60%;
                height: 40px;
                display: block;
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
                display: block;
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
            String username = session.getAttribute("username").toString();
            String email = request.getParameter("email");
            String contact = request.getParameter("contact");
            String message = request.getParameter("message");
            String cancel = request.getParameter("cancel");
            String send = request.getParameter("send");

            if (cancel != null) {
                response.sendRedirect("HomePage.jsp");
            }
            if (email.isEmpty() || contact.isEmpty() || message.isEmpty()) {

                String message1 = "<h2 class=" + "warnpassword" + ">Any Of The Field Is Empty Please Fill All The Details..</h2>";
                RequestDispatcher rd1 = request.getRequestDispatcher("ContactUsPage.jsp");
                rd1.include(request, response);
                out.println(message1);

            } else {

                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection c1 = DriverManager.getConnection("jdbc:derby://localhost:1527/Registration", "app", "app");
                PreparedStatement ps1 = c1.prepareStatement("insert into CONTACTUS values(?, ?, ?, ?)");

                ps1.setString(1, username);
                ps1.setString(2, email);
                ps1.setString(3, contact);
                ps1.setString(4, message);

                ps1.executeUpdate();

                String message1 = "<h2 class=" + "submitsuccess" + ">Message Sent Successfully!..</h2>";
                RequestDispatcher rd1 = request.getRequestDispatcher("ContactUsPage.jsp");
                rd1.include(request, response);
                out.println(message1);

            }
//if (send != null && email == null && contact == null && message == null) {

        %>
    </body>
</html>
