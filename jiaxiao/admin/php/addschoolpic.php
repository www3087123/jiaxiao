<?php
require("../configs/conn.php");  
require("../configs/loadpic.php");
$pic=pics($_FILES["newbanner"],"school/");
$type=$_POST["type"];
$sql="insert into schoolpics values(null,'".$pic."',".$type.")";
mysql_query($sql,$conn);
mysql_close($conn);
header("location:../schoolpic.html");
?>