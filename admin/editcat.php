<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
<?php 
if(!isset($_GET['editcat']) || $_GET['editcat'] == NULL){
    // javascript redirect system
    echo "<script>window.location='catlist.php';</script>";
   // PHP Redirect System
    // header("Location:catlist.php");
}
else
{
    $post = $_GET['editcat'];
}
?>

        <div class="grid_10">
		
            <div class="box round first grid">
                <h2>Update Category</h2>
               <div class="block copyblock"> 
                <?php
                    if($_SERVER['REQUEST_METHOD'] == 'POST'){
                    $name = $_POST['name'];
                    $name = mysqli_real_escape_string($db->link, $name); 
                    if (empty($name)) {
                    echo "<span class='error'>Field Must Not Be Empty!!!</span>";
                     }
                     else{
                        $queryUpdateCat = "UPDATE tbl_category SET name='$name' WHERE id='$catid'";
                        $catUpdatet = $db->update($queryUpdateCat);
                        if (!$catUpdatet=!$name) {
                            echo "<span class='success'>Category Updated Successfully...</span>";
                        }
                        else{
                            echo "<span class='error'>Category Not Updated!!!</span>";
                        }
                     }
                    }
                ?> 

            <?php 
            $query = "SELECT * FROM tbl_category WHERE id = '$catid' order by id desc";
            $category = $db->select($query);
            while ($result = $category->fetch_assoc()) {

           
             ?>
                 <form action="" method="post">
                    <table class="form">					
                        <tr>
                            <td>
                                <input type="text" name="name" value="<?php echo $result['name'] ?>" class="medium" />
                            </td>
                        </tr>
						<tr> 
                            <td>
                                <input type="submit" name="submit" Value="Update" />
                            </td>
                        </tr>
                    </table>
                    </form>
            <?php  } ?>

                </div>
            </div>
        </div>
<?php include "inc/footer.php"; ?>       