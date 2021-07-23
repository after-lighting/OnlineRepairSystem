/**
 * Created by hanla on 2016/12/6.
 */


$(function(){
    var headerH=$("header.banner").outerHeight();
    var win=$(window);
    var sc=$(document);
    win.scroll(function(){
        if(sc.scrollTop()>=headerH){
           $('.top-nav').addClass("fixed");
          /*  $(".top-nav").fadeIn();*/
        }else{
            $('.top-nav').removeClass("fixed");
            /*     $(".top-nav").fadeOut();*/
        }
    })
});



//后台右侧设置弹出
$('.sidebarRight-toggle').click(function () {
    if ($('.sidebar-right-product').hasClass('active')) {
        $('.sidebar-right-product').removeClass('active');
        $('.sidebar-right').toggleClass('active');
    }
    else {
        $('.sidebar-right').toggleClass('active');
        $('.wrapper').toggleClass('display-right');
        $('footer').toggleClass('display-right');
    }
    return false;
});
//后台右侧相关产品弹出
$('.sidebarRight-toggle-product').click(function () {
    if ($('.sidebar-right').hasClass('active')) {
        $('.sidebar-right').toggleClass('active');
        $('.sidebar-right-product').toggleClass('active');
    }
    else {
        $('.sidebar-right-product').toggleClass('active');
        $('.wrapper').toggleClass('display-right');
        $('footer').toggleClass('display-right');
    }
    return false;
});
$('.nav-right-btn .dropdown-toggle ').click(function(){
        $('.sidebar-right-product').removeClass('active');
        $('.sidebar-right').removeClass('active');
        $('.wrapper').removeClass('display-right');
        $('footer').removeClass('display-right');

        /*if($('.nav-right-btn > li').hasClass('.open')){
            $('.nav-right-btn > li').removeClass('.open');

        }*/

}
)




// Refresh Widget
$('.widget-refresh-option').click(function()	{

    $activeWidget = $(this).parent().parent().parent();

    var $activeSpinIcon = $activeWidget.find('.refresh-icon-animated').fadeIn();

    setTimeout(function() {
        $activeSpinIcon.fadeOut();
    },2000);

    return false;
});

$(window).load(function() {
    $('body').removeClass('overflow-hidden');

    //Enable animation
    $('.wrapper').removeClass('preload');

    //Chat Notification on top navigation
    setTimeout(function() {
        $('.chat-notification').find('.badge').addClass('active');
        $('.chat-alert').addClass('active');
    }, 3000);

    setTimeout(function() {
        $('.chat-alert').removeClass('active');
    }, 8000);
});


//右下角置顶
$(".scroll-to-top").click(function()	{
    $("html, body").animate({ scrollTop: 0 }, 600);
    return false;
});
$(window).scroll(function(){

    var position = $(window).scrollTop();

    if(position >= 200)	{
        $('.scroll-to-top').addClass('active')
    }
    else	{
        $('.scroll-to-top').removeClass('active')
    }
});