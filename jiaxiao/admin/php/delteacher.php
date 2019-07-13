<?php
require("../configs/conn.php");  
$id=$_GET["id"];
$type=$_GET["types"];
$sql="delete from teaandstu where id_ts=".$id;
mysql_query($sql,$conn);
mysql_close($conn);
if($type==0){
	header("location:../student.html");
}else{
	header("location:../teacher.html");
}

?>