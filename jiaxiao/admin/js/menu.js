$(document).ready(function(){
        var arr="";
        $.ajax({
         dataType:"script",
         url:"configs/menu.php",
         async:false,//必须是同步请求，不然先加载dom结构
         success:function(data){
           var str=JSON.parse(data);
           if(str[0].name=="login"){location.href="index.html";}
           
           //循环遍历一级菜单
           $.each(str,function(index,info){
               //循环遍历二级菜单
               var col='data-options="state:'+'open'+'"';
			        arr+='<li><span>'+info.title+'</span><ul>';
        
              var indexs=[];
              var values=[];
              for(var i=0;i<info.child.length;i++){
                if(i%2==0){
                  indexs.push(info.child[i]);
                }else{
                  values.push(info.child[i]);
                }
              }
              $.each(indexs,function(j,con){
                arr+="<li><a href='"+values[j]+"'>"+con+"</a></li>"
              });
               arr+="</ul></li>";
           })
         }
        });
        
       $("#menus").append($(arr));
	   })