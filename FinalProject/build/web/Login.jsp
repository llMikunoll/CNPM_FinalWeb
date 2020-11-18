<%-- 
    Document   : Login
    Created on : 05-Nov-2020, 11:24:58
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%--
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    --%>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->	
    <link rel="icon" type="image/png" href="resources/images/icons/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="resources/css/util.css">
    <link rel="stylesheet" type="text/css" href="resources/css/main.css">
    <!--===============================================================================================-->
    <%-- 
    <body>
        <h1>Login</h1>
        <form action="LoginServlet" method="post">
            UserName: <input type="text" name="txtusername"><br>
            Password: <input type="text" name="txtpassword"><br>
            <input type="submit" value="Login">
        </form>
    </body>
    --%>
    <body>
        <div class="limiter">
            <div class="container-login100" style="background-image: url('resources/images/bg-01.jpg');">
                <div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
                    <form action="Controller" method="post" class="login100-form validate-form flex-sb flex-w">
                        <span class="login100-form-title p-b-53">
                            Login
                        </span>
                        <div class="p-t-31 p-b-9">
                            <span class="txt1">
                                Username
                            </span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Username is required">
                            <input class="input100" type="text" name="txtusername" >
                            <span class="focus-input100"></span>
                        </div>
                        <div class="p-t-13 p-b-9">
                            <span class="txt1">
                                Password
                            </span>
                            <a href="#" class="txt2 bo1 m-l-5">
                                Forgot?
                            </a>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Password is required">
                            <input class="input100" type="password" name="txtpassword" >
                            <span class="focus-input100"></span>
                        </div>
                        <div class="container-login100-form-btn m-t-17">

                            <button class="login100-form-btn" name="action" value="LOGIN">
                                Sign In
                            </button>

                            <%--
                            <input type="submit" value="Login">
                            --%>
                        </div>
                        <div class="w-full text-center p-t-55">
                            <span class="txt2">
                                Not a member?
                            </span>
                            <a href="#" class="txt2 bo1">
                                Sign up now
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
