$(document).ready(function(){
    //상단검색
    $(".search div").slideUp(0);
    $(".search").bind("mouseenter",function(){
        $(".search div").stop().slideDown("fast","easeOutBounce");
    });        
        $(".search").bind("mouseleave",function(){
            if($("#search").is(":focus")==true){
        $(".search div").show();
    }else{
        $(".search div").stop().slideUp(200,"easeOutBounce");
    }
    }).focusout(function(){
    $(".search div").stop().slideUp(200,"easeOutBounce");
        $("search").val("");
    });
    
    
    
    //메뉴
    $("#main_menu").before("<p class='bg'></p>")
    $(".bg,.sub").hide();
    $("#main_menu>ul").mouseenter(function(){
    $(".bg,.sub").stop().slideDown("fast");
    }).mouseleave(function(){
    $(".bg,.sub").stop().slideUp();
    });
    
    $(".bg").mouseover(function(){
    $(this).stop().show();
    $(".sub").stop().show();
    }).mouseout(function(){
    $(this).stop().slideUp();
    $(".sub").stop().slideUp();
    });
    
    $(".sub").mouseover(function(){
    $(this).css("background-color","rgba(139, 106, 97, 0.8)");
    }).mouseout(function(){
    $(this).css("background-color","");
    });
    });