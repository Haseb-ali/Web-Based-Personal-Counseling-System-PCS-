function loginValidate() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    var error = document.getElementById("error");
    var lerror = document.getElementById("loginerror");

    if (username == "" || password == "") {
        error.style.display = "block";
        lerror.style.display = "none";
        return false;
    }
    else {
        error.style.display = "none";
        lerror.style.display = "block";
    }


}
function signUpValidate() {
    var username = document.getElementById("username").value;
    var fullname = document.getElementById("fullname").value;
    var Education = document.getElementById("Education").value;
    var Address = document.getElementById("Address").value;
    var ContactNo = document.getElementById("ContactNo").value;
    var Email = document.getElementById("Email").value;
    var password = document.getElementById("Paasword").value;
    var error = document.getElementById("error");
    if (username == "" || fullname == "" || Education == "" || Address == "" || ContactNo == "" || Email == "" || password == "") {
        error.style.display = "block";
        return false;
    }

}