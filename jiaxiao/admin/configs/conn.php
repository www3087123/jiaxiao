<?php
date_default_timezone_set ( "PRC" );
$conn=mysql_connect("localhost","root","") or die("连接失败");
$db=mysql_select_db("bdm244113699_db",$conn);
mysql_query("set names utf8");
?>