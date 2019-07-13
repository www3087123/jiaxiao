<?php
header("content:text/html;charset=utf-8");
session_start();
$str='[{"title":"管理员","child":["修改管理员密码","updateadmin.html"]},{"title":"banner管理","child":["banner显示&修改","banner.html"]},{"title":"学员报名管理","child":["学员报名显示&删除","student.html"]},{"title":"教练管理","child":["教练管理","coach.html","教练添加","addcoach.html"]},{"title":"报名网点管理","child":["报名网点显示&删除","applyaddr.html","报名网点文本修改","updateapplyaddr.html","报名网点信息添加","addapplyaddr.html","报名网点图片修改","updateapplyaddrp.html"]},{"title":"校园风景管理","child":["校园风景显示&删除","schoolpic.html","校园风景修改","changeschoolpic.html","校园风景添加","addschoolpic.html"]}]';
//-----------------------------------------------------------------

if(empty($_SESSION["admin"])){
    echo '[{"name":"login"}]';
}else{
	echo $str;
}

?>