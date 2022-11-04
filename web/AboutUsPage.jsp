<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>TEXT-UTILS / ABOUT US PAGE</title>
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
                width: 90%;
                height: 100%;
                margin-top: 2px;
                border-bottom-right-radius: 8px;
                border-top-right-radius: 8px;
                border-top-left-radius: 8px;
                border: 1px solid rgb(128, 0, 128);
            }

            .profilebox{
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

            .profileimg{
                margin-top: 4px;
                width: 55%;
                height: 50%;
            }

            .profilename{
                margin: 2px 0px;
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                font-size: 1.2vw;
                font-weight: bold;
            }

            .Box {
                width: 100%;
                height: 100%;
                display: flex;
                margin-top: 40px;
                align-items: center;
                flex-direction: column;
            }

            .Logo {
                margin-top: 30px;
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                font-size: 3.4vw;
                font-weight: bold;
                color: rgb(116 116 116);

            }

            .para {
                width: 90%;
                height: 74%;
                border: 2px solid rgb(106, 106, 106);
                border-radius: 10px;
                display: flex;
                align-items: center;
                flex-direction: column;
                background-color: white;
            }

            .description {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                margin: 2px 2px;
                font-size: 2vw;
                font-weight: 100;
            }

            .content{
                width: 90%;
                height: 60%;
                margin-top: 35px;
                display: flex;
                align-items: center;
                justify-content: space-between;
                flex-direction: row;
            }

            .contenttext{
                width: 50%;
                height: 100%;
                padding: 10px 30px;
                margin: 5px 15px;
                font-family: monospace;
                font-size: 1.6vw;
                color: rgba(51, 51, 51, 0.829);
                text-align: center;
                background-color: rgba(155, 178, 211, 0.387);
                border-radius: 10px;
            }

            .contentslide{
                width: 50%;
                height: 100%;
                border-radius: 10px;
                overflow-x: auto;
                display: flex;
                flex-direction: row;
            }

            .slide1{
                min-width: 100%;
                min-height: 100%;
                background-color: rgba(0, 255, 119, 0.898);
                display: flex;
                justify-content: center;
                align-items: center;
                text-align: center;


            }
            .slide2{
                min-width: 100%;
                min-height: 100%;
                background-color: rgb(0, 191, 255);
                display: flex;
                justify-content: center;
                text-align: center;
                align-items: center;

            }
            .slide3{
                min-width: 100%;
                min-height: 100%;
                background-color: rgba(255, 106, 0, 0.83);
                display: flex;
                justify-content: center;
                align-items: center;
                text-align: center;

            }
            .slide4{
                min-width: 100%;
                min-height: 100%;
                background-color: rgba(255, 0, 98, 0.622);
                display: flex;
                justify-content: center;
                align-items: center;
                text-align: center;

            }
            .slide5{
                min-width: 100%;
                min-height: 100%;
                background-color: rgba(0, 110, 255, 0.216);
                display: flex;
                justify-content: center;
                align-items: center;
                text-align: center;

            }

            .feature{
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                font-size: 4vw;
                color: rgba(56, 56, 255, 0.897);
            }


            .contentslide::-webkit-scrollbar-track {
                border: 5px solid white;
                background-color: #b2bec3;
            }

            .contentslide::-webkit-scrollbar {
                width: 15px;
                background-color: #dfe6e9;
            }

            .contentslide::-webkit-scrollbar-thumb {
                background-color: #970ff27e;
                border-radius: 10px;
            }

        </style>
    </head>

    <body>
        <form action="Home.jsp" method="POST">
            <header class="container">
                <nav class="flex space-between ">
                    <div class="left flex items-center ">
                        <span><a href="HomePage.jsp" name="logo">TEXT-UTILS.com</a></span>
                        <ul class="flex items-center justify-center uppercase semibold">
                            <li><button class="nav-btn" name="aboutus">About Us</button></li>
                            <li><button class="nav-btn" name="contactus">Contact Us</button></li>
                        </ul>
                    </div>
                    <div class="right flex items-center">
                        <input type="text" name="search" id="search" class="search" placeholder="Search...">
                        <button class="searchbutton" name="searchbutton"><img src="search-26265.png" alt="SearchImg" class="SearchImg"></button>
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

        <div class="Box">
            <div class="para">
                <label class="Logo">TEXT-UTILS.com</label>
                <p class="description">Edit Your Text Easily, Efficiently, Just In Time!</p>
                <div class="content">
                    <p class="contenttext">We Provide Free Tools To Help You With Your Daily Task. You will Find Tools For Formatting Source Code, Converters, Tools For Handling Text, Such as Remove Duplicate Characters, Empty Lines, Text Sorter and Many Other. Check The Current Feature Below And Feel Free to Recommend A New Feature By Contacting Us. Text-Utils Is One Of The Most Powerfull, Secure and Free Website Containing Various Tools For Helping With Your Daily Task, Such As Online Formatters </p>
                    <div class="contentslide">
                        <div class="slide1">
                            <p class="feature">REMOVE PUNCTUATIONS</p>
                        </div>
                        <div class="slide2">
                            <p class="feature">UPPERCASE</p>
                        </div>
                        <div class="slide3">
                            <p class="feature">NEW LINE REMOVER</p>
                        </div>
                        <div class="slide4">
                            <p class="feature">EXTRA SPACE REMOVER</p>
                        </div>
                        <div class="slide5">
                            <p class="feature">COUNT CHARACTER</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>