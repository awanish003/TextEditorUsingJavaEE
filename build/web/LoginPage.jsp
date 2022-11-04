<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TEXT-UTILS / LOGIN PAGE</title>
    <style>
        html,
        body {
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
        }

        ::selection {
            background-color: #dba6ae;
        }

        .container {
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .Box {
            width: 30%;
            height: 74%;
            border: 2px solid rgb(106, 106, 106);
            margin-top: 30px;
            border-radius: 10px;
            display: flex;
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

        .description {
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .LogoDescription {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 1.2vw;
            text-align: center;
            margin: 20px 0px;
            padding: 0px 80px;

        }

        .form {
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .input {
            width: 65%;
            height: 3vw;
            margin: 18px 0px;
            padding: 0px 10px;
            outline: none;
            border: 0.5px solid rgb(86, 86, 86);
            border-radius: 4px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 1.2vw;
            cursor: pointer;
        }

        .buttons {
            width: 100%;
            height: 4vw;
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin: 30px 0px;
        }

        .createbtn {
            margin-left: 20px;
            outline: none;
            border: none;
            background: none;
            cursor: pointer;
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            font-weight: bold;
            color: rgb(136, 79, 190);
            font-size: 1.2vw;
        }

        .signin {
            width: 25%;
            height: 70%;
            margin-right: 40px;
            outline: none;
            border: 2px solid rgb(116 116 116);
            border-radius: 4px;
            cursor: pointer;
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            font-weight: bold;
            font-size: 1.3vw;
            background-color: white;
            color: rgb(116 116 116);
        }

        .signin:hover {
            background-color: rgb(116 116 116);
            color: white;
        }
    </style>
</head>

<body>
    <form action="Login.jsp" method="POST">
        <div class="container">
            <div class="Box">
                <label class="Logo">TEXT-UTILS</label>
                <div class="description">
                    <label class="LogoDescription"><strong>SIGN IN</strong> To TEXT-UTILS To ACCESS YOUR FEATURES,
                        WORKSPACE, SETTINGS AND MANY
                        MORE...</label>
                </div>
                <div class="form">
                    <input type="text" name="loginusername" class="input" placeholder="USERNAME....">
                    <input type="password" name="loginpassword" class="input" placeholder="PASSWORD....">
                </div>

                <div class="buttons">
                    <button type="submit" name="createaccount" class="createbtn">create account</button>
                    <button type="submit" name="signin" class="signin">SIGN IN</button>
                </div>
            </div>
        </div>
    </form>
</body>

</html>