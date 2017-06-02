// Process when click each tab
function openTab(evt, searchName) {
    // Declare all variables
    var i, tabcontent, tablinks;
    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(searchName).style.display = "block";
    evt.currentTarget.className += " active";
}


// Variables for search boxes
var foodnamesearch = document.getElementById("foodnamesearch");
var foodcoursesearch = document.getElementById("foodcoursesearch");
var vendornamesearch = document.getElementById("vendornamesearch");
var vendoraddresssearch = document.getElementById("vendoraddresssearch");
var emailsearch = document.getElementById("emailsearch");
var usernamesearch = document.getElementById("usernamesearch");
var phonesearch = document.getElementById("phonesearch");



// Add event listener for search boxes
foodnamesearch.addEventListener("keyup",foodSearch);
foodnamesearch.addEventListener("click",foodSearch);
foodcoursesearch.addEventListener("change",foodSearch);
vendornamesearch.addEventListener("keyup",vendorSearch);
vendoraddresssearch.addEventListener("keyup",vendorSearch);
emailsearch.addEventListener("keyup",accountSearch);
usernamesearch.addEventListener("keyup",accountSearch);
phonesearch.addEventListener("keyup",accountSearch);


// Process food search on food tab
function accountSearch(){
    var result = new XMLHttpRequest();
    result.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            if(this.responseText === "Nothing"){
                document.getElementById("accountresult").innerHTML = "<tr><th>UserID</th><th>Email</th><th>Password</th><th>Phone</th><th>Address</th><th>First name</th><th>Last name</th><th>Birthday</th></tr><tr>No result</tr>";
            }
            else{
                fetchAccount(this.responseText);
                document.getElementById("dishresult").innerHTML = "";
            }
        }
    };
    result.open("GET", "adminPage.php?emailsearch=" + emailsearch.value + "&usernamesearch=" + usernamesearch.value + "&phonesearch=" + phonesearch.value, true);
    result.send();
}

// Display account table
function fetchAccount(response) {
    var array = JSON.parse(response);
    if (!array.length) {
        document.getElementById("accountresult").innerHTML = "<tr><th>UserID</th><th>Email</th><th>Password</th><th>Phone</th><th>Address</th><th>First name</th><th>Last name</th><th>Birthday</th></tr><tr>No result</tr>";
        return;
    }
    var text = "";
    document.getElementById("accountresult").innerHTML = "<tr><th>UserID</th><th>Email</th><th>Password</th><th>Phone</th><th>Address</th><th>First name</th><th>Last name</th><th>Birthday</th></tr>";
    for (i = 0; i < array.length; i++) {
            text += accountDisplay(array[i]['UserID'],
                                array[i]['Email'],
                                array[i]['Password'],
                                array[i]['Phone'],
                                array[i]['Address'],
                                array[i]['First_Name'],
                                array[i]['Last_Name'],
                                array[i]['Birthday']
                                );
        }
    document.getElementById("accountresult").innerHTML += text;
}

// Display an account on 1 row of table
function accountDisplay(userid, email, password, phone, address, firstname, lastname, birthday) {
    var text = '<tr>';
    text += '<td>' + userid + '</td>';
    text += '<td><a href="#' + email +'" class="emailclick" onclick="clickAccount(this.innerHTML)">' + email + '</a></td>';
    text += '<td>' + password + '</td>';
    text += '<td>' + phone + '</td>';
    text += '<td>' + address + '</td>';
    text += '<td>' + firstname + '</td>';
    text += '<td>' + lastname + '</td>';
    text += '<td>' + birthday + '</td>';
    text += '<td><button id="del' + userid + '" onclick=deleteAccount(this.id.substr(3,this.id.length-3))>Delete</button></td>'
    text += '<td><button id="edi' + userid + '" onclick="editAccount(\'' + password + '\',\'' + phone + '\',\'' + address + '\',\'' + firstname + '\',\'' + lastname + '\',\'' + birthday + '\',\'' + userid +'\')">Edit</button></td>'
    text += '</tr>';
    return text;
}

