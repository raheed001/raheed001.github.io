<%-- 
    Document   : Login
    Created on : 10-Feb-2023, 3:05:30 am
    Author     : RAHEE
--%>

<%@page import="Mob99.Guest"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.nio.file.Files"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@page import="Mob99.LoginVerify"%>--%>


<!DOCTYPE html>
<html>

    <head>
        <link rel="stylesheet" href="mystyle.css">
        <link rel="stylesheet" href="home.css">
        <link rel="stylesheet" href="menu.css">
        <link rel="stylesheet" href="title.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        
    </head>
    <script src="signin.js"></script>

    <body>
        <section class="header">
            <a href="index.jsp" class="logo" alt="">
                <img class="image" src="Logo.png" width="90px"  >
            </a>
            <div class="content">
                <a href="index.jsp">
                    <h2>99Mobiles</h2>
                    <h2>99Mobiles</h2>
                </a>

            </div>
            
                
         
                
               



                <ul class="nav">
                    <li> <a  href="index.jsp">Home </a></li>
                    <li> <a href="Buy.jsp">Buy </a></li>

                    <li> <a href="About.jsp">About </a></li>
                    <li> <a href="contact.jsp">Contact </a></li>
                     <%
                         Guest guest =new Guest(); 
                guest.register(request, response); 
                            boolean isLoggedIn = request.getSession().getAttribute("fname") != null;
                            String fname = (String) request.getSession().getAttribute("fname");
   
                            if (isLoggedIn) {

                                out.println("<li> <a href=''>Welcome </a></li>" + " " + fname);
                                out.println("<li><a href='Profile.jsp'> Profile</a></li>");
                            } else {
                             
                                out.println("<li><a href='Login.jsp'> Login</a></li>");
                            }
                        %>
<!--                    <li> <a  href="newform.jsp">Welcome  </a></li>-->
                    <li><a href="AdminLogin.jsp"> Admin Login</a></li>
                    <li class="sym"><a href="Orderform.jsp"><i class="fas fa-shopping-cart"></i> </a></li>

                </ul>
            

        </section>

        <nav id='menu'>
            <input type='checkbox' id='responsive-menu' onclick='updatemenu()'><label></label>
            <ul>
                <li><a href='index.jsp'>Home</a></li>
                <li><a class='dropdown-arrow' href='http://'>Products</a>
                    <ul class='sub-menus'>
                        <li><a href='Buy.jsp'>Android</a></li>
                        <li><a href='Buy.jsp'>IOS</a></li>
                        <li><a href='Buy.jsp'>Laptops</a></li>
                        <li><a href='Buy.jsp'>Others</a></li>
                    </ul>
                </li>
                <li><a href='http://'>New Release</a></li>
                <li><a class='dropdown-arrow' href='http://'>Services</a>
                    <ul class='sub-menus'>
                        <li><a href='http://'>Mobile Cover</a></li>
                        <li><a href='http://'>Mobile Charger</a></li>
                        <li><a href='http://'>Mobile Skins</a></li>
                    </ul>
                </li>
                <li><a href='http://'>Contact Us</a></li>
            </ul>
        </nav>

        <form name="myform" method="POST" action="LoginPageCheck.jsp" onsubmit="return validationform();">
            <div class="container">

                <div class="form-control">
                    Email: <input type="text" name="email">
                </div>

                <div class="form-control">

                    Password: <input type="password" required name="password">

                </div>
                <div>
                    <input class="btn" type="submit" value="Log in">
                </div>
                <p class="text">Don't have an account? <a href="CreateAccount.jsp">Create Account</a></p>

            </div>





        </form>
    </body>

</html>