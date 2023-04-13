<%-- 
    Document   : insert
    Created on : 09-Feb-2023, 11:37:05 pm
    Author     : RAHEE
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<% 
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    jdbc:mysql://localhost:3307
   

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

String sourceURL="jdbc:mysql://localhost:3307";

Connection databaseConnection=DriverManager.getConnection(sourceURL);

Statement statement=databaseConnection.createStatement();

%>--%>

