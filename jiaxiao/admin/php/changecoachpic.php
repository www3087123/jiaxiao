<?php
require("../configs/conn.php");  
require("../configs/loadpic.php");
$pic=pics($_FILES["newbanner"],"coaches/");
$oldp=$_POST["oldpath"];
$id=$_POST["oldid"];
$sql="update coaches set path_coach='".$pic."' where id_coach=".$id;
mysql_query($sql,$conn);
unlink("../../".$oldp);
mysql_close($conn);
header("location:../coach.html");
?>