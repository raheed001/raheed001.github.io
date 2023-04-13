<%-- 
    Document   : Check
    Created on : 11 Mar, 2023, 12:39:12 AM
    Author     : RAHEE
--%>

<%@page import="Mob99.LoginVerify"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            LoginVerify lv=new LoginVerify();
           String fname=(String) session.getAttribute("fname");
        String pass=(String) session.getAttribute("cpassword");
        String email=(String) session.getAttribute("email");
        %>
        <%=fname %>
        <%=pass%>
    </body>
</html>
