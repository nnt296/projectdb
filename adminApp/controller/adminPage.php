<?php
ob_start();
require_once ("connectdb.php");

// Get all food by food name
if (isset($_GET['foodname']) && isset($_GET['foodcourse']) ){
    $foodname = mysqli_real_escape_string($conn, $_GET['foodname']);
    $foodcourse = mysqli_real_escape_string($conn, $_GET['foodcourse']);
    $query = 'SELECT * FROM food WHERE Food_Name LIKE "%'. $foodname .'%" AND Course LIKE "%'. $foodcourse .'%"';
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    $count = mysqli_num_rows($result);

    if ($count > 0){
        $json = [];
        while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
            array_push($json,$row);
        }
        $json = json_encode($json);
        header('Content-Type: application/json');
        echo $json;
    }
    else{
    	echo "Nothing";
    }
}

// Get a dish by dishname = food name
if(isset($_GET['dishname'])){
	$dishname = mysqli_real_escape_string($conn, $_GET['dishname']);
    $query = 'SELECT d.DishID, f.Food_Name, v.Vendor_Name, d.Price,v.Image, v.Address, v.Quality FROM dish d, vendor v, food f WHERE Food_Name = "'. $dishname .'" AND d.FoodID = f.FoodID AND v.VendorID = d.VendorID';
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    $count = mysqli_num_rows($result);

    if ($count > 0){
        $json = [];
        while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
            array_push($json,$row);
        }
        $json = json_encode($json);
        header('Content-Type: application/json');
        echo $json;
    }
    else{
    	echo "Nothing";
    }
}

// Get a dish by dishwhere = vendor name
if(isset($_GET['dishwhere'])){
    $dishwhere = mysqli_real_escape_string($conn, $_GET['dishwhere']);
    $query = 'SELECT d.DishID, f.Food_Name, v.Vendor_Name, d.Price,f.Image, f.Description FROM dish d, vendor v, food f WHERE Vendor_Name = "'. $dishwhere .'" AND d.FoodID = f.FoodID AND v.VendorID = d.VendorID';
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    $count = mysqli_num_rows($result);

    if ($count > 0){
        $json = [];
        while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
            array_push($json,$row);
        }
        $json = json_encode($json);
        header('Content-Type: application/json');
        echo $json;
    }
    else{
        echo "Nothing";
    }
}

// Delete a dish by its id
if(isset($_GET['deletedish'])){
    $dishid = $_GET['deletedish'];
    $query = 'DELETE FROM dish WHERE DishID ='.$dishid;
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    if($result === true)echo "true";
    if($result === false)echo "false";
}

// Edit a dish price by its id and input price
if(isset($_GET['editdish']) && isset($_GET['editprice']) ){
    $dishid = $_GET['editdish'];
    $price = $_GET['editprice'];
    $query = 'UPDATE dish SET Price = "'. $price .'"WHERE DishID ='.$dishid;
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    if($result === true)echo "true";
    if($result === false)echo "false";
}

// Get all vendor by vendor name
if (isset($_GET['vendorname']) && isset($_GET['vendoraddress']) ){
    $vendorname = mysqli_real_escape_string($conn, $_GET['vendorname']);
    $vendoraddress = mysqli_real_escape_string($conn, $_GET['vendoraddress']);
    $query = 'SELECT * FROM vendor WHERE Vendor_Name LIKE "%'. $vendorname .'%" AND Address LIKE "%'. $vendoraddress .'%"';
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    $count = mysqli_num_rows($result);
    if ($count > 0){
        $json = [];
        while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
            array_push($json,$row);
        }
        $json = json_encode($json);
        header('Content-Type: application/json');
        echo $json;
    }
    else{
        echo "Nothing";
    }
}

// Check if a food exists in database
if (isset($_GET['checkfood']) ){
    $checkfood = mysqli_real_escape_string($conn, $_GET['checkfood']);
    $query = 'SELECT * FROM food WHERE Food_Name = "'. $checkfood .'"';
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    $count = mysqli_num_rows($result);
    if($count > 0) echo "exist";
    else echo "not";
}

// Add a new food
if (isset($_GET['addfoodname']) && isset($_GET['addfoodtype']) && isset($_GET['addfoodcourse']) && isset($_GET['addfooddescription']) && isset($_GET['addfoodimage'])){
    $query = 'INSERT INTO food (Food_Name, Type, Course, Description, Image) VALUES ("'.$_GET['addfoodname'].'","'.$_GET['addfoodtype'].'","'.$_GET['addfoodcourse'].'","'.$_GET['addfooddescription'].'","'.$_GET['addfoodimage'].'")';
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    if($result == true)echo "Add successfully";
    if($result == false)echo "Add unsuccessfully";
}

// Check if a vendor exists in database
if (isset($_GET['checkvendorname']) && isset($_GET['checkvendoraddress']) ){
    $checkvendorname = mysqli_real_escape_string($conn, $_GET['checkvendorname']);
    $checkvendoraddress = mysqli_real_escape_string($conn, $_GET['checkvendoraddress']);
    $query = 'SELECT * FROM vendor WHERE Vendor_Name = "'. $checkvendorname .'" AND Address = "'. $checkvendoraddress .'"';
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    $count = mysqli_num_rows($result);
    if($count > 0) echo "exist";
    else echo "not";
}

