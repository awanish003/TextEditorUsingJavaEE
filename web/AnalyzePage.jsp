<%@page import="java.util.Locale"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>TEXT-UTILS / ANALYZED PAGE</title>
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

            .analyzecontainer {
                width: 100%;
                height: 100%;
                display: flex;
                align-items: center;
                flex-direction: column;
            }

            .labeltext {
                width: 100%;
                height: 10%;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
                font-size: 4vw;
                color: rgba(2, 6, 59, 0.513);
            }

            .apply {
                width: 12vw;
                height: 4vw;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                font-size: 2vw;
                font-weight: 500;
                border-radius: 10px;
                cursor: pointer;
                outline: none;
                border: none;
                background-color: rgba(128, 255, 0, 0.53);
                color: rgb(33 59 205 / 74%);
            }

            .apply:hover {
                border: 2px solid gray;
                background: linear-gradient(to right, #00d4df 0%, #9ad700 100%);
                color: white;


            }

            .box {
                width: 70%;
                height: 50%;
                padding: 10px 10px;
                max-width: 95%;
                overflow-y: auto;
                border-radius: 10px;
                font-family:monospace;
                font-size: 1.4vw;
                color: rgba(0, 0, 0, 0.668);
                border: 2px solid rgb(106, 106, 106);
            }

            .box::-webkit-scrollbar-track {
                border: 5px solid white;
                background-color: #b2bec3;
            }

            .box::-webkit-scrollbar {
                width: 15px;
                background-color: #dfe6e9;
            }

            .box::-webkit-scrollbar-thumb {
                background-color: #91caff99;
                border-radius: 10px;
            }

            .output{
                white-space: pre-line;
                background-color: white;
            }


        </style>
    </head>
    <%
        String textarea = request.getParameter("textarea").toString();
        String removepunc = request.getParameter("removepunc");
        String fullcaps = request.getParameter("fullcaps");
        String newlineremover = request.getParameter("newlineremover");
        String extraspaceremover = request.getParameter("extraspaceremover");
        String charcount = request.getParameter("charcount");

        String analyzed = "";
        textarea = textarea.replaceAll(" ", "&nbsp;");

        if (removepunc != null) {
            textarea = textarea.replaceAll("&nbsp;", " ");
            textarea = textarea.replaceAll("\\p{Punct}", "");
            textarea = textarea.replaceAll(" ", "&nbsp;");
        }

        if (fullcaps != null) {
            textarea = textarea.replaceAll("&nbsp;", " ");
            textarea = textarea.toUpperCase();
            textarea = textarea.replaceAll(" ", "&nbsp;");
        }

        if (newlineremover != null) {
            textarea = textarea.replaceAll("\n\r", "");
            textarea = textarea.replaceAll("\n\n", "");
        }

        if (extraspaceremover != null) {
            textarea = textarea.replaceAll("&nbsp;&nbsp;", "");
            textarea = textarea.replaceAll(" ", "&nbsp;");
        }

        if (charcount != null) {
            textarea = textarea.replaceAll("&nbsp;", "");
            textarea = "<h1> Total Characters In String Are : " + String.valueOf(textarea.length()) + "</h1>";
        }

        //                        for char in text:
        //            if char not in punctuations:
        //                analyzed = analyzed + char
        //        params = {'purpose':'Remove punctions','analyzed_text': analyzed}
        //        text = analyzed
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
                        <button class="profilebox" name="profile">
                            <img src="userimg.png" alt="profileimg" class="profileimg">
                            <p class="profilename">Awanish</p>
                        </button>
                    </div>
                </nav>
            </header>
        </form>

        <div class="analyzecontainer">
            <p class="labeltext">YOUR ANALYZED TEXT IS READY!</p>
            <div class="box">
                <p class="output" id="copy" ><%out.println(textarea);%></p>
            </div>
            <div class="my-2 flex align-items justify-center">
                <button id="change" type="submit" class="apply" onclick="copytext()">Copy</button>
            </div>
        </div>

        <script>
            function copytext() {
                var text = document.getElementById("copy");
                window.getSelection().selectAllChildren(text);
                document.execCommand("copy");
            }
        </script>
    </body>

</html>