<%-- 
    Document   : Logout
    Created on : 8 Mar, 2023, 11:52:19 AM
    Author     : RAHEE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%session.invalidate(); %>

<!DOCTYPE html>
<html>

<head>
    <title>
        99Mobiles
    </title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link rel="stylesheet" href="home.css">
    <link rel="stylesheet" href="menu.css">
    <link rel="stylesheet" href="title.css">
    <link rel="stylesheet" href="feedback.css">
    <script src="jquery-3.6.1.js"> </script>
</head>

<body>

    <section class="header">
        <a href="index.html" class="logo">
            <img class="image" src="Logo.png" width="90">
        </a>
        <div class="content">
            <a href="Home.html">
                <h2>99Mobiles</h2>
                <h2>99Mobiles</h2>
            </a>

        </div>
        <div>

            <ul class="nav">
                <li> <a class="actives" href="index.html">Home </a></li>
                <li> <a href="Buy.html">Buy </a></li>

                <li> <a href="About.html">About </a></li>
                <li> <a href="contact.html">Contact </a></li>
                <li> <a href="Login.jsp">Login</a></li>
                <li class="sym"><a href="Orderform.html"><i class="fas fa-shopping-cart"></i> </a></li>

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
                    <li><a href='http://'>Mobile Reparing</a></li>
                    <li><a href='http://'>Mobile Unlocking</a></li>
                    <li><a href='http://'>Mobile Skins</a></li>
                </ul>
            </li>
            <li><a href='http://'>Contact Us</a></li>
        </ul>
    </nav>

    <section id="block">
        <div id="slidecon">
            <div>
                <img id="slides" src="iphoneslide.jpg" width="100%">

            </div>
    </section>
    <script>
        var imgArray = [
            'iphoneslide.jpg',
            'samsungslide2.png',
            'xiomi12proslide2.jpg'
        ];
        var curIndex = 0;
        var imgDuration = 4000;

        function slideShow() {
            document.getElementById('slides').src = imgArray[curIndex];
            curIndex++;
            if (curIndex == imgArray.length) { curIndex = 0; }
            setTimeout("slideShow()", imgDuration);
        }
        slideShow();
    </script>
   

    <section class="services">
        <h2>Brands We Deal With</h2>
        <div>
            <!-- <img id="apple" src="/Images/Brands.png" width="100%" > -->
            <embed src="Brands (1).pdf" type="application/pdf"
                width="100%" height="100%">
        </div>
    </section>
    <section class="Featured">

        <h2 class="fh" align="center">Featured Products</h2>
        <div class="proco">
            <div class="Product">
                <a
                    href="https://www.amazon.in/Apple-iPhone-14-128GB-Blue/dp/B0BDK62PDX/ref=sr_1_4?keywords=iphone+14&qid=1665515463&qu=eyJxc2MiOiI1LjM4IiwicXNhIjoiNS4xOSIsInFzcCI6IjMuMzcifQ%3D%3D&s=electronics&sr=1-4">
                    <div>
                        <img src="https://images-eu.ssl-images-amazon.com/images/I/31VjlrbE3bL._AC_SX184_.jpg">
                    </div>
                </a>
                <h4 class="Productname">
                    Apple iPhone 14 128GB Blue
                </h4>
                <div class="ratings">
                    
                    <li> <i class="fas fa-star"></i> </li>
                    <li> <i class="fas fa-star"></i> </li>
                    <li> <i class="fas fa-star"></i> </li>
                    <li><i class="fas fa-star-half-alt"></i></li>
                    
                </div>
                <div> &nbsp;</div>
                <div class="price">
                    <sup>₹</sup>72,000 <s class="striked"> 79999</s> <a>(10% off)</a>
                </div>

            </div>

            <div class="Product">
                <a
                    href="https://www.amazon.in/Samsung-Phantom-Storage-Additional-Exchange/dp/B09CQ1Q544/ref=sr_1_3?crid=2H1QZMM7VJIFN&keywords=Samsung+Galaxy+Z+Fold3&qid=1665515432&qu=eyJxc2MiOiIzLjE3IiwicXNhIjoiMi41NiIsInFzcCI6IjAuMDAifQ%3D%3D&s=electronics&sprefix=samsung+galaxy+z+fold3%2Celectronics%2C265&sr=1-3">
                    <div>
                        <img src="https://rukminim1.flixcart.com/image/416/416/ksnjp8w0/mobile/b/t/k/galaxy-z-fold3-5g-sm-f926bzkdinu-samsung-original-imag662a7zgxn2fv.jpeg?q=70"
                            height="240px">
                    </div>
                </a>
                <h4 class="Productname">
                    Samsung Galaxy Z Fold3 5G
                </h4>
                <div class="ratings">
                    
                    <li> <i class="fas fa-star"></i> </li>
                    <li> <i class="fas fa-star"></i> </li>
                    <li> <i class="fas fa-star"></i> </li>
                    <li><i class="fas fa-star-half-alt"></i></li>
                    
                </div>
                <div> &nbsp;</div>
                <div class="price">
                    <sup>₹</sup>1,19,999 <s class="striked">1,71,999</s> <a>(30% off)</a>
                </div>

            </div>

            <div class="Product">
                <a
                    href="https://www.amazon.in/Samsung-Storage-6000mAh-Purchased-Separately/dp/B09TWDYSWQ/ref=lp_26850977031_1_1">
                    <div>
                        <img src="https://m.media-amazon.com/images/I/81xvGbBFNhL._AC_UL320_.jpg" height="240">
                    </div>
                </a>
                <h4 class="Productname">
                    Samsung Galaxy M33 5G
                </h4>
                <div class="ratings">
                    
                    <li> <i class="fas fa-star"></i> </li>
                    <li> <i class="fas fa-star"></i> </li>
                    <li> <i class="fas fa-star"></i> </li>
                    <li><i class="fas fa-star-half-alt"></i></li>
                    
                </div>
                <div> &nbsp;</div>
                <div class="price">
                    <sup>₹</sup>15,499 <s class="striked"> 24999</s> <a>(38% off)</a>
                </div>

                <!-- More Product -->



            </div>




            <div class="Product">
                <a
                    href="https://www.amazon.in/realme-Storage-Dimensity-Processor-Display/dp/B09ZBFD6TJ/ref=sr_1_1?keywords=realme+narzo+50pro&qid=1665515395&qu=eyJxc2MiOiIyLjUwIiwicXNhIjoiMS44NCIsInFzcCI6IjAuMDAifQ%3D%3D&s=electronics&sr=1-1">
                    <div>
                        <img src="https://m.media-amazon.com/images/I/81phFG96VXL._AC_UL320_.jpg" height="240">
                    </div>
                </a>
                <h4 class="Productname">
                    Realme Narzo 50 Pro 5G
                </h4>
                <div class="ratings">
                    
                    <li> <i class="fas fa-star"></i> </li>
                    <li> <i class="fas fa-star"></i> </li>
                    <li> <i class="fas fa-star"></i> </li>
                    <li><i class="fas fa-star-half-alt"></i></li>
                    
                </div>
                <div> &nbsp;</div>
                <div class="price">
                    <sup>₹</sup>17,999 <s class="striked"> 25999</s> <a>(31% off)</a>
                </div>



            </div>

            <div class="Product">
                <a
                    href="https://www.amazon.in/Google-Pixel-Sorta-Seafoam-Storage/dp/B09HJY4G4Z/ref=sr_1_5?qid=1665514387&refinements=p_89%3AGoogle&rnid=3837712031&s=electronics&sr=1-5">
                    <div>
                        <img src="https://m.media-amazon.com/images/I/71QQZr2pNSL._AC_UL320_.jpg" height="240">
                    </div>
                </a>
                <h4 class="Productname">
                    Google Pixel 6 5G
                </h4>
                <div class="ratings">
                    
                    <li> <i class="fas fa-star"></i> </li>
                    <li> <i class="fas fa-star"></i> </li>
                    <li> <i class="fas fa-star"></i> </li>
                    <li><i class="fas fa-star-half-alt"></i></li>
                    
                </div>
                <div> &nbsp;</div>
                <div class="price">
                    <sup>₹</sup>43,900 <s class="striked"> 99,999</s> <a>(56% off)</a>
                </div>

            </div>

            <div class="Product">
                <a
                    href="https://www.amazon.in/Xiaomi-Couture-Storage-Snapdragon-Flagship/dp/B09XB9DCY4/ref=sr_1_8?qid=1665514664&refinements=p_89%3AGoogle%7CXiaomi&rnid=3837712031&s=electronics&sr=1-8">
                    <div>
                        <img src="https://m.media-amazon.com/images/I/71xMba-NW-L._SX679_.jpg" height="240">
                    </div>
                </a>
                <h4 class="Productname">
                    Xiaomi 12 Pro | 5G
                </h4>
                <div class="ratings">
                    
                    <li> <i class="fas fa-star"></i> </li>
                    <li> <i class="fas fa-star"></i> </li>
                    <li> <i class="fas fa-star"></i> </li>
                    <li><i class="fas fa-star-half-alt"></i></li>
                    
                </div>
                <div> &nbsp;</div>
                <div class="price">
                    <sup>₹</sup>58,999 <s class="striked"> 84,999</s> <a>(31% off)</a>
                </div>

            </div>

            <div class="Product">
                <a
                    href="amazon.in/OnePlus-Prime-128GB-Storage-SuperVOOC/dp/B0BCP3X81V/ref=sr_1_5?qid=1665514874&refinements=p_89%3AGoogle%7COnePlus%7CXiaomi&rnid=3837712031&s=electronics&sr=1-5">
                    <div>
                        <img src="https://m.media-amazon.com/images/I/71XM12oE-3L._AC_UL320_.jpg" height="240">
                    </div>
                </a>
                <h4 class="Productname">
                    OnePlus 10R 5G Prime Edition
                </h4>
                <div class="ratings">
                    
                        <li> <i class="fas fa-star"></i> </li>
                    <li> <i class="fas fa-star"></i> </li>
                    <li> <i class="fas fa-star"></i> </li>
                    <li><i class="fas fa-star-half-alt"></i></li>
                    
                    

                </div>
                <div> &nbsp;</div>
                <div class="price">
                    <sup>₹</sup>32,999 <s class="striked"> 38,999</s> <a>(15% off)</a>
                </div>

            </div>

            <div class="Product">
                <a
                    href="https://www.amazon.in/Redmi-Storage-Battery-Finger-Booster/dp/B09XB7DPW1/ref=sr_1_5?qid=1665515183&refinements=p_89%3ANokia%7CRedmi&rnid=3837712031&s=electronics&sr=1-5">
                    <div>
                        <img src="https://m.media-amazon.com/images/I/71WC+Qz1KgL._AC_UL320_.jpg" height="240">
                    </div>
                </a>
                <h4 class="Productname">
                    Redmi 10A
                </h4>
                <div class="ratings">
                    <li> <i class="fas fa-star"></i> </li>
                    <li> <i class="fas fa-star"></i> </li>
                    <li> <i class="fas fa-star"></i> </li>
                    <li><i class="fas fa-star-half-alt"></i></li>

                </div>
                <div> &nbsp;</div>
                <div class="price">
                    <sup>₹</sup>8,599 <s class="striked"> 11,999</s> <a>(28% off)</a>
                </div>

            </div>




        </div>

    </section>
    <script>
        $(document).ready(function () {
            $("#hide").click(function () {
                $("#divh").hide();
            });
            $("#show").click(function () {
                $("#divh").show();
            });
            $("#hide").click(function(){
                $("#email").hide();
            })
            $("#hide").click(function(){
                $("#feed").hide();
            })
            $("#hide").click(function(){
                $("#hide").hide();
            })
            $("#show").click(function(){
                $("#email").show();
            })
            $("#show").click(function(){
                $("#feed").show();
            })
        });
    </script>
    
    <div class="container">
        <!-- <p id="hideform">
        <div id="hideform" >
            Your Email:<input type="text" name="email">
        </div>
        <div id="hideform">
            Feedback:<input type="text" name="feedback">
        </div>
        </p> -->
