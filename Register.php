<?php 
include("database.php");

session_start();//session starts here

?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Login - Vali Admin</title>
	<style>
	body, html {
  height: 100%;
}

.bg {

  background-image: url("images/login.jpg");

 background-image: url('images/login.jpg');"
  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}</style>
  </head>
  <body class="bg"> 
    
    <section class="login-content">
      <div class="logo" style="color:gold;">
        <h1>Avinash Case Study Circle</h1>
      </div>
      <div class="login-box" style="min-height:480px; margin-top:-30px;">
       
		

		
		<form class="login-form" method="post" style="min-height:500px; margin-top:-30px;">
		
 
          <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>Register User</h3>
          <div class="form-group">
            
            <input class="form-control" type="text" name="username" name="username" placeholder="username" autofocus>
          </div>
		   <div class="form-group">
          
            <input class="form-control" type="password" name="password" placeholder="password" autofocus>
          </div>
          <div class="form-group">
            
<input class="form-control" type="email" name="email" placeholder="Email" autofocus>
          </div>
		  
		  
		   <div class="form-group">
          
            <input class="form-control" type="number" name="mobile" placeholder="Mobile Number" autofocus>
          </div>
          <div class="form-group">
            
            <input class="form-control" type="date" name="dob" name="dob"placeholder="Date Of Birth">
          </div>
         
		 
		   <div class="form-group">
          
            <input class="form-control" type="text" name="address" placeholder="Address" autofocus>
          </div>
          
		 
		 
          <div class="form-group btn-container">
            <input type="submit" name="insert" value="Register" class="btn btn-primary btn-block"><i class="fa fa-sign-in fa-lg fa-fw">
			  <p class="semibold-text mb-2"><a href="index.php" >Login</a></p>
          </div>
        </form>
		
		
		 
      </div>
    </section>
    <!-- Essential javascripts for application to work-->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="js/plugins/pace.min.js"></script>
    <script type="text/javascript">
      // Login Page Flipbox control
      $('.login-content [data-toggle="flip"]').click(function() {
      	$('.login-box').toggleClass('flipped');
      	return false;
      });
    </script>
  </body>
</html>



<?php

// php code to Insert data into mysql database from input text
if(isset($_POST['insert']))
{
    
    // get values form input text and number

    $username = $_POST['username'];
    $password = $_POST['password'];
	$mobile = $_POST['mobile'];
    $address = $_POST['address'];
	$dob = $_POST['dob'];
    $email=$_POST['email'];


	//`username`, `password`, `email`, `mobile`, `dob`, `address`
    
        // connect to mysql database using mysqli


    
	

$duplicate=mysqli_query($conn,"select * from user where username='$email' or password='$password'");
if (mysqli_num_rows($duplicate)>0)
{
	
	echo '<script type="text/javascript">alert("That user is already exits !!Try another email");
        history.back();</script>';


}
else{

	 $query="INSERT INTO `user`(`username`, `password`,`email`, `mobile`, `dob`, `address` )VALUES ('$username','$password' ,'$email','$mobile','$dob','$address')";

    
	
    //$query = "INSERT INTO `user`(`username`, `password`,`email`,`mobile`,`dob`,`address`) VALUES ('$username','$password' , '$email','$dob','$address')";
    
    $result = mysqli_query($conn,$query);
    
    // check if mysql query successful

    if($result)
    {    
               echo"insert data successful";	
    }
    
    else{
        echo 'Data Not Inserted';
    }
	
}
	
	
    // connect to mysql database using mysqli

    
    // mysql query to insert data

     mysqli_close($connect);
}

?>
