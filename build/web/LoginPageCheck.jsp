<%-- 
    Document   : LoginPageCheck
    Created on : 16 Mar, 2023, 9:00:30 PM
    Author     : RAHEE
--%>

<%@page import="Mob99.Guest"%>
<%@page import="Mob99.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LoginCheck</title>
    </head>
    <body>
     
        <%User user=new User();
        user.login(request, response);
        %>
    </body>
</html>