// Delete an account
function deleteAccount(userid){
    var choice = confirm("Do you sure want to delete this account? ID = " + userid);
    if(choice === true){
        var deleteAccount = new XMLHttpRequest();
        var str = window.location.href;
        deleteAccount.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                if(this.responseText === "true"){
                    alert('Delete Successfully');
                    accountSearch();
                }
                if(this.responseText === "false"){
                    alert('Delete Unsuccessfully');
                }
                
            }
        };
    deleteAccount.open("GET","adminPage.php?deleteaccount=" + userid, true);
    deleteAccount.send();
    }
}

// Navigate when click on an email
function clickAccount(name) {
    var result = new XMLHttpRequest();
    result.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            fetchAccountDetail(this.responseText);
        }
    };
    result.open("GET", "adminPage.php?accountemail=" + name, true);
    result.send();
}

// Display transaction table
function fetchAccountDetail(response) {
    // alert(response);
    var array = JSON.parse(response);
    var text = "";
    document.getElementById("accountresult").innerHTML = "<tr><button onclick=accountSearch()>Back</button></tr><tr><th>TransID</th><th>Food</th><th>Vendor</th><th>Quantity</th><th>Total</th><th>Date</th></tr>";
    for (i = 0; i < array.length; i++) {
            text += transactionDisplay(array[i]['TransID'],
                                array[i]['Food_Name'],
                                array[i]['Vendor_Name'],
                                array[i]['Quantity'],
                                array[i]['Total'],
                                array[i]['Date'],
                                );
        }
    document.getElementById("accountresult").innerHTML += text;
}

// Display a transaction on 1 row of table
function transactionDisplay(id, foodname, vendorname, quantity, total, date) {
    var text = '<tr>';
    text += '<td>' + id + '</td>';
    text += '<td>' + foodname + '</td>';
    text += '<td>' + vendorname + '</td>';
    text += '<td>' + quantity + '</td>';
    text += '<td>' + total + '</td>';
    text += '<td>' + date + '</td>';
    text += '<td><button id="del' + id + '"onclick=deleteTransaction(this.id.substr(3,this.id.length-3))>Delete</button></td>'
    text += '</tr>';
    return text;
}

// Delete an account
function deleteTransaction(id){
    var choice = confirm("Do you sure want to delete this transaction? ID = " + id);
    if(choice === true){
        var deleteRequest = new XMLHttpRequest();
        var str = window.location.href;
        deleteRequest.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                if(this.responseText === "true"){
                    alert('Delete Successfully');
                    clickAccount(str.substr(51,str.length-51));
                }
                if(this.responseText === "false"){
                    alert('Delete Unsuccessfully');
                }
                
            }
        };
    deleteRequest.open("GET","adminPage.php?deletetransaction=" + id, true);
    deleteRequest.send();
    }
}

// Process food search on food tab
function foodSearch(){
    var foodResult = new XMLHttpRequest();
    foodResult.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            if(this.responseText === "Nothing"){
                document.getElementById("foodresult").innerHTML = "<tr><th>Food ID</th><th>Food Name</th><th>Type</th><th>Course</th><th>Description</th><th>Image</th></tr><tr>No result</tr>";
            }
            else{
                fetchFood(this.responseText);
                document.getElementById("dishresult").innerHTML = "";
            }
        }
    };
    foodResult.open("GET", "adminPage.php?foodname=" + foodnamesearch.value + "&foodcourse=" + foodcoursesearch.value, true);
    foodResult.send();
}

