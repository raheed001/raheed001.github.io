<%-- 
    Document   : AdminLogin
    Created on : 16 Mar, 2023, 4:01:13 PM
    Author     : RAHEE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            form {
                margin: 0 auto;
                max-width: 400px;
                padding: 20px;
                border: 2px solid orange;
                border-radius: 10px;
            }
        </style>
    </head>
    <body>
       <form method="post" action="">
    <label for="url">Database URL:</label>
    <input type="text" id="url" name="url"><br>
    
    <label for="user">Username:</label>
    <input type="text" id="user" name="username"><br>
    
    <label for="password">Password:</label>
    <input type="password" id="password" name="password"><br>
    
    <input type="submit" value="Submit">
</form>
    </body>
</html>
