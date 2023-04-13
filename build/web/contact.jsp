<%-- 
    Document   : contact
    Created on : 8 Mar, 2023, 12:39:05 PM
    Author     : RAHEE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="home.css">

    <link rel="stylesheet" href="menu.css">
    <link rel="stylesheet" href="title.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
</head>

<body>
    <section class="header">
        <a href="index.jsp" class="logo" alt="">
            <img class="image" src="Logo.png" width="90px">
        </a>
        <div class="content">
            <a href="index.jsp">
                <h2>99Mobiles</h2>
                <h2>99Mobiles</h2>
            </a>

        </div>
        <div>

            <ul class="nav">
                <li> <a href="index.jsp">Home </a></li>
                <li> <a href="Buy.jsp">Buy </a></li>

                <li> <a  href="About.jsp">About </a></li>
                <li> <a class="actives" href="contact.jsp">Contact </a></li>
                <li> <a href="newform.jsp">login </a></li>
                <li><a href="AdminLogin.jsp"> Admin Login</a></li>
                <li class="sym"><a href="Orderform.jsp"><i class="fas fa-shopping-cart"></i> </a></li>

            </ul>
        </div>

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
<div>
    <h1 class="contacth1"></h1>
    <h2>Hover to get Contact Details</h2>
    <a style="text-decoration:none !important ; text-decoration:none;" href="mailto.raheedmuzawar@gmail.com">
        <h1>Email: Raheedmuzawar@gmail.com </h1>
    </a>
    <h1> <strong>Address:</strong> Building Vidhyanagar Margao Goa</h1>
    <h1><b>Phone Number:+91 7020322320</b></h1>
</div>
    
</body>

</html>
