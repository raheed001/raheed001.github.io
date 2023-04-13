function validationform() {
    var x = document.myform.email.value;
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