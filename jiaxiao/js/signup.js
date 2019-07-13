$(function(){
//    协议特效  --link-ljj start
$("#con2>input[name=show]").click(function(){
     $("#con3").show(1000);
})
$("#con3 input[name=agree]").click(function(){
    $("#con3").hide(1000);
})
//    协议特效  --link-ljj end
// 协议特效  --ggwly-gjy start
$("#con4 input[name=sub]").click(function(){
$.ajax({
    url:"../php/addtands.php",
    dataType:"json",
    type:"POST",
    data:{names:$("#con4 input[name=username]").val(),tels:$("#con4 input[name=usertel]").val(),types:0},
    success:function(msg){
     if (msg==1){
         alert("报名成功");
      }else{
          alert("报名失败请联系客服");
      }
    }
})
})
// 协议特效  --ggwly-gjy end
})