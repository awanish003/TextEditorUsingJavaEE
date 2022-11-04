<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>TEXT-UTILS / REGISTRATION PAGE</title>
        <style>
            ::selection {
                background-color: #e8d5c8;
            }

            body {
                /* background: #58c791; */
                background: rgb(116 116 116);
            }

            .container {
                display: flex;
                height: 100%;
            }

            #logbox {
                margin: 50px auto;
                width: 340px;
                background-color: #fff;
                border-radius: 4px;
                box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
            }

            h1 {
                text-align: center;
                font-size: 175%;
                color: #757575;
                font-weight: 300;
            }

            h1,
            input {
                font-family: "Open Sans", Helvetica, sans-serif;
            }

            .input {
                width: 75%;
                height: 50px;
                display: block;
                margin: 0 auto 15px;
                padding: 0 15px;
                border: none;
                border-bottom: 2px solid #ebebeb;
            }

            .input:focus {
                outline: none;
                /* border-bottom-color: #58c791 !important; */
                border-block-color: rgb(116 116 116) !important;
            }

            .input:hover {
                border-bottom-color: #dcdcdc;
            }

            .input:invalid {
                box-shadow: none;
            }

            .inputButton {
                position: relative;
                width: 85%;
                height: 50px;
                display: block;
                margin: 30px auto 30px;
                border-radius: 5px;
                color: white;
                /* background-color: #58c791; */
                background-color: rgb(145, 145, 145);
                border: none;
                /* box-shadow: 0 5px 0 #3aad73; */
                box-shadow: 0 5px 0 rgb(116 116 116);
            }

            .inputButton:hover {
                top: 2px;
                /* box-shadow: 0 3px 0 #3aad73; */
                box-shadow: 0 3px 0 rgb(116 116 116);
            }

            .inputButton:active {
                top: 5px;
                box-shadow: none;
            }

            .inputButton:focus {
                outline: none;
            }
            
        </style>
    </head>

    <body>
        
        <form action="Register.jsp" method="POST">
            <div class="container">
                <div id="logbox">
                    <h1>Create an account</h1>
                    <input class="input pass" name="username" type="text" placeholder="What's your username?"
                           autofocus="autofocus" required="required" />
                    <input class="input pass" name="userpassword" type="password" placeholder="Choose a password"
                           required="required" />
                    <input class="input pass" name="userpassword2" type="password" placeholder="Confirm password"
                           required="required" />
                    <input class="input pass" name="useremail" type="email" placeholder="Email address (optional)" />
                    <input class="inputButton" name="signup" type="submit" value="Sign me up!" />
                </div>
            </div>
        </form>
    </body>

</html>