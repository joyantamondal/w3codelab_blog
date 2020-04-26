<?php 
include "../lib/session.php"; 
session::checkSession();
 include "../config/config.php"; 
 include "../lib/Database.php"; 
 include "../helpers/Format.php"; 
   $db = new Database();
   $fm = new Format();

  header("Cache-Control: no-cache, must-revalidate"); 
  header("Pragma: no-cache"); 
  header("Expires: Sat, 26 Jul 1997 05:00:00 GMT"); 
  header("Cache-Control: max-age=2592000"); 



if($_SERVER['REQUEST_METHOD'] == 'POST'){

	$postId =$_GET['updatepostid'];
	$title  =   mysqli_real_escape_string($db->link, $_POST['title']);
	 $cat    =   mysqli_real_escape_string($db->link, $_POST['cat']);
	 $body   =   mysqli_real_escape_string($db->link, $_POST['body']);
	 $tags   =   mysqli_real_escape_string($db->link, $_POST['tags']);
	 $author =   mysqli_real_escape_string($db->link, $_POST['author']);
	$permited  = array('jpg', 'jpeg', 'png', 'gif');
	 $file_name = $_FILES['image']['name'];
	$file_size = $_FILES['image']['size'];
	$file_temp = $_FILES['image']['tmp_name'];
	$div = explode('.', $file_name);
	$file_ext = strtolower(end($div));
	$unique_image = substr(md5(time()), 0, 10).'.'.$file_ext;
	$uploaded_image = "upload/".$unique_image;




    if(empty($title) || empty($cat)|| empty($body) || empty($tags) || empty($author)){
                 echo "<span class='error'>Field Must Not Be Empty!!!</span>";
                 	exit();
             }else{
             if (!empty($file_name)) {    
		             if ($file_size > 1048567) {
		             echo "<span class='error'>Image Size should be less then 1MB! </span>";

		         }elseif (in_array($file_ext, $permited) === false) {
		             echo "<span class='error'>You can upload only:-" .implode(', ', $permited)."</span>";
	             }else{
	                 move_uploaded_file($file_temp, $uploaded_image);
	                 $query = "UPDATE tbl_post SET cat = '$cat', title = '$title', body = '$body', image = '$uploaded_image', tags = '$tags', author = '$author' WHERE id='$postId' ";
	                 $updated_row = $db->update($query);
	                 if ($updated_row) {
	                  echo "<span class='success'>Post Updated Successfully...</span>";
						header("Location: postlist.php?updated=Successfully");
						exit();
	                 }
	                 else {
	                 echo "<span class='error'>Post Not Updated !</span>";
						header("Location: postlist.php?updated=error");
						exit();
	                }
	            }
        }
        else{

            $query = "UPDATE tbl_post SET cat = '$cat', title = '$title', body = '$body', tags = '$tags', author = '$author' WHERE id='$postid'";
                 $updated_row = $db->update($query);
                 if ($updated_row) {
                  echo "<span class='success'>Post Updated Successfully...</span>";
                 }
                 else {
                 echo "<span class='error'>Post Not Updated !</span>";
                }
            }


        
          }// empty statement

            
}// Request

