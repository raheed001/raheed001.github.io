<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>newform</title>
        <link rel="stylesheet" href="mystyle.css">
        <link rel="stylesheet" href="home.css">
        <link rel="stylesheet" href="menu.css">
        <link rel="stylesheet" href="title.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <script src="signin.js"></script>
    </head>
    

    <body>
        <section class="header">
            <a href="index.html" class="logo" alt="">
                <img class="image" src="Logo.png" width="90px"  >
            </a>
            <div class="content">
                <a href="index.html">
                    <h2>99Mobiles</h2>
                    <h2>99Mobiles</h2>
                </a>

            </div>
            <div>

                <ul class="nav">
                    <li> <a  href="index.jsp">Home </a></li>
                    <li> <a href="Buy.jsp">Buy </a></li>

                    <li> <a href="About.jsp">About </a></li>
                    <li> <a href="contact.jsp">Contact </a></li>
                    <li> <a class="actives" href="newform.jsp">login </a></li>
                    <li class="sym"><a href="Orderform.jsp"><i class="fas fa-shopping-cart"></i> </a></li>

                </ul>
            </div>

        </section>

        <nav id='menu'>
            <input type='checkbox' id='responsive-menu' onclick='updatemenu()'><label></label>
            <ul>
                <li><a href='index.html'>Home</a></li>
                <li><a class='dropdown-arrow' href='http://'>Products</a>
                    <ul class='sub-menus'>
                        <li><a href='Buy.html'>Android</a></li>
                        <li><a href='Buy.html'>IOS</a></li>
                        <li><a href='Buy.html'>Laptops</a></li>
                        <li><a href='Buy.html'>Others</a></li>
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
        
        <form name="myform" method="POST" action="Login.jsp" onsubmit="return validationform();">
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