// Display food table
function fetchFood(response) {
    var foodArray = JSON.parse(response);
    if (!foodArray.length) {
        document.getElementById("foodresult").innerHTML = "<tr><th>Food ID</th><th>Food Name</th><th>Type</th><th>Course</th><th>Description</th><th>Image</th></tr><tr>No result</tr>";
        return;
    }
    var text = "";
    document.getElementById("foodresult").innerHTML = "<tr><th>Food ID</th><th>Food Name</th><th>Type</th><th>Course</th><th>Description</th><th>Image</th></tr>";
    for (i = 0; i < foodArray.length; i++) {
            text += foodDisplay(foodArray[i]['FoodID'],
                                foodArray[i]['Food_Name'],
                                foodArray[i]['Type'],
                                foodArray[i]['Course'],
                                foodArray[i]['Description'],
                                foodArray[i]['Image']
                                );
        }
    document.getElementById("foodresult").innerHTML += text;
}

// Display a food on 1 row of table
function foodDisplay(foodid, foodname, type, course, description, image) {
    var text = '<tr>';
    text += '<td>' + foodid + '</td>';
    text += '<td><a href="#' + foodname +'" class="foodclick" onclick="clickFood(this.innerHTML)">' + foodname + '</a></td>';
    text += '<td>' + type + '</td>';
    text += '<td>' + course + '</td>';
    text += '<td>' + description + '</td>';
    text += '<td><img width="200" height="200" src="../picture/' + image + '"></td>';
    text += '<td><button id="del' + foodid + '"onclick=deleteFood(this.id.substr(3,this.id.length-3))>Delete</button></td>'
    text += '</tr>';
    return text;
}

// Delete a food
function deleteFood(id){
    var choice = confirm("Do you sure want to delete this food? ID = " + id);
    if(choice === true){
        var deleteRequest = new XMLHttpRequest();
        var str = window.location.href;
        deleteRequest.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                if(this.responseText === "true"){
                    alert('Delete Successfully');
                    foodSearch();
                }
                if(this.responseText === "false"){
                    alert('Delete Unsuccessfully');
                }
                
            }
        };
    deleteRequest.open("GET","adminPage.php?deletefood=" + id, true);
    deleteRequest.send();
    }
}

// Process vendor search on vendor tab
function vendorSearch(){
    var vendorResult = new XMLHttpRequest();
    vendorResult.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            if(this.responseText === "Nothing"){
                document.getElementById("vendorresult").innerHTML = "<tr><th>Vendor ID</th><th>Vendor Name</th><th>Address</th><th>Open time</th><th>Close time</th><th>Quality</th><th>Service</th><th>Pricing</th><th>Space</th><th>Image</th></tr><tr>No result</tr>";
            }
            else{
                fetchVendor(this.responseText);
                document.getElementById("dishresult").innerHTML = "";
            }
        }
    };
    vendorResult.open("GET", "adminPage.php?vendorname=" + vendornamesearch.value + "&vendoraddress=" + vendoraddresssearch.value, true);
    vendorResult.send();
}

// Display vendor table
function fetchVendor(response) {
    var vendorArray = JSON.parse(response);
    if (!vendorArray.length) {
        document.getElementById("vendorresult").innerHTML = "<tr><th>Vendor ID</th><th>Vendor Name</th><th>Address</th><th>Open time</th><th>Close time</th><th>Quality</th><th>Service</th><th>Pricing</th><th>Space</th><th>Image</th></tr><tr>No result</tr>";
        return;
    }
    var text = "";
    document.getElementById("vendorresult").innerHTML = "<tr><th>Vendor ID</th><th>Vendor Name</th><th>Address</th><th>Open time</th><th>Close time</th><th>Quality</th><th>Service</th><th>Pricing</th><th>Space</th><th>Image</th></tr>";
    for (i = 0; i < vendorArray.length; i++) {
            text += vendorDisplay(vendorArray[i]['VendorID'],
                                vendorArray[i]['Vendor_Name'],
                                vendorArray[i]['Address'],
                                vendorArray[i]['Open_Time'],
                                vendorArray[i]['Close_Time'],
                                vendorArray[i]['Quality'],
                                vendorArray[i]['Service'],
                                vendorArray[i]['Pricing'],
                                vendorArray[i]['Space'],
                                vendorArray[i]['Image']
                                );
        }
    document.getElementById("vendorresult").innerHTML += text;
}

