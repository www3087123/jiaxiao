<?php
require("../configs/conn.php");  
require("../configs/loadpic.php");
$pic=pics($_FILES["newbanner"],"banner/");
$oldp=$_POST["oldpath"];
$id=$_POST["oldid"];
$sql="update banner set path_banner='".$pic."' where id_banner=".$id;
mysql_query($sql,$conn);
unlink("../../".$oldp);
mysql_close($conn);
header("location:../banner.html");
?>