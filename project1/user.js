/**
 * Created by thanhnn on 5/10/2017.
 */
$(startPage());
function startPage() {
    checkUser();
    getProfile();
}
function getProfile() {
    $('#wheretoshow').text("");
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            var myObj = JSON.parse(this.responseText);
            document.getElementById("wheretoshow").innerHTML =
                '<div class="col-sm-4 dpicture"><img src="wow.jpg" class="ppicture"></div>' +
                '<div class="col-sm-1"></div>' +
                '<div class="col-sm-6 pproperties" id="pproperties">' +
                '<h1>' + myObj[0]['First_Name'] + ' ' + myObj[0]['Last_Name'] + '</h1>' +
                '<small>' +
                '<cite>' + myObj[0]['Address'] + '</cite> ' +
                '<i class="glyphicon glyphicon-map-marker"></i>' +
                '</small>' +
                '<br><br>' +
                '<p style="font-size: 120%;">' +
                '<i class="glyphicon glyphicon-envelope"> ' + myObj[0]['Email'] + ' </i> ' +
                '<br>' +
                '<i class="glyphicon glyphicon-gift"> ' + myObj[0]['Birthday'] + ' </i> ' +
                '<br>' +
                '<i class="glyphicon glyphicon-phone"> ' + myObj[0]['Phone'] + '</i> ' +
                '<br>' +
                '</p>' +
                '</div>';
        }
    };
    xmlhttp.open("GET", "user.php?acc=profile", true);
    xmlhttp.send();
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
    xmlhttp.open("GET", "checkLogin.php", true);
    xmlhttp.send();
}
function startIfUser(str) {
    $(document).ready(function () {
        var element = $('li').has('a[href="register.html"]');
        var html = '<li class="dropdown active">' +
            '<a href="#" class="dropdown-toggle" data-toggle="dropdown" ' +
            'role="button" aria-haspopup="true" aria-expanded="false">' + str + '<span class="caret"></span></a>' +
            '<ul class="dropdown-menu">' +
            '<li><a href="user.html">View profile</a></li>' +
            '<li><a href="logout.html">Logout</a></li> ' +
            '</ul>' +
            '</li>';
        element.replaceWith(html);
    });
}

function getEdit() {
    var element = $('#wheretoshow');
    element.text("");
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            var myObj = JSON.parse(this.responseText);
            if ("status" in myObj[0]) {
                element.html('<br><p><strong>No Record!!!</strong></p>');
                return;
            }
            var text = '<div class="alert alert-info alert-dismissable"> ' +
                '<a class="panel-close close" data-dismiss="alert">×</a> ' +
                '<i class="fa fa-coffee"></i>' +
                'This is an <strong>.alert</strong>. Use this to show important messages to the user. ' +
                '</div> ' +
                '<h3>Personal info</h3>' +
                '<form class="form-horizontal" role="form">' +
                '<div class="form-group"> ' +
                '<label class="col-lg-3 control-label">First name:</label> ' +
                '<div class="col-lg-8"> ' +
                '<input class="form-control" type="text" name="fname" value="' + myObj[0]['First_Name'] + '"> ' +
                '</div> ' +
                '</div> ' +
                '<div class="form-group"> ' +
                '<label class="col-lg-3 control-label">Last name:</label> ' +
                '<div class="col-lg-8"> ' +
                '<input class="form-control" type="text" name="lname" value="' + myObj[0]['Last_Name'] + '"> ' +
                '</div> ' +
                '</div> ' +
                '<div class="form-group"> ' +
                '<label class="col-lg-3 control-label">Address:</label> ' +
                '<div class="col-lg-8"> ' +
                '<input class="form-control" type="text" name="address" value="' + myObj[0]['Address'] + '"> ' +
                '</div> ' +
                '</div> ' +
                '<div class="form-group"> ' +
                '<label class="col-lg-3 control-label">Phone:</label> ' +
                '<div class="col-lg-8"> ' +
                '<input class="form-control" type="text" name="phone" value="' + myObj[0]['Phone'] + '"> ' +
                '</div> ' +
                '</div> ' +
                '<div class="form-group"> ' +
                '<label class="col-lg-3 control-label">DOB:</label> ' +
                '<div class="col-lg-8"> ' +
                '<input class="form-control" type="text" name="dob" value="' + myObj[0]['Birthday'] + '"> ' +
                '</div> ' +
                '</div> ' +
                '<div class="form-group"> ' +
                '<label class="col-md-3 control-label">Password:</label> ' +
                '<div class="col-md-8"> ' +
                '<input class="form-control" type="password" name="password" value="' + myObj[0]['Password'] + '"> ' +
                '</div> ' +
                '</div> ' +
                '<div class="form-group"> ' +
                '<label class="col-md-3 control-label">Confirm password:</label> ' +
                '<div class="col-md-8"> ' +
                '<input class="form-control" type="password" name="cpassword" value="' + myObj[0]['Password'] + '"> ' +
                '</div> ' +
                '</div> ' +
                '<div class="form-group"> ' +
                '<label class="col-md-3 control-label"></label> ' +
                '<div class="col-md-8"> ' +
                '<input type="button" class="btn btn-primary" value="Save Changes" onclick="setEdit()"> ' +
                '</div> ' +
                '</div> ' +
                '<div id="result"></div>' +
                '</form>' +
                '</div>';
            element.html(text);
        }
    };
    xmlhttp.open("GET", "user.php?acc=edit", true);
    xmlhttp.send();
}
function setEdit(){
    var fname = $('input[name="fname"]').val();
    var lname = $('input[name="lname"]').val();
    var address = $('input[name="address"]').val();
    var dob = $('input[name="dob"]').val();
    var password = $('input[name="password"]').val();
    var phone = $('input[name="phone"]').val();

    var dict = [];
    var element = {};
    element['fname'] = fname;
    element['lname'] = lname;
    element['address'] = address;
    element['dob'] = dob;
    element['password'] = password;
    element['phone'] = phone;
    dict.push(element);
    $.post("user.php", {submit: JSON.stringify(dict)}, function (result) {
        $('#result').text(result);
    });
}
function getPurHis() {
    var element = $('#wheretoshow');
    element.text("");
    var content = '<p>Your purchase History:</p>' +
        '<table class="table table-striped" id="historytable"></table>';
    element.html(content);
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            var myObj = JSON.parse(this.responseText);
            if ("status" in myObj[0]) {
                element.html('<br><p><strong>No Record!!!</strong></p>');
                return;
            }
            else {
                var table = $('#historytable');
                table.append("<tr><th>Food Name</th><th>Quantity</th><th>Order Time (yyyy-mm-dd hh-mm-ss)</th></tr>");
                for (i = 0; i < myObj.length; i++) {
                    var text = '<tr>' +
                        '<th>' + myObj[i]['Food_Name'] + '</th>' +
                        '<th>' + myObj[i]['Quantity'] + '</th>' +
                        '<th>' + myObj[i]['Date'] + '</th>' +
                        '</tr>';
                    table.append(text);
                }
            }
        }
    };
    xmlhttp.open("GET", "user.php?acc=history", true);
    xmlhttp.send();
}
function getOrderFood() {

}