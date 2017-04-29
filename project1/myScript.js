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
            '<li><a href="user.php?acc=buyer">View profile</a></li>' +
            '<li><a href="logout.php">Logout</a></li> ' +
            '</ul>' +
            '</li>';
        element.replaceWith(html);
    });
}
$('body').on('load', checkUser());
// $('body').on('load',checkUser(),showFood('all'));

function fetchFood(response, idHTML) {
    var myObj = JSON.parse(response);
    if (!myObj.length){
        console.log('empty');
        return
    }
    var text = "";
    for (i = 0; i < myObj.length; i++) {
        text += insertDisplay(myObj[i]['Image'],
            myObj[i]['Foodname'],
            myObj[i]['Description'],
            myObj[i]['FoodID']
        );
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
    if (str === "") {
        document.getElementById("suggest_panel").innerHTML = "";
    }
    else {
        var place = "place=" + str;
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                // fetchPlace(this.responseText);

                var myObj = JSON.parse(this.responseText);
                var suggest_panel = $('#suggest_panel');
                suggest_panel.text('');
                for (i = 0; i < myObj.length; i++) {
                    var text = '<p onmouseup="displayPlace(\'' +
                        myObj[i]['Image'] + '\',\'' +
                        myObj[i]['StoreName'] + '\', \'' +
                        myObj[i]['Address'] + '\',\'' +
                        myObj[i]['StoreID'] + '\')">' +
                        myObj[i]['StoreID'] + '</p>';
                    suggest_panel.append(text);
                }

            }
        };
        xmlhttp.open("GET", "serverFood.php?" + place, true);
        xmlhttp.send();
    }
}
function foodAssoWithPlace(storeID) {
    if (storeID === "") {
        document.getElementById('delivery').innerHTML = "";
    }
    else {
        var fplace = "fplace=" + storeID;
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                fetchFood(this.responseText, "delivery");
            }
        };
        xmlhttp.open("GET", "serverFood.php?" + fplace, true);
        xmlhttp.send();
    }
}
function displayPlace(Image, StoreName, Address, StoreID) {
    $('#display').text('');
    //to empty display

    Image = "pizza.jpg";
    var text = '<div >' +
        '<img src="' + Image + '" style="width: 100%; height: 400px;"></div> ' +
        '<br> ' +
        '<div id="about"> ' +
        '<p>' + StoreName + '</p> ' +
        '<p class="glyphicon glyphicon-map-marker"> ' + Address + '</p> ' +
        '</div> <br><br>' +
        '<div><p>Order HERE!</p></div> <hr>' +
        '<div id="delivery">' + StoreID + '</div>';
    $('#display').html(text);
    foodAssoWithPlace(StoreID);
}
function showFood(str) {
    if (str === "") {
        document.getElementById("display").innerHTML = "";
    }
    else {
        var food = "cat=" + str;
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                fetchFood(this.responseText, "display");
            }
        };
        xmlhttp.open("GET", "serverFood.php?" + food, true);
        xmlhttp.send();
    }
}
function clearBox(elementID) {
    // document.getElementById(elementID).innerHTML = "<tr></tr>";
    $("#" + elementID + " tr").remove();
}
function clearBox2(elementID) {
    // document.getElementById(elementID).innerHTML = "<tr></tr>";
    $("#" + elementID).remove();
}
function insertDisplay(img, name, description, id) {
    img = 'wow.jpg';
    var text = '<div class="col-sm-4" >';
    text += '<div class="thumbnail" style="height: 450px;">';
    text += '<img src="' + img + '">';
    text += '<div class="caption">';
    text += '<h3>' + name + '</h3>';
    text += '<p>' + description + '</p>';
    text += '<p><button id="' + id + '" onclick="getFood(this.id)" class="btn btn-success btn-lg"> Order </button> </p>';
    text += '</div>';
    text += '</div>';
    text += '</div>';
    text += '</div>';

    return text;
}
function addCart(name, id) {
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
        text += '<td><button type="submit" onclick="clearBox2(\'' + id + '\')">Unselect item</button></td>';

        var tr = document.createElement('tr');
        tr.setAttribute('id', id);
        tr.innerHTML = text;
        document.getElementById('cart').appendChild(tr);
    }

}
function getFood(foodid) {
    xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            if (this.responseText.includes('login')) {
                $('#order').empty();
                $('#order').append(this.responseText);
            }
            else {
                var jsonObj = JSON.parse(this.responseText);
                addCart(jsonObj[0]['Foodname'], foodid);
            }
        }
    };
    xmlhttp.open("GET", "addCart.php?state=add&code=" + foodid, true);
    xmlhttp.send();
}