/**
 * Created by ThanhNN on 31/03/2017.
 */
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
$('body').on('load', checkUser());
// $('body').on('load',checkUser(),showFood('all'));

function fetchFood(response, idHTML, isPrice) {
    var myObj = JSON.parse(response);
    if (!myObj.length) {
        console.log('empty');
        return
    }
    var text = "";
    if (isPrice === false) {
        for (i = 0; i < myObj.length; i++) {
            text += insertDisplay(myObj[i]['Image'],
                myObj[i]['Food_Name'],
                myObj[i]['Description'],
                myObj[i]['FoodID'],
                "Price varying"
            );
        }
    }
    else {
        for (i = 0; i < myObj.length; i++) {
            text += insertDisplay(myObj[i]['Image'],
                myObj[i]['Food_Name'],
                myObj[i]['Description'],
                myObj[i]['DishID'],
                "Price: " + myObj[i]['Price'] + " VND"
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
    $('#suggest_panel').css('visibility', 'visible');
    if (str === "") {
        document.getElementById("suggest_panel").innerHTML = "";
    }
    else {
        var place = "place=" + str;
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                var myObj = JSON.parse(this.responseText);
                var suggest_panel = $('#suggest_panel');
                suggest_panel.text('');
                for (i = 0; i < 5; i++) {
                    var text = '<p><a href="#delivery" onmouseup="displayPlace(\'' +
                        myObj[i]['Image'] + '\',\'' +
                        myObj[i]['Vendor_Name'] + '\', \'' +
                        myObj[i]['Address'] + '\',\'' +
                        myObj[i]['VendorID'] + '\')">' +
                        myObj[i]['Vendor_Name'] + '</a></p>';
                    suggest_panel.append(text);
                }
                if (myObj.length > 5) {
                    var text = '<a href="">Show More</a>';
                    suggest_panel.append(text);
                }

            }
        };
        xmlhttp.open("GET", "serverFood.php?" + place, true);
        xmlhttp.send();
    }
}

// foodAssoWithPlace() get food which is in the list of the
function foodAssoWithPlace(VendorID) {
    if (VendorID === "") {
        document.getElementById('delivery').innerHTML = "";
    }
    else {
        var fplace = "fplace=" + VendorID;
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                fetchFood(this.responseText, "delivery", true);
            }
        };
        xmlhttp.open("GET", "serverFood.php?" + fplace, true);
        xmlhttp.send();
    }
}
// displayPlace() to show out the Information about the Place
function displayPlace(Image, Vendor_Name, Address, VendorID) {
    $('#display').text('');
    //to empty display

    Image = "pizza.jpg";
    var text = '<div >' +
        '<img src="' + Image + '" style="width: 100%; height: 400px;"></div> ' +
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

// showFood() get info of Food from server
function showFood(str) {
    if (str === "") {
        document.getElementById("display").innerHTML = "";
    }
    else {
        var food = "cat=" + str;
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                fetchFood(this.responseText, "display", false);
            }
        };
        xmlhttp.open("GET", "serverFood.php?" + food, true);
        xmlhttp.send();
    }
}

// clearBox() to uncheck cart-items
function clearBox(elementID) {
    //remove item by set element to null
    $("#" + elementID + " tr").remove();
    //re-calculate total
    calSum();
}
function clearBox2(elementID) {
    //remove item by set element to null
    $("#" + elementID).remove();
    //re-calculate total
    calSum();
}

// insertDisplay() to insert Cards about food
function insertDisplay(img, name, description, id, price) {
    img = 'wow.jpg';
    var text = '<div class="col-sm-4" >';
    text += '<div class="thumbnail" style="height: 450px;">';
    text += '<img src="' + img + '">';
    text += '<div class="caption">';
    text += '<h3>' + name + '</h3>';
    text += '<p>' + description + '</p>';
    text += '<hr>';
    text += '<p>' + price + '</p>';
    price = price.replace(/^\D+/g, '');
    text += '<p><button id="' + id + '" value="' + price + '" onclick="displayCart(this.id,this.value)" class="btn btn-success btn-lg"> Order </button> </p>';
    text += '</div>';
    text += '</div>';
    text += '</div>';
    text += '</div>';

    return text;
}

// displayCart()
function displayCart(id, value) {
    getFood(id, value);
    $('#order').css('visibility', 'visible');
}

// addCart() used to add some item's infor to the cart
function addCart(name, id, price) {
    if ($("tr#" + id).length !== 0) {
        //does exist tr with id == id
        // var element = $('td[name="' + id + '"');
        var elementPrice = $("tr#" + id + " td:nth-child(4)");
        if (parseInt(elementPrice.text()) !== price) {
            var element = $("tr#" + id + " td:nth-child(3)");
            var quantity = element.text();
            quantity++;
            element.text(quantity);
            return;
        }
    }
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

// calSum() used to collect cart's item price to calculate the total price
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

// getFood() get food's infor from server
function getFood(dishid, price) {
    xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            if (this.responseText.includes('login')) {
                $('#order').empty();
                $('#order').append(this.responseText);
            }
            else {
                var myObj = JSON.parse(this.responseText);
                addCart(myObj[0]['Food_Name'], dishid, price);
                calSum();
            }
        }
    };
    xmlhttp.open("GET", "addCart.php?state=add&code=" + dishid, true);
    xmlhttp.send();
}

// payment() to collect cart's infor and send to server to complete order
$('#confirm').on('click', function payment() {
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
    $('#btnTrigger').click();
});