<?php
require("../configs/conn.php");  
require("../configs/loadpic.php");
$pic=pics($_FILES["newbanner"],"coaches/");
$name=$_POST["names"];
$start=$_POST["start"];
$end=$_POST["end"];
$type=$_POST["types"];
$honor=$_POST["honor"];
$eval=$_POST["evaluate"];
$sql="insert into coaches values(null,'$name','$start','$end','$type','$honor',$eval,'$pic')";
mysql_query($sql,$conn);
mysql_close($conn);
header("location:../coach.html");
?>