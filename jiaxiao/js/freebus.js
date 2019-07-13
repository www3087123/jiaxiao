$(function(){
    $("#bus .busleft>li").mouseenter(function(){
     $(this).children("div").addClass("change");
     $(this).children("img").css("opacity","1");
     $("#bus .info").html($(this).children("div").children("p").clone());
    })
    
    $("#bus .busleft>li").mouseleave(function(){
        $(this).children("div").removeClass("change");
        $(this).children("img").css("opacity","0");
       })
})