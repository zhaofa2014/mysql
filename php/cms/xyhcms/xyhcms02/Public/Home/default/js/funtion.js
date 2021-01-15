
$(function () {
    // 字体大小
     (function(doc,win){

      var docEl = doc.documentElement,
      resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize' ,
      recalc = function()
      {
        var clientWidth = docEl.clientWidth;
        if(!clientWidth) return;
        if(clientWidth>640){
        clientWidth=640;
      }
      docEl.style.fontSize = 20 * (clientWidth / 320) + 'px';
    };
    recalc();
    if(!doc.addEventListener) return;
    win.addEventListener(resizeEvt,recalc,false);
    doc.addEventListener('DOMContentLoaded',recalc,false);
    })(document,window);
    
    $(".carousel").carousel({
          interval: 6000
    })
    $(".carousel").carousel("next")
    $(".carousel").carousel("prev")

    // 头部
    $(window).scroll(function () {
        var sT = $(window).scrollTop();
        if (sT >100) {
            $(".head").addClass("on");
        } else {
            $(".head").removeClass("on");
        }

    });
    /*********导航下拉框**********/
    $(".nav_box>li").hover(function () {
        $(this).find(".libox").stop(true, false).slideDown();
    },function () {
        $(this).find(".libox").slideUp();
    });
    
     //手机banner滚动
      $(".swiper-banner").swiper({
          pagination: '.swiper-dote ul',
          autoplay : 3000,
          paginationClickable :true,
          paginationElement : 'li',
      });

    /******滚回头部******/
    $("#back_top").click(function(){
        $("html,body").animate({scrollTop:'0px'},800);
    });
    
   // 选项卡
      $(function(){
           $(".slide_pro .hd ul li").click(function(){
           $(this).addClass("on").siblings().removeClass("on");
           var index=$(this).index(); 
           $(".slide_pro .bd > .detil").eq(index).show().siblings().hide(); 
           });
      });
    //手机优势滚动
    $(".swiper-yous").swiper({
        pagination: '.swiper-dote ul',
        autoplay : 3000,
        paginationClickable :true,
        paginationElement : 'li',
    });
   //隐藏导航跟wrap的切换
    $(".mol_navbutton").click(function(){
      $(".class").removeClass("page-prev").addClass("page-in");
      $(".wrap").removeClass("page-active").addClass("page-next page-in")
      $(".opacity2").show()
      // pageSlideOver();
      
    })
    $(".class-close,.opacity2").on('click touchstart',function(){
      $(".class").addClass("page-prev page-out")
      $(".wrap").removeClass("page-next").addClass(" page-out")
      $(".opacity2").hide()
      $(".newsclass").removeClass("show")
      // pageSlideOver();
      return false;
    });
    // 分类
      $(".navmore").click(function(){
          $(".mainav_l").slideToggle()  
          $(this).toggleClass("more_h");
      })
    // 二级导航下拉
      $(".ericon").click(function(){
          $(this).toggleClass("xz").parents().siblings().find(".ericon").removeClass("xz");
          $(this).parents().siblings().find(".menu_body").hide(300);
          $(this).siblings(".menu_body").slideToggle()
              
      })
    // 三级下拉
      $(".thricon").click(function(){
          $(this).toggleClass("tz").parents().siblings().find(".thricon").removeClass("tz");
          $(this).parents().siblings().find(".thr_body").hide(300);
          $(this).siblings(".thr_body").slideToggle()
              
      })
    // 鼠标滚动渐入
    if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))){
        new WOW().init();
    };


    // prodt滚动
     
    var galleryTop = new Swiper('.gallery-top', {
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        spaceBetween: 10,
    });
    var galleryThumbs = new Swiper('.gallery-thumbs', {
        spaceBetween: 10,
        centeredSlides: true,
        slidesPerView: 'auto',
        touchRatio: 0.2,
        slideToClickedSlide: true
    });
    galleryTop.params.control = galleryThumbs;
    galleryThumbs.params.control = galleryTop;
    
});