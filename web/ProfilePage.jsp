<%-- 
    Document   : ProfilePage.jsp
    Created on : Aug 15, 2022, 8:20:37 PM
    Author     : SYSTEM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>TEXT-UTILS / PROFILE PAGE</title>


        <style>

            html,
            body {
                height: 100%;
                width: 100%;
                margin: 0;
                padding: 0;
                /* background: linear-gradient(to right, #333232 0%, #b6989f 100%); */
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



            /*** VARS ***/
            /*** GENERAL STYLES ***/
            * {
                box-sizing: border-box;
            }

            .clear {
                clear: both;
            }

            /*** CARD STLES ***/
            .cards-container {
                width: 793px;
                max-width: 100%;
                margin: 2rem auto;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .card {
                float: left;
                margin: 3rem;
            }

            .card-one {
                position: relative;
                width: 420px;
                background: #fff;
                box-shadow: 0 10px 7px -5px rgba(0, 0, 0, 0.4);
            }

            .card-one header {
                position: relative;
                width: 100%;
                height: 60px;
                background-color: #c8c;
            }

            .card-one header::before,
            .card-one header::after {
                content: "";
                position: absolute;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                background: inherit;
            }

            .card-one header::before {
                transform: skewY(-8deg);
                transform-origin: 100% 100%;
            }

            .card-one header::after {
                transform: skewY(8deg);
                transform-origin: 0 100%;
            }

            .card-one header .avatar {
                position: absolute;
                left: 50%;
                top: 30px;
                margin-left: -50px;
                z-index: 5;
                width: 100px;
                height: 100px;
                border-radius: 50%;
                overflow: hidden;
                background: #ccc;
                border: 3px solid #fff;
            }

            .card-one header .avatar img {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                width: 100px;
                height: auto;
            }

            .card-one h3 {
                position: relative;
                margin: 80px 0 30px;
                text-align: center;
            }

            .card-one h3::after {
                content: "";
                position: absolute;
                bottom: -15px;
                left: 50%;
                margin-left: -15px;
                width: 30px;
                height: 1px;
                background: #000;
            }

            .card-one .desc {
                padding: 0 1rem 2rem;
                text-align: center;
                line-height: 1.5;
                color: #777;
            }

            .desc{
                font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                font-size: 1rem;
                font-weight: bold;
            }

            .card-one .contacts {
                width: 200px;
                max-width: 100%;
                margin: 0 auto 3rem;
            }

            .card-one .contacts a {
                display: block;
                width: 33.333333%;
                float: left;
                text-align: center;
                color: #c8c;
            }

            .card-one .contacts a:hover {
                color: #333;
            }

            .card-one .contacts a:hover .fa::before {
                color: #fff;
            }

            .card-one .fa::after {
                width: 100%;
                height: 100%;
            }

            .card-one .fa {
                position: relative;
                width: 40px;
                height: 40px;
                line-height: 39px;
                overflow: hidden;
                text-align: center;
                font-size: 1.3em;
            }

            .card-one .fa:before {
                position: relative;
                z-index: 1;
            }

            .card-one .fa::after {
                content: "";
                position: absolute;
                top: 50%;
                left: 50%;
                width: 0;
                height: 0;
                transform: translate(-50%, -50%);
                background: #c8c;
                transition: width 0.3s, height 0.3s;
            }

            .card-one .contacts a:last-of-type .fa {
                line-height: 36px;
            }

            .card-one footer {
                position: relative;
                padding: 1rem;
                background-color: #6573d0;
                text-align: center;
            }

            .card-one footer a {
                padding: 0 1rem;
                color: #e2e2e2;
                transition: color 0.4s;
                text-decoration: none;
                font-size: 1.2rem;
            }

            .card-one footer a:hover {
                color: #c8c;
            }

            .card-one footer::before {
                content: "";
                position: absolute;
                top: -27px;
                left: 50%;
                margin-left: -15px;
                border: 15px solid transparent;
                border-bottom-color: #6573d0;
            }

            .logoutbtn{
                background: none;
                outline: none;
                border: none;
                padding: 0 1rem;
                color: #e2e2e2;
                transition: color 0.4s;
                text-decoration: none;
                font-size: 1.2rem;
                cursor: pointer;
            }

            .logoutbtn:hover{
                color: #c8c;
            }



            /*** RESPONSIVE ***/
            @media only screen and (max-width: 810px) {
                .card {
                    float: none;
                    margin-left: auto;
                    margin-right: auto;
                }
            }
        </style>
    </head>
    <% String username = session.getAttribute("username").toString();
       String useremail = session.getAttribute("usernemail").toString();
    %>
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
                        <button class="searchbutton" name="searchbutton"><img src="search-26265.png" alt="SearchImg" class="SearchImg"></button>
                    </div>
                </nav>
            </header>
        </form>

        <form action="Profile.jsp" method="POST">
            <div class="cards-container">

                <div class="card card-one">
                    <header>
                        <div class="avatar">
                            <img src="userimg.png" alt="Jhon Doe" />
                        </div>
                    </header>

                    <h3><% out.println("<p class=" + "profilename" + ">" + username + "</p>");%></h3>
                    <div class="desc">
                        <p class="email">E-Mail : <% out.println(useremail); %> </p>
                        <p class="email">Last Time Visited : <% out.println(session.getLastAccessedTime()); %></p>
                    </div>

                    <footer>
                        <button class="logoutbtn" type="submit" name="logout">Log Out</button>
                    </footer>
                </div>
                <div class="clear"></div>
            </div>
        </form>

    </body>

</html>
