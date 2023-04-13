<%-- 
    Document   : About
    Created on : 8 Mar, 2023, 12:42:14 PM
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
    <style>
    p {
        font-size: large;
        font-family: sans-serif;
    }
    #cf {
  position:relative;
  height:281px;
  width:450px;
  margin:0 auto;
}

#cf img {
  position:absolute;
  left:0;
  -webkit-transition: opacity 1s ease-in-out;
  -moz-transition: opacity 1s ease-in-out;
  -o-transition: opacity 1s ease-in-out;
  transition: opacity 1s ease-in-out;
}

#cf img.top:hover {
  opacity:0;
}
    </style>
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

                <li> <a class="actives" href="About.jsp">About </a></li>
                <li> <a href="contact.jsp">Contact </a></li>
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
  
        <div id="cf" class="imagea" >
            <img class="bottom"  src="Purple Rustic Watercolour Stain Name Circle Sticker.png" width="76%" height="105%"> 
            <img class="top" src="aboutus.jpg" width="76%" height="110%">
        </div>
    

<div>
    
    <h3 >Welcome To <span id="W_Name1">99Moblies</span></h3>
    <p><span id="W_Name2">99Moblies</span> is a Professional <span id="W_Type1">eCommerce</span> Platform. Here we will
        provide you only interesting content, which you will like very much. We're dedicated to providing you the best
        of <span id="W_Type2">eCommerce</span>, with a focus on dependability and <span id="W_Spec">Online
            Shopping</span>. We're working to turn our passion for <span id="W_Type3">eCommerce</span> into a booming <a
            style="color: inherit; text-decoration: none;">online website</a>. We hope you enjoy our <span
            id="W_Type4">Products</span> as much as we enjoy offering them to you.</p>

    <p style="font-weight: bold; text-align: center;">Thanks For Visiting Our Site<br><br>
        <span style="color: rgb(0, 195, 255); font-size: 16px; font-weight: bold; text-align: center;">Have a nice
            day!</span>
    </p>

</div>
   

</body>

</html>
