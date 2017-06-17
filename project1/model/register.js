function login() {
    var email = $('#form-username').val();
    var password = $('#form-password').val()
    $.post("../controller/login.php", {email: email, password: password, signin: "signin"}, function (result) {
        if (result === "Error") {
            var warning = '<div class="alert alert-warning text-center">' +
                '<strong>Warning!</strong> Incorrect email or password! Redirect in 2s!</div>';
            $('#checklogin').html(warning);
            setTimeout(function () {
                window.location.replace("../view/register.html");
            }, 2000);
        }
        if (result === "Success") {
            var success = '<div class="alert alert-success text-center">' +
                '<strong>Success!</strong> Connected! Redirect in 2s!</div>';
            $('#checklogin').html(success);
            setTimeout(function () {
                window.location.replace("../view/index.html");
            }, 2000);
        }
    });
}
$('.login-form').keypress(function (e) {
    if (e.which === 13){
        login();
    }
});
$('button[name=signin]').on('click', login);
function signup() {
    var email = $('#form-email').val();
    var password = $('#form-new-password').val();
    var fname = $('#form-first-name').val();
    var lname = $('#form-last-name').val();

    $.post("../controller/signup.php", {
        fname: fname,
        lname: lname,
        email: email,
        pass: password,
        signup: "signup"
    }, function (result) {
        console.log(result);
        if (result === "Null"){
            var warning = '<div class="alert alert-danger text-center"><strong>Warning!</strong> Email && Password are required!</div>';
            $('#checksignup').html(warning);
            setTimeout(function () {
                window.location.replace("../view/register.html");
            }, 2000);
        }
        if (result === "Error"){
            var warning = '<div class="alert alert-danger text-center"><strong>Warning!</strong> Existed email!</div>';
            $('#checksignup').html(warning);
            setTimeout(function () {
                window.location.replace("../view/register.html");
            }, 2000);
        }
        if (result === "Success"){
            var success = '<div class=\"alert alert-success text-center\"><strong>Success!</strong> Signed up!</div>';
            $('#checksignup').html(success);
            setTimeout(function () {
                window.location.replace("../view/index.html");
            }, 2000);
        }
    });
}
$('.registration-form').keypress(function (e) {
    if (e.which === 13){
        signup();
    }
})
$('button[name=signup]').on('click', signup);