// Display a vendor on 1 row of table
function vendorDisplay(vendorid, vendorname, address, opentime, closetime, quality, service, pricing, space, image) {
    var text = '<tr>';
    text += '<td>' + vendorid + '</td>';
    text += '<td><a href="#' + vendorname +'" class="vendorclick" onclick="clickVendor(this.innerHTML)">' + vendorname + '</a></td>';
    text += '<td>' + address + '</td>';
    text += '<td>' + opentime + '</td>';
    text += '<td>' + closetime + '</td>';
    text += '<td>' + quality + '</td>';
    text += '<td>' + service + '</td>';
    text += '<td>' + pricing + '</td>';
    text += '<td>' + space + '</td>';
    text += '<td><img face" width="200" height="200" src="' + image + '"></td>';
    text += '<td><button id="del' + vendorid + '"onclick=deleteVendor(this.id.substr(3,this.id.length-3))>Delete</button></td>'
    text += '</tr>';
    return text;
}

// Delete a vendor
function deleteVendor(id){
    var choice = confirm("Do you sure want to delete this vendor? ID = " + id);
    if(choice === true){
        var deleteRequest = new XMLHttpRequest();
        var str = window.location.href;
        deleteRequest.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                if(this.responseText === "true"){
                    alert('Delete Successfully');
                    vendorSearch();
                }
                if(this.responseText === "false"){
                    alert('Delete Unsuccessfully');
                }
                
            }
        };
    deleteRequest.open("GET","adminPage.php?deletevendor=" + id, true);
    deleteRequest.send();
    }
}

// Navigate when click on a food name
function clickFood(dishname) {
    var dishResult = new XMLHttpRequest();
    dishResult.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            if(this.responseText === "Nothing"){
                document.getElementById("dishresult").innerHTML = "<tr><th>DishID</th><th>Food Name</th><th>Vendor Name</th><th>Price</th><th>Image</th></tr></tr><tr>No result</tr>";
            }
            else{
                fetchDish(this.responseText,2);
                document.getElementById("foodresult").innerHTML = "";
            }  
        }
    };
    dishResult.open("GET", "adminPage.php?dishname=" + dishname, true);
    dishResult.send();
}

// Navigate when click on a vendor name
function clickVendor(dishwhere) {
    var dishResult = new XMLHttpRequest();
    dishResult.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            if(this.responseText === "Nothing"){
                document.getElementById("dishresult").innerHTML = "<tr><th>DishID</th><th>Food Name</th><th>Vendor Name</th><th>Price</th><th>Image</th></tr><tr>No result</tr>";
            }
            else{
                fetchDish(this.responseText,1);
                document.getElementById("vendorresult").innerHTML = "";
            }
        }
    };
    dishResult.open("GET", "adminPage.php?dishwhere=" + dishwhere, true);
    dishResult.send();
}

// Display dish table
// mode = 1 click on vendor
// mode = 2 click on food
function fetchDish(response, mode) {
    var dishArray = JSON.parse(response);
    var text = "";
    document.getElementById("dishresult").innerHTML = "<tr><th>DishID</th><th>Food Name</th><th>Vendor Name</th><th>Price</th><th>Image</th></tr>";
    for (i = 0; i < dishArray.length; i++) {
            text += dishDisplay(
                                dishArray[i]['DishID'],
                                dishArray[i]['Food_Name'],
                                dishArray[i]['Vendor_Name'],
                                dishArray[i]['Price'],
                                dishArray[i]['Image'],
                                mode
                                );
        }
    document.getElementById("dishresult").innerHTML += text;
}

