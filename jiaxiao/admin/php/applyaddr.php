<?php  
require("../configs/conn.php");  
$sql = "select * from applyaddr order by id_aa desc";  
$result = mysql_query($sql,$conn);  
if (!$result) {
    printf("Error: %s\n", mysqli_error($con));
    exit();
}

$jarr = array();
while ($rows=mysql_fetch_array($result,MYSQL_ASSOC)){
    $count=count($rows);//不能在循环语句中，由于每次删除 row数组长度都减小  
    for($i=0;$i<$count;$i++){  
        unset($rows[$i]);//删除冗余数据  
    }
    array_push($jarr,$rows);
}
$jobj=new stdclass();//实例化stdclass，这是php内置的空类，可以用来传递数据，由于json_encode后的数据是以对象数组的形式存放的，
//所以我们生成的时候也要把数据存储在对象中
foreach($jarr as $key=>$value){
$jobj->$key=$value;
}
echo json_encode($jobj);
mysql_free_result($result);
mysql_close($conn);
?>