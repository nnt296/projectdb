function startIfUser(str) {
    $(document).ready(function () {
        var element = $('li').has('a[href="register.html"]');
        var html = '<li class="dropdown">' +
            '<a href="#" class="dropdown-toggle" data-toggle="dropdown" ' +
            'role="button" aria-haspopup="true" aria-expanded="false">' + str + '<span class="caret"></span></a>' +
            '<ul class="dropdown-menu">' +
            '<li><a href="user.html?acc=buyer">View profile</a></li>' +
            '<li><a href="logout.html">Logout</a></li> ' +
            '</ul>' +
            '</li>';
        element.replaceWith(html);
    });
}
function checkUser() {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            var myObj = JSON.parse(this.responseText);
            if (myObj[0]['id'] !== 0) {
                startIfUser(myObj[0]['id']);
            }
        }
    };
    xmlhttp.open("GET", "../controller/checkLogin.php", true);
    xmlhttp.send();
}
$(checkUser());