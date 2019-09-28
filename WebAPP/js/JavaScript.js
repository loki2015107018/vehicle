//function display() {
//    var dropdown = document.getElementById("ddlRole").value;
//    if (dropdown=="") {
//        //document.getElementById("frstName").style.borderColor = "red";
       
//        ErrFunction("Role is required");
//        document.getElementById('ddlRole').focus();
//        return false;
//    }
//    var branch = document.getElementById("ddlBranch").value;
//    if (branch == "") {
//        ErrFunction("branch is required");
//        document.getElementById("ddlBranch").focus();
//        return false;
//    }
//    var UserName = document.getElementById("txtUserName").value;
//    if (UserName == "") {
        
//        ErrFunction("UserName is required");
//        document.getElementById("txtUserName").focus();
//        return false;
//    }
//    var password = document.getElementById("txtPassword").value;
//    if (password == "") {
       
//        ErrFunction("password is required");
//        document.getElementById("txtPassword").focus();
//        return false;
//    }
//    var CPassword = document.getElementById("txtCPassword").value;
//    if (CPassword == "") {
        
//        ErrFunction("Confirm password is required");
//        document.getElementById("txtCPassword").focus();
//        return false;
//    }
//    if (password != CPassword)
//    {
//        ErrFunction("password doesnt match")
//        return false;
//    }
//    var FirstName = document.getElementById("txtFirstName").value;
//    if (FirstName == "") {
       
//        ErrFunction("FirstName is required");
//        document.getElementById("txtFirstName").focus();
//        return false;
//    }
    
//    var lastname = document.getElementById("txtLastName").value;
//    if (lastname=="") {
//        document.getElementById("txtLastName").focus();
//        ErrFunction("last name is required");
//        return false;
//    }
//    var age = document.getElementById("txtAge").value;
//    if (age.length < 1) {
        
//        ErrFunction("age is required");
//        document.getElementById("txtAge").focus();
//        return false;
//    }
    
//    if (isNaN(age) || age < 1 || age > 100) {
//        ErrFunction("The age must be a number between 1 and 100");
//        return false;
//    }
//    var bool = isNaN(age);
//    if (bool == true) {
        
//        ErrFunction("Age has to be a number");
//        document.getElementById("txtAge").focus();
//        return false;
//    }
//    var contactno = document.getElementById("txtMobile").value;
//    if (contactno.length < 1) {
        
//        ErrFunction("Contact number is required");
//        document.getElementById("txtMobile").focus();
//        return false;
//    }
//    if (contactno.length != 10) {
        
//        ErrFunction("please provide valid mobile number");
//        document.getElementById("txtMobile").focus();
//        return false;
//    }
    
//    //var emailid = document.getElementById("txt_UserEmail").value;
//    var email = document.getElementById('txtEmail');
//    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

//    if (!filter.test(email.value)) {
//        ErrFunction('Please provide a valid email address');
//        email.focus();
//        return false;
//    }
    
//    else {
//        //"SuccessFunction('{0}')", "Registered Successfully";
//         return true;
//    }
//}
function display() {

    var dropdown = document.getElementById("ddlRole").value;
    if (dropdown == "") {
        //document.getElementById("frstName").style.borderColor = "red";
        ErrFunction("Role is required");
        document.getElementById('ddlRole').focus();
        return false;
    }

    var branch = document.getElementById("ddlBranch").value;
    if (branch == "") {
        ErrFunction("branch is required");
        document.getElementById("ddlBranch").focus();
        return false;
    }

    var UserName = document.getElementById("txtUserName").value;
    if (UserName == "") {
        ErrFunction("UserName is required");
        document.getElementById("txtUserName").focus();
        return false;
    }
    var UserName = document.getElementById("txtUserName")
    var user_name = /^[a-zA-Z0-9]+$/;
    if (!user_name.test(UserName.value)) {
        ErrFunction("User Name should not contain special characters");
        return false;
    }

    var password = document.getElementById("txtPassword").value;
    if (password == "") {

        ErrFunction("password is required");
        document.getElementById("txtPassword").focus();
        return false;
    }
    var pwd = document.getElementById("txtPassword");
    var Pwd = /^[a-zA-Z0-9\$@]+$/;
    if (!Pwd.test(pwd.value)) {
        ErrFunction("Password should contain only alphabets,numbers,@,$");
        document.getElementById("txtPassword").focus();
        return false;
    }

    var CPassword = document.getElementById("txtCPassword").value;
    if (CPassword == "") {
        ErrFunction("Confirm password is required");
        document.getElementById("txtCPassword").focus();
        return false;
    }
    if (txtPassword.value != CPassword) {
        ErrFunction("Password does not match");
        document.getElementById("txtCPassword").focus();
        return false;
    }
    var FirstName = document.getElementById("txtFirstName").value;
    if (FirstName == "") {

        ErrFunction("FirstName is required");
        document.getElementById("txtFirstName").focus();
        return false;
    }
    var FirstName = document.getElementById("txtFirstName")
    var fname = /^[a-zA-Z]{2,15}$/;
    if (!fname.test(FirstName.value)) {
        ErrFunction("First Name should only contain alphabets(<15)");
        return false;
    }

    var lastname = document.getElementById("txtLastName").value;
    if (lastname == "") {
        document.getElementById("txtLastName").focus();
        ErrFunction("last name is required");
        return false;
    }
    var lastname = document.getElementById("txtLastName")
    var lname = /^[a-zA-Z]{2,15}$/;
    if (!lname.test(lastname.value)) {
        ErrFunction("Last Name should only contain alphabets(<15)");
        return false;
    }


    var age = document.getElementById("txtAge").value;
    if (age.length < 1) {

        ErrFunction("age is required");
        document.getElementById("txtAge").focus();
        return false;
    }
    if (isNaN(age) || age < 1 || age > 100) {
        ErrFunction("The age must be a number between 1 and 100");
        return false;
    }
    var bool = isNaN(age);
    if (bool == true) {
        ErrFunction("Age has to be a number");
        document.getElementById("txtAge").focus();
        return false;
    }

    var contactno = document.getElementById("txtMobile").value;
    if (contactno.length < 1) {

        ErrFunction("Contact number is required");
        document.getElementById("txtMobile").focus();
        return false;
    }

    var contactno = document.getElementById("txtMobile")
    var Contact = /^[0-9]{10}$/;
    if (!Contact.test(contactno.value)) {
        ErrFunction("Please provide valid mobile number");
        return false;
    }


    //var emailid = document.getElementById("txt_UserEmail").value;
    var email = document.getElementById('txtEmail');
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if (!filter.test(email.value)) {
        ErrFunction('Please provide a valid email address');
        email.focus();
        return false;
    }

    else {
        //"SuccessFunction('{0}')", "Registered Successfully";
        document.getElementById("ddlRole").value = "";
        document.getElementById("ddlBranch").value = "";
        document.getElementById("txtUserName").value = "";
        document.getElementById("txtFirstName").value = "";
        document.getElementById("txtLastName").value = "";
        document.getElementById("txtAge").value = "";
        document.getElementById("txtMobile").value = "";
        document.getElementById("txtEmail").value = "";
        return true;
    }
}
