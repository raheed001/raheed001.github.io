<%@page import="Mob99.Guest"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <link rel="stylesheet" href="Create.css">

        <link rel="stylesheet" href="home.css">
        <link rel="stylesheet" href="menu.css">
        <link rel="stylesheet" href="title.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    </head>
    <!-- <script src="/91Mobiles/Createacc.js"></script> -->
    <script>
        function validationform() {
        var fname = document.accform.fname.value;
        var lname = document.accform.lname.value;
        var phno = document.accform.phno.value;
        var x = document.accform.email.value;
        var atposition = x.indexOf("@");
        var dotposition = x.lastIndexOf(".");
        var password = document.accform.password.value;
        var cpassword = document.accform.cpassword.value;
        var mobile = document.accform.mobchk.value;
        var but = document.accform.querySelector('#btn');
        }
        if (fname.length < 2) {
        alert("First Name too short ");
        return false;
        }
        if (lname.length < 2) {
        alert("Last Name too short ");
        return false;
        }
        if (phno.length > 10) {
        alert("Invalid Phone Number");
        return false;
        }

        if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= x.length) {
        alert("Please enter a valid e-mail address  ");
        return false;
        }
        if (x.length > 25) {
        alert("Email length cannot exceed 25 letters");
        return false;
        }
        if (password.length < 8) {
        alert("Password too short");
        return false;
        }


        if (password != cpassword) {
        alert("Passwords Dont match");
        return false;
        }


        pass = password;
        regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
        if (regex.exec(pass) == null) {

        alert("Weak Password \nPassword must Contain \n1.Atleast One Lower Case alphabet \n2.Atleast One Upper Case \n3.Numbers and Special Characters");
        return false;
        }



        }

    </script>

    <body>
        <section class="header">
            <a href="index.html" class="logo" alt="">
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
                    <li> <a class="actives" href="index.jsp">Home </a></li>
                    <li> <a href="Buy.jsp">Buy </a></li>

                    <li> <a href="About.jsp">About </a></li>
                    <li> <a href="contact.jsp">Contact </a></li>
                        <%boolean isLoggedIn = request.getSession().getAttribute("fname") != null;
                            String fname = (String) request.getSession().getAttribute("fname");
                            if (isLoggedIn) {

                                out.println("<li> <a href=''>Welcome </a></li>" + " " + fname);
                                out.println("<li><a href='Profile.jsp'> Profile</a></li>");
                            } else {
                                // Render login button
                                out.println("<li><a href='Login.jsp'> Login</a></li>");
                            }
                        %>
                    <!--                    <li> <a href="Login.jsp">Login </a></li>-->
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
                        <li><a href='Buy.jsp'>Android</a>
                        </li>
                        <li><a href='Buy.jsp'>IOS</a></li>
                        <li><a href='Buy.jsp'>Laptops</a>
                        </li>
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

        <form name="accform" action="Login.jsp" method="POST" onsubmit="return validationform()">
            <div class="container">

                <div class="form-control">

                    First Name: <input type="text" required name="fname">
                </div>

                <div class="form-control">

                    Last Name: <input type="text" required name="lname">

                </div>
                <div>
                    <div>
                        Age:<input type="text" required name="age">
                    </div>




                </div>

                <div>
                    &nbsp;
                </div>
                <div>
                    Select the devices used on
                    <div>
                        Device: <input type="text" name="device" id="mobchk">
                    </div>

                </div>

                <div class="form-control">

                    Phone Number: <input type="tel" required name="phno">
                </div>
                <div class="form-control">

                    Email: <input type="text" required name="email">

                </div>

                <div class="form-control">

                    Password: <input type="password" required name="password">

                </div>
                <div class="form-control">

                    Confirm Password: <input type="password" required name="cpassword">

                </div>
                <!-- <div>
                        I agree to terms and conditions <input type="checkbox" name="agree">
                </div> -->
                <div>
                    <input class="btn" id="btn" type="submit">

                </div>
                <div>
                    &nbsp;
                </div>
                <div>
                    <input class="btn" id="cbut" type="reset">
                </div>
            </div>

        </form>

    </body>

</html>