<?php
include("database.php");

if(isset($_POST['but_upload'])){
 
  $Category_picture = $_FILES['Category_picture']['Category_picture'];
  $target_dir = "Category_picture/";
  $target_file = $target_dir . basename($_FILES["Category_picture"]["Category_picture"]);

  // Select file type
  $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

  // Valid file extensions
  $extensions_arr = array("jpg","jpeg","png","gif");

  // Check extension
  if( in_array($imageFileType,$extensions_arr) ){
 
    // Convert to base64 
    $Category_picture_base64 = base64_encode(file_get_contents($_FILES['Category_picture']['tmp_name']) );
    $Category_picture = 'data:image/'.$imageFileType.';base64,'.$Category_picture_base64;
    // Insert record
    $query = "insert into Category_master (Category_picture) values('".$Category_picture."')";
    mysqli_query($con,$query);
  
    // Upload file
    move_uploaded_file($_FILES['Category_picture']['tmp_name'],$target_dir.$name);
  }
 
}
?>

<form method="post" action="" enctype='multipart/form-data'>
  <input type='file' name='Category_picture' />
  <input type='submit' value='Save name' name='but_upload'>
</form>
