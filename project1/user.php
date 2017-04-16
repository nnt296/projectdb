<?php
  ob_start();
  session_start();
?>

<!DOCTYPE html>
<!-- saved from url=(0043)http://getbootstrap.com/examples/jumbotron/ -->
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- <link rel="icon" href="http://getbootstrap.com/favicon.ico"> -->
    <link rel="icon" href="icon.jpg">

    <title>Doge</title>
    <link rel="stylesheet" type="text/css" href="./bootstrap/css/bootstrap.min.css">
    <link href="./template_files/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link href="./template_files/jumbotron.css" rel="stylesheet">
    <script src="./template_files/ie-emulation-modes-warning.js"></script>
    <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: white;
      height: 100%;
    }
    .rightcontainer{
      background-color: white;
      height: 500px;
      overflow-y: auto;
    }
    .ppicture{
      background-color: black;
      height: 250px;
      width:  200px;
    }
    .heading{
      
    }
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
  </style>
  </head>

  <body background="fruit.jpg">

    <nav class="navbar navbar-inverse navbar-fixed-top navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">DOGE</a>
          <!-- <a class="navbar-brand" href="index.php"><img src="doge.jpg"></a> -->
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="index.php">Home Page</a></li>
            <li><a href="#">Food Set</a></li>
            <li class="dropdown active">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span id="usermail"></span> <span class="caret"></span></a> 
              <ul class="dropdown-menu">
                <li><a>View profile</a></li>
                <li><a href="logout.php">Logout</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>
    
    <div style="height: 30px;"></div>  

    <div class="container">
        
        <div class="row content">
          <div class="col-sm-12 heading"><h1>Sample text</h1></div>
          <div class="col-sm-3 sidenav"  style="border-right: 1px solid;">
              <ul class="nav nav-pills nav-stacked">
                <li><a href="user.php?acc=buyer"><span class="glyphicon glyphicon-user"></span> Your profile</a></li>
                <li><a href="user.php?acc=edit"><span class="glyphicon glyphicon-edit"></span> Edit profile</a></li>
                <li><a href="user.php?acc=history"><span class="glyphicon glyphicon-bookmark"></span> Purchase history</a></li>
                <li><a href="user.php?acc=order"><span class="glyphicon glyphicon-cutlery"></span> Order Food</a></li>
              </ul>
          </div>
          <div class="col-sm-9 rightcontainer">
              <div id="wheretoshow">
                 
              </div>
          </div>
        </div>
    <script src="./template_files/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="./template_files/bootstrap.min.js"></script>
    <script src="./template_files/ie10-viewport-bug-workaround.js"></script>
    
</body>
</html>


<?php
  if (isset($_GET['acc'])){
    if (isset($_SESSION['login_user'])) {
      $usermail = sprintf('<script type="text/javascript">
      document.getElementById("usermail").innerHTML = \'%s\';</script>',
      $_SESSION['login_user']);
      echo $usermail;
    }
    if ($_GET['acc'] == 'buyer'){
      if (isset($_SESSION['login_user'])){
        $email = $_SESSION['login_user'];
        require_once('connectdb.php');
        mysqli_select_db($conn,'user');
        $query = sprintf("SELECT First_Name,Middle_and_Last_Name,Phone,Address,date(Birthdate) FROM account WHERE Email='%s'",$email);
        $result = mysqli_query($conn,$query);
        $count = mysqli_num_rows($result);
        if ($count != 1){
          die("Database problem!");
        }
        $row = mysqli_fetch_array($result);
        $fname = $row[0];
        $lname = $row[1];
        $phone = $row[2];
        $addr  = $row[3];
        $birth = $row[4];
        $name = $fname .' '. $lname;

        $insert = sprintf('<script type="text/javascript">document.getElementById("wheretoshow").innerHTML = \'<div class="col-sm-4 ppicture"></div><div class="col-sm-1"></div><div class="col-sm-6 pproperties" id="pproperties"><h1>%s</h1><small><cite>%s </cite> <i class="glyphicon glyphicon-map-marker"></i></small><br><br><p style="font-size: 120%;"><i class="glyphicon glyphicon-envelope"> %s </i> <br><i class="glyphicon glyphicon-gift"> %s </i> <br><i class="glyphicon glyphicon-phone"> %s </i> <br></p></div>\';</script>', 
          $name, 
          $addr, 
          'this?', 
          $email, 
          $birth, 
          $phone);
        echo $insert;
      }
    }
    if ($_GET['acc'] == 'edit'){

    }
    if ($_GET['acc'] == 'history'){
      $email = $_SESSION['login_user'];
      require_once('connectdb.php');
      mysqli_select_db($conn,'user');
      $query = sprintf("SELECT Email,food,dayorder FROM account WHERE Email='%s'",$email);
      $result = mysqli_query($conn,$query);
      $count = mysqli_num_rows($result);
      if ($count != 1){
        die("Database problem!");
      }
      $table = '<script type="text/javascript">
      document.getElementById("wheretoshow").innerHTML = \'<table class="table table-striped" id="historytable"></table>\';</script>';
      echo $table;

      while ($row = mysqli_fetch_array($result)){
        $insert = sprintf('<script type="text/javascript">
      document.getElementById("historytable").innerHTML = \'<tr><th>%s</th><th>%s</th></tr>\';</script>',$row[0],$row[1]);
        echo $insert;
      }
    }
  }
  ob_end_flush();
?>