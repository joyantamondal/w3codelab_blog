<?php 
include "../lib/session.php"; 
session::init();
?>
<?php include "../config/config.php"; ?>
<?php include "../lib/Database.php"; ?>
<?php include "../helpers/Format.php"; ?>
<?php  
   $db = new Database();
   $fm = new Format();
?>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/stylelogin.css" media="screen" />
</head>
<body>
<div class="container">
	<section id="content">
		<?php
          if($_SERVER['REQUEST_METHOD']=='POST'){
           $username =$fm->validation($_POST['username']);
           $password =$fm->validation(sha1($_POST['password']));
           $username =mysqli_real_escape_string($db->link,$username);
           $password =mysqli_real_escape_string($db->link,$password);
           $loginQuery="SELECT * FROM tbl_user WHERE username='$username' AND password='$password'";
           $loginResult=$db->select($loginQuery);
           if($loginResult!=false){
           	$value = mysqli_fetch_array($loginResult);
           	$row   = mysqli_num_rows($loginResult);
           	if($row>0){
              session::set("login",true);
              session::set("username",$value['username']);
              session::set("userid",$value['id']);
              header("Location:index.php");
           	}
           	else{
              echo "<span style='color:red;font-size:18px;'>No Result Found!!!</span>";
           	}
           }
           else{
           	echo "<span style='color:red;font-size:18px;'>Username or Password Not Matched!!!</span>";
           }
          }
		?>
		<form action="login.php" method="post">
			<h1>Admin Login</h1>
			<div>
				<input type="text" placeholder="Username" required="" name="username"/>
			</div>
			<div>
				<input type="password" placeholder="Password" required="" name="password"/>
			</div>
			<div>
				<input type="submit" value="Log in" />
			</div>
		</form><!-- form -->
		<div class="button">
			<a href="#">W3CodeLab Blog</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
</html>