// Display a dish on 1 row of table
// mode = 1 click on vendor
// mode = 2 click on food
function dishDisplay(dishid,foodname,vendorname,price,image, mode) {
    var text = '<tr>';
    text += '<td>' + dishid + '</td>';
    text += '<td><a href="#' + foodname +'" class="foodclick" onclick="clickFood(this.innerHTML)">' + foodname + '</a></td>';
    text += '<td><a href="#' + vendorname +'" class="vendorclick" onclick="clickVendor(this.innerHTML)">' + vendorname + '</a></td>';
    text += '<td>' + price + '</td>'
    text += '<td><img face" width="200" height="200" src="' + image + '"></td>';
    text += '<td><button id="del' + dishid + '"onclick=deleteDish(this.id.substr(3,this.id.length-3),' + mode +')>Delete</button></td>'
    text += '<td><button id="edi' + dishid + '"onclick=editDish(this.id.substr(3,this.id.length-3),' + mode +')>Edit price</button></td>'
    text += '</tr>';
    return text;
}

// Delete dish in database
// mode = 1 click on vendor
// mode = 2 click on food
function deleteDish(dishid, mode){
    var choice = confirm("Do you sure want to delete this dish? ID = " + dishid);
    if(choice === true){
        var deleteDish = new XMLHttpRequest();
        var str = window.location.href;
        deleteDish.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                if(this.responseText === "true"){
                    alert('Delete Successfully');
                    if(mode === 1)clickVendor(str.substr(51,str.length-51));
                    if(mode === 2)clickFood(str.substr(51,str.length-51));
                }
                if(this.responseText === "false"){
                    alert('Delete Unsuccessfully');
                }
                
            }
        };
    deleteDish.open("GET","adminPage.php?deletedish=" + dishid, true);
    deleteDish.send();
    }
}

// Edit dish in database
// mode = 1 click on vendor
// mode = 2 click on food
function editDish(dishid, mode){
    var editDish = new XMLHttpRequest();
    var str = window.location.href;
    var pr = prompt("Change the price of dish ID  " + dishid);
    if(pr !== null){
        var price = parseInt(pr);
        if(!isNaN(price) && price !== 0){
            editDish.onreadystatechange = function () {
                if (this.readyState === 4 && this.status === 200) {
                    if(this.responseText === "true"){
                        alert('Edit Successfully');   
                        if(mode === 1)clickVendor(str.substr(51,str.length-51));
                        if(mode === 2)clickFood(str.substr(51,str.length-51));
                    }
                    if(this.responseText === "false"){
                        alert('Edit Unsuccessfully');
                    }
                    
                }
            };
            editDish.open("GET","adminPage.php?editdish=" + dishid +"&editprice=" + price, true);
            editDish.send();
        }
        else alert("Not an invalid number");
    }
}

// Check if a food exist in database
function checkFood() {  
    var check = new XMLHttpRequest();
    check.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            if(this.responseText === "not"){
                document.getElementById("addfoodsubmit").disabled = false;
            }
            if(this.responseText === "exist"){
                document.getElementById("addfoodsubmit").disabled = true;
            }
        }
    };
    check.open("GET", "adminPage.php?checkfood=" + document.getElementById("addfoodname").value, true);
    check.send();
}

// Add a food to database
function addFood(){
    var add = new XMLHttpRequest();
    add.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            alert(this.responseText);
            document.getElementById("addfoodname").value = '';
            document.getElementById("addfoodtype").value = '';
            document.getElementById("addfoodcourse").value = '';
            document.getElementById("addfooddescription").value = '';
            document.getElementById("addfoodimage").value = '';
        }
    };
    add.open("GET", "adminPage.php?addfoodname=" + document.getElementById("addfoodname").value
                                 + "&addfoodtype=" + document.getElementById("addfoodtype").value
                                 + "&addfoodcourse=" + document.getElementById("addfoodcourse").value
                                 + "&addfooddescription=" + document.getElementById("addfooddescription").value
                                 + "&addfoodimage=" + document.getElementById("addfoodimage").value, true);
    add.send();
}

