var text = '<div class="alert alert-warning text-center">' +
    '<strong>Warning!</strong> You have been logged out! Redirect in 3s!' +
    '</div>';

$(function () {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            $('#notification').html(text);
            setTimeout(function () {
                window.location.replace("../view/index.html");
            }, 3000);
        }
    };
    xmlhttp.open("GET", "../model/logout.php?", false);
    xmlhttp.send();
})