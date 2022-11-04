<%-- 
    Document   : Register
    Created on : Aug 10, 2022, 8:27:59 PM
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
            try {
                String registerusername = request.getParameter("username");
                String registerpassword = request.getParameter("userpassword");
                String confirmregisterpassword = request.getParameter("userpassword2");
                String registeremail = request.getParameter("useremail");
                String registersubmitbutton = request.getParameter("signup");

              char[] r= registerusername.toCharArray();
              int caps = 0;
                
                for(int i=0; i < r.length; i++){
                    if(Character.isUpperCase(r[i])){
                        caps = caps + 1;
                    }
                }
                
                

                
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection c2 = DriverManager.getConnection("jdbc:derby://localhost:1527/Registration", "app","app");
                PreparedStatement ps2 = c2.prepareStatement("select * from REGISTER where username = ?");
                
                ps2.setString(1, registerusername);
                
                ResultSet rs = ps2.executeQuery();
                
                if (registerpassword.equals(confirmregisterpassword) && registersubmitbutton != null && !rs.next() && !registerusername.contains(" ") && caps == 0) {
                    String message = "<h2 class=" + "submitsuccess" + ">Congratulations Sign Up Done Successfully!!</h2>";
                    RequestDispatcher rd1 = request.getRequestDispatcher("RegistrationPage.jsp");
                    rd1.include(request, response);
                    out.println(message);
                    
                    
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection c1 = DriverManager.getConnection("jdbc:derby://localhost:1527/Registration", "app","app");
                    PreparedStatement ps1 = c1.prepareStatement("insert into REGISTER values(?, ?, ?)");
                    
                    ps1.setString(1, registerusername);
                    ps1.setString(2, registerpassword);
                    ps1.setString(3, registeremail);
                    
                    ps1.executeUpdate();
                    
                    session.setAttribute("username", registerusername);
                    session.setAttribute("usernemail", registeremail);
                    response.sendRedirect("HomePage.jsp");

                    
                } else if(!registerpassword.equals(confirmregisterpassword) && registersubmitbutton != null){
                    String message = "<h2 class=" + "warnpassword" + ">Confirm Password Does'nt Match! Please Renter Again..</h2>";
                    RequestDispatcher rd1 = request.getRequestDispatcher("RegistrationPage.jsp");
                    rd1.include(request, response);
                    out.println(message);
                } else if( caps != 0 && registersubmitbutton != null){
                    String message = "<h2 class=" + "warnpassword" + ">Ussername Must Not Contain Capital Letters..</h2>";
                    RequestDispatcher rd1 = request.getRequestDispatcher("RegistrationPage.jsp");
                    rd1.include(request, response);
                    out.println(message);
                }else if(registerusername.contains(" ") && registersubmitbutton != null){
                    String message = "<h2 class=" + "warnpassword" + ">Username Must Not Contain Space..</h2>";
                    RequestDispatcher rd1 = request.getRequestDispatcher("RegistrationPage.jsp");
                    rd1.include(request, response);
                    out.println(message);
                }else{
                    String message = "<h2 class=" + "warnpassword" + ">Username Exists, Please Try With Another Username..</h2>";
                    RequestDispatcher rd1 = request.getRequestDispatcher("RegistrationPage.jsp");
                    rd1.include(request, response);
                    out.println(message);
                }

            } catch (Exception e) {
                out.println(" ERROR : " + e);
            }
        %>
    </body>
</html>
