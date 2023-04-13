<%-- 
    Document   : Newlogin
    Created on : 1 Mar, 2023, 7:16:10 PM
    Author     : RAHEE
--%>

<%@page import="java.util.List"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.nio.file.Files"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Mob99.LoginCheck" %>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="mystyle.css">
    <link rel="stylesheet" href="home.css">
    <link rel="stylesheet" href="menu.css">
    <link rel="stylesheet" href="title.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
</head>
<script src="signin.js">
    
</script>

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
                <li> <a  href="index.html">Home </a></li>
                <li> <a href="Buy.html">Buy </a></li>
                
                <li> <a href="About.html">About </a></li>
                <li> <a href="contact.html">Contact </a></li>
                <li> <a  href="newform.html"> </a></li>
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
              <li><a href='http://'>Mobile Cover</a></li>
              <li><a href='http://'>Mobile Charger</a></li>
              <li><a href='http://'>Mobile Skins</a></li>
            </ul>
          </li>
          <li><a href='http://'>Contact Us</a></li>
        </ul>
      </nav>
    <%
    
String email = request.getParameter("email");
String password = request.getParameter("password");
List<String> al = new ArrayList<String>();
// Read the contents of the file
Path filePath = Paths.get("userdata.txt");
List<String> fileContents = Files.readAllLines(filePath);
try {
    al=Files.readAllLines(filePath);
    out.println(" path"+filePath.toFile().getAbsolutePath());
    
    
} catch (Exception e) {
    e.printStackTrace();
}

// Loop through each line in the file and compare with the entered email and password
boolean loginSuccessful = false;
for (String line : fileContents) {
    String[] values = line.split(",");
    try{
        al.addAll(fileContents);
        
    String storedEmail = al.get(5);
    String storedPassword = al.get(6);
    if (email.equals(storedEmail) && password.equals(storedPassword)) {
        loginSuccessful = true;
        break;
    }
    }catch (Exception e){
        out.println(e);
    }
    
}

if (loginSuccessful) {
    // Redirect to the home page
    response.sendRedirect("index.html");
} else {
    // Show error message
    out.println("Invalid email or password");
}


    %>
    <script> 
        
        </script>
        
    <form name="myform" method="POST" action="Newlogin.jsp" onsubmit="return validationform();">
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
            <p class="text">Don't have an account? <a href="CreateAccount.html">Create Account</a></p>
            
        </div>




       
    </form>
</body>

</html>
