<?php
require("../configs/conn.php");  
$id=$_POST["id"];
$name=$_POST["names"];
$start=$_POST["start"];
$end=$_POST["end"];
$type=$_POST["types"];
$honor=$_POST["honor"];
$eval=$_POST["evaluate"];
$sql="update  coaches set name_coach='$name',dage_coach='$start',tage_coach='$end',type_coach='$type',honor_coach='$honor',evaluate_coach=$eval where id_coach=$id";
mysql_query($sql,$conn);
mysql_close($conn);
header("location:../coach.html");
?>