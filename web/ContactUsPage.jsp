<%-- 
    Document   : ContactUsPage
    Created on : Aug 15, 2022, 1:47:23 PM
    Author     : SYSTEM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>TEXT-UTILS / CONTACT PAGE</title>
        <style>
            html,
            body {
                height: 100%;
                width: 100%;
                margin: 0;
                padding: 0;
                background: linear-gradient(to right, #3e9ca1 0%, #c8e18b 100%);

            }

            ::selection {
                background-color: #dba6ae;
            }

            header {
                position: sticky;
                top: 0;
                background: white;
                box-shadow: rgba(0, 0, 0, 0.15) 1.95px 1.95px 2.6px;
            }

            nav {
                font-size: 15px;
                height: 65px;
            }

            .left img {
                width: 35px;
                height: 25px;
            }

            .container {
                padding-left: 30px;
                padding-right: 10px;
                height: 65px;
            }

            .container span a {
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                font-size: 1.6vw;
                font-weight: bold;
                color: rgb(116 116 116);
                text-decoration: none;
            }

            .container ul a {
                text-decoration: none;
                padding: 6px 10px;
                border-radius: 4px;
                background-color: rgb(236, 235, 235);
            }

            .nav-btn {
                outline: none;
                border: none;
                text-decoration: none;
                padding: 7px 14px;
                border-radius: 4px;
                background-color: rgb(236, 235, 235);
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                font-size: 1.2vw;
                cursor: pointer;
            }

            .nav-btn:hover {
                color: white;
                background-color: rgba(28, 19, 19, 0.43);
            }

            .container ul a:hover {
                color: white;
                background-color: rgba(28, 19, 19, 0.43);
            }

            nav ul li {
                list-style: none;
                padding: 0px 20px;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                font-size: 1.2vw;
                font-weight: 400;
            }

            .flex {
                display: flex;
            }

            .items-center {
                align-items: center;
            }

            .justify-center {
                justify-content: center;
            }

            .flexdirection {
                flex-direction: column;
            }

            .space-between {
                justify-content: space-between;
            }

            .uppercase {
                text-transform: uppercase;
            }

            .semibold {
                font-weight: bolder;
            }


            .mx-2 {
                margin-left: 4px;
                margin-right: 4px;
            }

            .mx-4 {
                margin-left: 25px;
                margin-right: 20px;
            }

            .my-2 {
                margin-top: 14px;
                margin-bottom: 14px;
            }


            .s1 {
                background-color: rgb(243, 240, 240);
                height: 150vh;
            }


            .searchbutton {
                outline: none;
                border: none;
                background: none;
                width: 11%;
                padding: 0;
                margin-bottom: 8px;
                height: 48%;
                cursor: pointer;
            }

            .search {
                outline: none;
                background: none;
                border: none;
                width: 19vw;
                height: 2vw;
                border-bottom: 1px solid rgb(128, 0, 128);
                border-bottom-left-radius: 6px;
                padding-left: 20px;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                font-size: 1.2vw;
                font-weight: bold;

            }

            .SearchImg {
                width: 100%;
                height: 100%;
                margin-top: 2px;
                border-bottom-right-radius: 8px;
                border-top-right-radius: 8px;
                border-top-left-radius: 8px;
                border: 1px solid rgb(128, 0, 128);
            }

            .profilebox {
                width: 20%;
                height: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                margin-left: 10px;
                outline: none;
                border: none;
                background: none;
                cursor: pointer;

            }

            .profileimg {
                margin-top: 4px;
                width: 50%;
                height: 50%;
            }

            .profilename {
                margin: 2px 0px;
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                font-size: 1.2vw;
                font-weight: bold;
            }

            *,
            *:before,
            *:after {
                box-sizing: border-box;
                -webkit-font-smoothing: antialiased;
                -moz-osx-font-smoothing: grayscale;
            }

            body,
            button,
            input {
                font-family: 'Montserrat', sans-serif;
                font-weight: 700;
                letter-spacing: 1.4px;
            }

            .background {
                display: flex;
                min-height: 100vh;
            }

            .container1 {
                flex: 0 1 700px;
                margin: auto;
                padding: 10px;
            }

            .screen {
                position: relative;
                background: #3e3e3e;
                border-radius: 15px;
            }

            .screen:after {
                content: '';
                display: block;
                position: absolute;
                top: 0;
                left: 20px;
                right: 20px;
                bottom: 0;
                border-radius: 15px;
                box-shadow: 0 20px 40px rgba(0, 0, 0, .4);
                z-index: -1;
            }

            .screen-body {
                display: flex;
            }

            .screen-body-item {
                flex: 1;
                padding: 50px;
            }

            .screen-body-item.left {
                display: flex;
                flex-direction: column;
            }

            .app-title {
                display: flex;
                flex-direction: column;
                position: relative;
                color: #ea1d6f;
                font-size: 26px;
            }

            .app-title:after {
                content: '';
                display: block;
                position: absolute;
                left: 0;
                bottom: -10px;
                width: 25px;
                height: 4px;
                background: #ea1d6f;
            }

            .app-contact {
                margin-top: auto;
                font-size: 8px;
                color: #888;
            }

            .app-form-group {
                margin-bottom: 15px;
            }

            .app-form-group.message {
                margin-top: 40px;
            }

            .app-form-group.buttons {
                margin-bottom: 0;
                text-align: right;
            }

            .app-form-control {
                width: 100%;
                padding: 10px 0;
                background: none;
                border: none;
                border-bottom: 1px solid #666;
                color: #ddd;
                font-size: 14px;
                outline: none;
                transition: border-color .2s;
            }

            .app-form-control::placeholder {
                color: #666;
            }

            .app-form-control:focus {
                border-bottom-color: #ddd;
            }

            .app-form-button {
                background: none;
                border: none;
                color: #ea1d6f;
                font-size: 14px;
                cursor: pointer;
                outline: none;
            }

            .app-form-button:hover {
                color: #b9134f;
            }


            @media screen and (max-width: 520px) {
                .screen-body {
                    flex-direction: column;
                }

                .screen-body-item.left {
                    margin-bottom: 30px;
                }

                .app-title {
                    flex-direction: row;
                }

                .app-title span {
                    margin-right: 12px;
                }

                .app-title:after {
                    display: none;
                }
            }

            @media screen and (max-width: 600px) {
                .screen-body {
                    padding: 40px;
                }

                .screen-body-item {
                    padding: 0;
                }
            }
        </style>
    </head>

    <body>
        <form action="Home.jsp" method="POST">
            <header class="container">
                <nav class="flex space-between ">
                    <div class="left flex items-center ">
                        <span><a href="HomePage.jsp">TEXT-UTILS.com</a></span>
                        <ul class="flex items-center justify-center uppercase semibold">
                            <li><button class="nav-btn" name="aboutus">About Us</button></li>
                            <li><button class="nav-btn" name="contactus">Contact Us</button></li>
                        </ul>
                    </div>
                    <div class="right flex items-center">
                        <input type="text" name="search" id="search" class="search" placeholder="Search...">
                        <button class="searchbutton" name="searchbutton"><img src="search-26265.png" alt="SearchImg"
                                                                              class="SearchImg"></button>
                        <button class="profilebox" name="profile">
                            <img src="userimg.png" alt="profileimg" class="profileimg">
                            <% String username = session.getAttribute("username").toString();
                                out.println("<p class=" + "profilename" + ">" + username + "</p>");
                            %>
                        </button>
                    </div>
                </nav>
            </header>
        </form>

        <form action="ContactUs.jsp" method="POST">
            <div class="background">
                <div class="container1">
                    <div class="screen">
                        <div class="screen-body">
                            <div class="screen-body-item left">
                                <div class="app-title">
                                    <span>CONTACT</span>
                                    <span>US</span>
                                </div>
                                <div class="app-contact">CONTACT INFO : +62 81 314 928 595</div>
                            </div>
                            <div class="screen-body-item">
                                <div class="app-form">
                                    <div class="app-form-group">
                                        <input type="txt" class="app-form-control" placeholder="NAME" name="username" value="<%=username%>" disabled>
                                    </div>
                                    <div class="app-form-group">
                                        <input type="text" class="app-form-control" placeholder="EMAIL" name="email">
                                    </div>
                                    <div class="app-form-group">
                                        <input type="text" class="app-form-control" placeholder="CONTACT NO" name="contact">
                                    </div>
                                    <div class="app-form-group message">
                                        <input type="text" class="app-form-control" placeholder="MESSAGE" name="message">
                                    </div>
                                    <div class="app-form-group buttons">
                                        <button type="submit" class="app-form-button" name="cancel">CANCEL</button>
                                        <button type="submit" class="app-form-button" name="send">SEND</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

    </body>

</html>