<script>
    function validationform() {
    var x = document.index.email.value;
    var atposition = x.indexOf("@");
    var dotposition = x.lastIndexOf(".");
    var password=document.myform.password.value;
    

    if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= x.length) {
        alert("Please enter a valid e-mail address ");
        return false;
    }
    if(x.length>25){
        alert("Email length cannot exceed 25 letters");
        return false;
    }
    if(password.length<8){
        alert("Password too short");
        return false;
    }
    
} 
</script>

 <div id="divh">Feedback Form</div>
 <form action="Feedback.jsp" method="POST">
     <div id="divh">
    <input type="text" name="email" id="email" placeholder="Email">
</div>
<div id="divh">
    <input type="text" name="feed" id="feed" placeholder="Feedback">
</div>

        
        <button onclick="validationform()" id="hide">Submit </button>
 </form>

        
        <!-- <button id="show">New</button> -->
    </div> 


    


    <footer>

        <div class="lefts">
            <h4>Contact Us</h4>
            <p><a href="mailto.raheedmuzawar@gmail.com">Email: Raheedmuzawar@gmail.com </a></p>
            <p> <strong>Address:</strong> Building Vidhyanagar Margao Goa</p>
            <p><b>Phone Number:+91 7020322320</b></p>
            <div class="follow"></div>
            <h4>Follow Us</h4>
            <div class="soicon">

                <a> <i class="fab fa-instagram"></i></a>

                <span>&nbsp;</span>
                <a><i class="fab fa-linkedin"></i></a>
                <span>&nbsp;</span>
                <a><i class="fab fa-facebook-f"></i></a>
                <span>&nbsp;</span>
                <a><i class="fab fa-twitter"></i></a>
            </div>
        </div>

        <div class="lefts">
            <h4>Service</h4>
            <p><a href="Buy.html">Buy</a></p>
            <p><a href="">Phone Repairing</a></p>
            <p><a href="">Pan India Free Delivery</a></p>

        </div>

        <div class="lefts">
            <h4>Account</h4>
            <p><a href="CreateAccount.html">Sign In</a></p>
            <p><a href="">Shopping Cart</a></p>
            <p><a href="">Orders</a></p>
            <p><a href="">Privacy Policy </a></p>

        </div>

        <div class="lefts">
            <h4>Other Links</h4>
            <p><a href="">Become a Partner</a></p>
            <p><a href="">Franchise </a></p>
            <p><a href="">Store </a></p>
        </div>
        <div class="lefts">
            <h4>Help</h4>
            <p><a href="">FAQ</a></p>
            <p><a href="">Contact Us</a></p>
            <p><a href="">Refund Policy </a></p>
        </div>
        <div class="lefts">
            <h4>Payments</h4>
            <img src="payments.jpg" width="250px">
        </div>
        <div class="owner">
            <p>Created By Raheed Muzawar © 2022</p>
        </div>





    </footer>





</body>

</html>
