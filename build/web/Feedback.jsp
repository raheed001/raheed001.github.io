<%-- 
    Document   : Feedback
    Created on : 8 Mar, 2023, 11:21:27 AM
    Author     : RAHEE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
    </head>
    <body>
        <%String email =request.getParameter("Email");
        String feedback = request.getParameter("Feedback");
        session.setAttribute("Email",email );
        %>
    </body>
</html>