// Add a new vendor
if (isset($_GET['addvendorname']) && isset($_GET['addvendoraddress']) && isset($_GET['addvendoropen']) && isset($_GET['addvendorclose']) && isset($_GET['addvendorimage'])){
    $query = 'INSERT INTO vendor (Vendor_Name, Address, Open_Time, Close_Time, Image) VALUES ("'.$_GET['addvendorname'].'","'.$_GET['addvendoraddress'].'","'.$_GET['addvendoropen'].'","'.$_GET['addvendorclose'].'","'.$_GET['addvendorimage'].'")';
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    if($result == true)echo "Add successfully";
    if($result == false)echo "Add unsuccessfully";
}

// Get all account
if (isset($_GET['emailsearch']) && isset($_GET['usernamesearch']) && isset($_GET['phonesearch']) ){
    $email = mysqli_real_escape_string($conn, $_GET['emailsearch']);
    $name = mysqli_real_escape_string($conn, $_GET['usernamesearch']);
    $phone = mysqli_real_escape_string($conn, $_GET['phonesearch']);
    $query = 'SELECT UserID, Email, Password, Phone, Address, First_Name, Last_Name, Birthday FROM account WHERE Email LIKE "%'. $email .'%" AND (Phone LIKE "%'. $phone .'%" OR Phone IS NULL) AND (First_Name LIKE "%'. $name .'%" OR Last_Name LIKE "%'. $name .'%" )';
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    $count = mysqli_num_rows($result);

    if ($count > 0){
        $json = [];
        while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
            array_push($json,$row);
        }
        $json = json_encode($json);
        header('Content-Type: application/json');
        echo $json;
    }
    else{
        echo "Nothing";
    }
}

// Delete an account by its id
if(isset($_GET['deleteaccount'])){
    $id = $_GET['deleteaccount'];
    $query = 'DELETE FROM account WHERE UserID ='.$id;
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    if($result === true)echo "true";
    if($result === false)echo "false";
}

// Delete a food by its id
if(isset($_GET['deletefood'])){
    $id = $_GET['deletefood'];
    $query = 'DELETE FROM food WHERE FoodID ='.$id;
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    if($result === true)echo "true";
    if($result === false)echo "false";
}

// Delete a vendor by its id
if(isset($_GET['deletevendor'])){
    $id = $_GET['deletevendor'];
    $query = 'DELETE FROM vendor WHERE VendorID ='.$id;
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    if($result === true)echo "true";
    if($result === false)echo "false";
}

// Get detail of an account
if(isset($_GET['accountemail'])){
    $name = mysqli_real_escape_string($conn, $_GET['accountemail']);
    $query = 'SELECT t.TransID, f.Food_Name, v.Vendor_Name, t.Quantity, t.Total, t.Date FROM transaction t, account a, food f, dish d, vendor v WHERE t.UserID = a.UserID  AND a.Email = "'.$name.'" AND d.DishID = t.DishID AND f.FoodID = d.FoodID AND v.VendorID = d.VendorID';
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    $count = mysqli_num_rows($result);

    if ($count > 0){
        $json = [];
        while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
            array_push($json,$row);
        }
        $json = json_encode($json);
        header('Content-Type: application/json');
        echo $json;
    }
    else{
        echo "Nothing";
    }
}

// Delete a transaction by its id
if(isset($_GET['deletetransaction'])){
    $id = $_GET['deletetransaction'];
    $query = 'DELETE FROM transaction WHERE TransID ='.$id;
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    if($result === true)echo "true";
    if($result === false)echo "false";
}

// Edit an account
if(isset($_GET['passwordedit']) && isset($_GET['phoneedit']) && isset($_GET['addressedit']) && isset($_GET['fnameedit']) && isset($_GET['lnameedit']) && isset($_GET['birthdayedit']) && isset($_GET['idedit']) ){
    $password = $_GET['passwordedit'];
    $phone = $_GET['phoneedit'];
    $address = $_GET['addressedit'];
    $fname = $_GET['fnameedit'];
    $lname = $_GET['lnameedit'];
    $dob = $_GET['birthdayedit'];
    $id = $_GET['idedit'];
    $query = 'UPDATE account SET Password =\''.$password.'\', Phone =\''.$phone.'\', Address =\''.$address.'\', First_Name =\''.$fname.'\', Last_Name =\''.$lname.'\', Birthday =\''.$dob.'\' WHERE UserID =\''. $id.'\'';
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    if($result === true)echo "true";
    if($result === false)echo "false";
    // echo($password."\n".$phone."\n".$address."\n".$fname."\n".$lname."\n".$dob."\n".$id);
}

// Add dish
if(isset($_GET['addfoodid']) && isset($_GET['addvendorid']) && isset($_GET['addprice']) ){
    $id1 = $_GET['addfoodid'];
    $id2 = $_GET['addvendorid'];
    $price = $_GET['addprice'];
    $query = 'INSERT INTO dish(FoodID, VendorID, Price) VALUES ('.$id1.','.$id2.','.$price.')';
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    if($result === true)echo "true";
    if($result === false)echo "false";
}

mysqli_close($conn);
ob_end_flush();
?>
