<?php  
session_start();
require("../configs/conn.php");  
	$old = md5($_POST ["old"]);
	$pwd = md5($_POST ["pwd"]);
	$name=$_SESSION["admin"];
	$sql="select * from admins where name_admin='$name' and pwd_admin='$old'";
	
	 $result = mysql_query($sql,$conn);
	 if (mysql_num_rows ( $result ) > 0) {
	 	mysql_query("update admins set pwd_admin='$pwd' where name_admin='$name'");
	 	
	    header("location:../adminok.html");
	} else {
		header("location:../updateadmin.html?msg=no");
	}
	
mysql_free_result($result);
mysql_close($conn);

?>