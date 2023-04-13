function validationform() {
        var fname = document.accform.fname.value;
        var lname = document.accform.lname.value;
        var phno = document.accform.phno.value;
        var email = document.accform.email.value;
        var atposition = email.indexOf("@");
        var dotposition = email.lastIndexOf(".");
        var password = document.accform.password.value;
        var cpassword = document.accform.cpassword.value;
        
        var mob=document.querySelector("mobchk")
        var but=document.querySelector
        

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


        if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= email.length) {
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

                alert("Invalid Password \nPassword must Contain \n1.Atleast One Lower Case alphabet \n2.Atleast One Upper Case \n3.Numbers and Special Characters");
                return false;
        }



}