// Check if a vendor exist in database
function checkVendor() {  
    var check = new XMLHttpRequest();
    check.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            if(this.responseText === "not"){
                document.getElementById("addvendorsubmit").disabled = false;
            }
            if(this.responseText === "exist"){
                document.getElementById("addvendorsubmit").disabled = true;
            }
        }
    };
    check.open("GET", "adminPage.php?checkvendorname=" + document.getElementById("addvendorname").value + "&checkvendoraddress=" + document.getElementById("addvendoraddress").value, true);
    check.send();
}

// Add a vendor to database
function addVendor(){
    var add = new XMLHttpRequest();
    add.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            alert(this.responseText);
            document.getElementById("addvendorname").value = '';
            document.getElementById("addvendoraddress").value = '';
            document.getElementById("addvendoropen").value = '';
            document.getElementById("addvendorclose").value = '';
            document.getElementById("addvendorimage").value = '';
        }
    };
    add.open("GET", "adminPage.php?addvendorname=" + document.getElementById("addvendorname").value
                                 + "&addvendoraddress=" + document.getElementById("addvendoraddress").value
                                 + "&addvendoropen=" + document.getElementById("addvendoropen").value
                                 + "&addvendorclose=" + document.getElementById("addvendorclose").value
                                 + "&addvendorimage=" + document.getElementById("addvendorimage").value, true);
    add.send();
}



function editAccount(password, phone, address, firstname, lastname, birthday, userid){
    //Modal dialogue
// Get the modal
    var modal = document.getElementById('myModal');

// Get the button that opens the modal
// var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];
    document.getElementById("idedit").innerHTML = userid;
    document.getElementById("passwordedit").value = password;
    document.getElementById("phoneedit").value = phone;
    document.getElementById("addressedit").value = address;
    document.getElementById("fnameedit").value = firstname;
    document.getElementById("lnameedit").value = lastname;
    document.getElementById("birthdayedit").value = birthday;
// When the user clicks the button, open the modal 
    // btn.onclick = function() {
    //     modal.style.display = "block";
    // }
    modal.style.display = "block";
// When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal.style.display = "none";
    }
}

//Save account
function saveAccount(){
    var result = new XMLHttpRequest();
    // var modal = document.getElementById('myModal');
    result.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            if(this.responseText === "true"){
                alert('Edit Successfully');
                document.getElementById('myModal').style.display = "none";  
                accountSearch();
            }
            if(this.responseText === "false"){
                alert('Edit Unsuccessfully');
            }
            
        }
    };
    
    // modal.style.display = "none";
    // accountSearch();
    var i1 = document.getElementById("passwordedit").value;
    var i2 = document.getElementById("phoneedit").value;
    var i3 = document.getElementById("addressedit").value;
    var i4 = document.getElementById("fnameedit").value;
    var i5 = document.getElementById("lnameedit").value;
    var i6 = document.getElementById("birthdayedit").value;
    var i7 = document.getElementById("idedit").innerHTML;
    // alert(i1+"\n"+i2+"\n"+i3+"\n"+i4+"\n"+i5+"\n"+i6+"\n"+i7);
    if(i2 === ''){
        alert('Please input password');
        return;
    }
    if(i4 === ''){
        alert('Please input first name');
        return;
    }
    if(i5 === ''){
        alert('Please input last name');
        return;
    }
    if(i6 === ''){
        alert('Please input birthday');
        return;
    }

    result.open("GET", "adminPage.php?passwordedit=" + i1 
                                    + "&phoneedit=" + i2 
                                    + "&addressedit=" + i3 
                                    + "&fnameedit=" + i4 
                                    + "&lnameedit=" + i5 
                                    + "&birthdayedit=" + i6 
                                    + "&idedit=" + i7, true);
    result.send();
}