<?php
require("../configs/conn.php");  
$title = $_POST ["title"];
$content = $_POST ["content"];
$times=date("Y-m-d H:i:s");
//echo "insert into news values(null,'$title','$content','$times',$type,0)";
//mysqli_query($link,"insert into news values (null,'啊啊','范德萨发生','2016-06-12 15:53:47',1,0)");
//echo "insert into news values(null,'$title','$content','$times')";
mysql_query ("insert into news values(null,'$title','$content','$times',1)",$conn);
mysql_close($conn);
header ( "location:../feature.html" );
?>