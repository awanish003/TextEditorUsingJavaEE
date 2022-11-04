<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>TEXT-UTILS / HOME PAGE</title>
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

            .Welcome {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                font-size: 4.5vw;
                font-weight: 400;
            }

            .description {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                font-size: 2vw;
                font-weight: 100;
            }

            .TextArea {
                max-width: 1030px;
                min-width: 1030px;
                max-height: 356px;
                min-height: 356px;
                outline: none;
                border-radius: 10px;
                padding: 40px 40px;
                font-size: 1.5vw;
                font-family: monospace;
            }

            .form-check-label {
                font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
                font-size: 1.5vw;
                font-weight: bold;
                margin: 0px 15px;
                color: rgba(0, 0, 0, 0.742);
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
                background: linear-gradient(to right, #018289 0%, #6b9500 100%);
                color: white;


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

            .TextArea::-webkit-scrollbar-track {
                border: 5px solid white;
                background-color: #b2bec3;
            }

            .TextArea::-webkit-scrollbar {
                width: 15px;
                background-color: #dfe6e9;
            }

            .TextArea::-webkit-scrollbar-thumb {
                background-color: #91caff99;
                border-radius: 10px;
            }

            .switch {
                position: relative;
                display: inline-block;
                width: 40px;
                height: 24px;
            }

            /* Hide default HTML checkbox */
            .switch input {
                opacity: 0;
                width: 0;
                height: 0;
            }

            /* The slider */
            .slider {
                position: absolute;
                cursor: pointer;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background-color: rgba(254, 79, 79, 0.883);
                transition: .4s;
            }

            .slider:before {
                position: absolute;
                content: "";
                height: 16px;
                width: 16px;
                left: 4px;
                bottom: 4px;
                background-color: white;

                transition: .1s;
            }

            input:checked+.slider {
                background-color: #25f321b5;
            }

            input:focus+.slider {
                box-shadow: 0 0 1px #2196F3;
            }

            input:checked+.slider:before {
                transform: translateX(16px);
            }

            /* Rounded sliders */
            .slider.round {
                border-radius: 34px;
            }

            .slider.round:before {
                border-radius: 50%;
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

        <div class="body flex items-center justify-center flexdirection my-2">

            <div class="WelcomeLabel flex items-center justify-center flexdirection">
                <label class="Welcome">Welcome <% out.println(username);%> To Text-Utils</label>
                <label class="description">Edit Your Text Easily, Efficiently, Just In Time!</label>
            </div>
            <form action="AnalyzePage.jsp" method="post">
                <div class="my-2 flex flexdirection">
                    <pre><textarea type="text" class="TextArea" name="textarea" rows="10"></textarea></pre>
            </div>

            <div class="my-2 flex">
                <label class="switch">
                    <input type="checkbox" name="removepunc">
                    <span class="slider round"></span>
                </label>
                <label class="form-check-label">Remove punctutions</label>
            </div>

            <div class="my-2 flex">
                <label class="switch">
                    <input type="checkbox" name="fullcaps">
                    <span class="slider round"></span>
                </label>
                <label class="form-check-label">UPPERCASE</label>
            </div>

            <div class="my-2 flex">
                <label class="switch">
                    <input type="checkbox" name="newlineremover">
                    <span class="slider round"></span>
                </label>
                <label class="form-check-label">newlineremover</label>
            </div>

            <div class="my-2 flex">
                <label class="switch">
                    <input type="checkbox" name="extraspaceremover">
                    <span class="slider round"></span>
                </label>
                <label class="form-check-label">extra space remover</label>
            </div>

            <div class="my-2 flex">
                <label class="switch">
                    <input type="checkbox" name="charcount">
                    <span class="slider round"></span>
                </label>
                <label class="form-check-label">count characters</label>
            </div>
            
            <div class="my-2 flex align-items justify-center">
                <button type="submit" class="apply" name="applyit">APPLY IT!</button>
            </div>
        </form>
    </div>
</body>

</html>