/**
 * Created by ThanhNN on 31/03/2017.
 */
function startIfUser(str) {
    $(document).ready(function () {
        var element = $('li').has('a[href="login.php"]');
        var html = '<li class="dropdown">' +
            '<a href="#" class="dropdown-toggle" data-toggle="dropdown" ' +
            'role="button" aria-haspopup="true" aria-expanded="false">' + str + '<span class="caret"></span></a>' +
            '<ul class="dropdown-menu">' +
            '<li><a href="user.html">View profile</a></li>' +
            '<li><a href="logout.php">Logout</a></li> ' +
            '</ul>' +
            '</li>';
        element.replaceWith(html);
    });
}
$('body').on('load', checkUser());
// $('body').on('load',checkUser(),showFood('all'));

function fetchJson(response, idHTML, isPrice, isFood) {
    var myObj = JSON.parse(response);
    if (!myObj.length) {
        console.log('empty');
        return
    }
    var text = "";
    if (isFood){
        for (i = 0; i < myObj.length; i++) {
            var price = "";
            var id = myObj[i]['FoodID'];
            if(isPrice){
                price = myObj[i]['Price'];
                id = myObj[i]['DishID'];
            }
            text += insertDisplay(
                myObj[i]['Image'],
                myObj[i]['Name'],
                myObj[i]['Description'],
                id,
                price,
                isPrice,
                isFood
            );
        }
    }
    else {
        for (i = 0; i < myObj.length; i++) {
            text += insertDisplay(
                myObj[i]['Vendor_Image'],
                myObj[i]['Vendor_Name'],
                myObj[i]['Address'],
                myObj[i]['VendorID'],
                "",
                isPrice,
                isFood
            );
        }
    }

    document.getElementById(idHTML).innerHTML = text;
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

function showPlace(str) {
    $('#showFood').val("");
    $('#display').text("");
    $('#table_vendor_food').text("");
    if (str === "") {
        document.getElementById("display").innerHTML = "";
    }
    else {
        var place = "place=" + str;
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                fetchJson(this.responseText,"display", false, false);
            }
        };
        xmlhttp.open("GET", "serverFood.php?" + place, true);
        xmlhttp.send();
    }
}
function foodAssoWithPlace(VendorID) {
    if (VendorID === "") {
        document.getElementById('delivery').innerHTML = "";
    }
    else {
        var fplace = "fplace=" + VendorID;
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                // console.log(this.responseText);
                fetchJson(this.responseText, "delivery", true, true);
            }
        };
        xmlhttp.open("GET", "serverFood.php?" + fplace, true);
        xmlhttp.send();
    }
}
function displayPlace(Vendor_Image, Vendor_Name, Address, VendorID) {
    $('#display').text('');
    //to empty display

    Vendor_Image = "pizza.jpg";
    var text = '<hr><div >' +
        '<img src="' + Vendor_Image + '" style="width: 100%; height: 400px;"></div> ' +
        '<br> ' +
        '<div id="about"> ' +
        '<p>' + Vendor_Name + '</p> ' +
        '<p class="glyphicon glyphicon-map-marker"> ' + Address + '</p> ' +
        '</div> <br><br>' +
        '<div><p>Order HERE!</p></div> <hr>' +
        '<div id="delivery">' + VendorID + '</div>';
    $('#display').html(text);
    foodAssoWithPlace(VendorID);
    $('#suggest_panel').css('visibility', 'hidden');
}
function showFood(str) {
    $('#showPlace').val("");
    $('#display').text("");
    $('#table_vendor_food').text("");
    if (str === "") {
        document.getElementById("display").innerHTML = "";
    }
    else {
        var food = "cat=" + str;
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                fetchJson(this.responseText, "display", false, true);
            }
        };
        xmlhttp.open("GET", "serverFood.php?" + food, true);
        xmlhttp.send();
    }
}
function showMoreFood(FoodID) {
    var food = "fprice=" + FoodID;
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            var myObj = JSON.parse(this.responseText);
            if (myObj.length) {
                var element = $('#table_vendor_food');
                var text = '<div class="col-sm-12">' +
                    '<table id="vendor_food">' +
                    '<tr>' +
                    '<td>Vendor Name</td>' +
                    '<td>DishID</td>' +
                    '<td>Open-Close Time</td>' +
                    '<td>Quality</td>' +
                    '<td>Price</td>' +
                    '</tr>' +
                    '</table>' +
                    '</div>' +
                    '<br><hr>';
                element.html(text);
                var vf = $('#vendor_food');
                for (i = 0; i < myObj.length; i++) {
                    var html = '<tr>' +
                        '<td>' + myObj[i]['Vendor_Name'] + '</td>' +
                        '<td>' + myObj[i]['DishID'] + '</td>' +
                        '<td>' + myObj[i]['Open_Time'] + '-' + myObj[i]['Close_Time'] + '</td>' +
                        '<td>' + myObj[i]['Quality'] + '</td>' +
                        '<td>' + myObj[i]['Price'] + '</td>' +
                        '</tr>';
                    vf.append(html);
                }
            }
        }
    };
    xmlhttp.open("GET", "serverFood.php?" + food, true);
    xmlhttp.send();
}
function showMoreVendor(VendorID) {
    var splace = "splace=" + VendorID;
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            var myObj = JSON.parse(this.responseText);
            displayPlace(   myObj[0]['Vendor_Image'],
                            myObj[0]['Vendor_Name'],
                            myObj[0]['Address'],
                            VendorID);
        }
    };
    xmlhttp.open("GET", "serverFood.php?" + splace, true);
    xmlhttp.send();
}
function clearBox(elementID) {
    // document.getElementById(elementID).innerHTML = "<tr></tr>";
    $("#" + elementID + " tr").remove();
}
function clearBox2(elementID) {
    // document.getElementById(elementID).innerHTML = "<tr></tr>";
    $("#" + elementID).remove();
}
function insertDisplay(img, name, description, id, price, isPrice, isFood) {
    img = 'wow.jpg';
    var text = '<div class="col-sm-4" >';
    text += '<div class="thumbnail" style="height: 450px;">';
    text += '<img src="' + img + '">';
    text += '<div class="caption">';
    text += '<h3>' + name + '</h3>';
    text += '<p>' + description + '</p>';
    text += '<hr>';
    if (isPrice){
        text += '<p>' + price + '</p>';
        text += '<p><button id="' + id +
            '" value="' + price +
            '" onclick="displayCart(this.id,this.value)" class="btn btn-success btn-lg"> Order </button> </p>';
    }
    if (!isPrice && isFood) {
        text += '<p><button id="' + id +
            // '" value="' + price +
            '" onclick="showMoreFood(this.id)" class="btn btn-success btn-lg"> Show More </button> </p>';
    }
    if (!isPrice && !isFood){
        text += '<p><button id="' + id +
            // '" value="' + price +
            '" onclick="showMoreVendor(this.id)" class="btn btn-success btn-lg"> Show More </button> </p>';
    }
    text += '</div>';
    text += '</div>';
    text += '</div>';
    text += '</div>';

    return text;
}
function displayCart(id, value) {
    getFood(id, value);
    $('#order').css('visibility', 'visible');
}
function addCart(name, id, price) {
    if ($("tr#" + id).length !== 0) {
        //does exist tr with id == id
        var element = $('td[name="' + id + '"');
        // alter(element.text());
        var quantity = element.text();
        quantity++;
        element.text(quantity);
    }
    else {
        var text = "<td>" + name + "</td>";
        text += "<td>" + id + "</td>";
        text += "<td name='" + id + "'>1</td>";
        text += "<td>" + price + "</td>";
        text += '<td><button type="submit" onclick="clearBox2(\'' + id + '\')">Unselect item</button></td>';

        var tr = document.createElement('tr');
        tr.setAttribute('id', id);
        tr.innerHTML = text;
        document.getElementById('cart').appendChild(tr);
    }
}
function calSum() {
    var table = $('#cart');
    var total = 0;
    table.find('tr').each(function () {
        var td = $(this).find('td');
        var quantity = parseInt(td.eq(2).text());
        var price = parseInt(td.eq(3).text());
        total += quantity * price;
    });
    var element = $('#order div span');
    element.text(total);
}
function getFood(dishID, price) {
    xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            if (this.responseText.includes('login')) {
                $('#order').empty();
                $('#order').append(this.responseText);
            }
            else {
                var myObj = JSON.parse(this.responseText);
                addCart(myObj[0]['Name'], dishID, price);
                calSum();
            }
        }
    };
    xmlhttp.open("GET", "addCart.php?state=add&code=" + dishID, true);
    xmlhttp.send();
}


function payment() {
    var dict = [];
    var table = $('#cart');
    var total = 0;
    table.find('tr').each(function () {
        var td = $(this).find('td');
        var id = td.eq(1).text();
        var quantity = td.eq(2).text();
        var element = {};
        element[id] = quantity;
        dict.push(element);
    });
    $.post("addCart.php", {submit: JSON.stringify(dict)}, function (result) {
        $('#temp').text(result);
    });
}

// $('#search').focusout(function($('#suggest_panel').text('');));