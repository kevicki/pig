// JavaScript Document
$(function(){
    var i=0;
    var li=$(".windowTagList .tagSlide li");
    var liWidth=li.outerWidth(true);
    var liLen=li.length;
    var li4=Math.ceil(liLen/4);
    var li4Width=liWidth*4;
    var $ul=$(".windowTagList .tagSlide .bd ul");
    $ul.width(li4Width*li4);
    function next() {
        i++;
        if (i == li4) {
            i = 0
        }
    }
    function prev() {
        i--;
        if (i < 0) {
            i = li4 - 1
        }
    }
    function run(){
        $ul.stop().animate({
            "margin-left":-(li4Width*i)
        },1000);
    }
    $(".tagSlide .hd a.next").click(function(){
            next();
            run()
    });
    $(".tagSlide .hd a.prev").click(function(){
            prev();
            run();
    });
});




$(function() {
    jQuery(".festivalRow").slide();
    //圈圈转动
    var list = $(".tagSlide li");
    list.hover(function() {
            $(this).find("i").addClass("irotateIn").parents("li").siblings().find('i').addClass(" irotateOut");
        },
        function() {
            list.find('i').removeClass(" irotateIn irotateOut");
        });
    //关闭按钮。点击后，关闭遮盖层，关闭窗口
    $(".showWindow a.closed").click(function() {
        $(this).parents('.showWindow').hide();
        $(".fullBg").hide();
        $('body,html').css('overflow', 'auto');
    });
    list.click(function() {
        //点击后，当前点击过的添加状态
        $(this).addClass('on').siblings().removeClass('on');
        //以下是根据点击的不同的li，显示不同的窗口
        var index = 0;
        index = list.index(this);
        var zhu_id =list.eq(index).attr('zhu_id');
        //var index_ti=$(".tagSlide li dd").eq(index).text();
	$.ajax({
		type:"post",
		url:"?g=Home&m=Index&a=home_ajax",
		datatype:"json",
		data:{
			zhu_id:zhu_id
		},
		success:function(sta){
			var obj = JSON.parse(sta);
			if(obj.three == 3){
		          $(".windowTagList").hide();
			        crollThis('.windowFestival');
		          $(".windowFestival").show();
				      //是节日营销栏目
              $('.three_floor').html(obj.img_all);
				      $('.tianchong_jr').html(obj.li);
			        $('.rpp h2').html(obj.nick_title);
			        $('.detail_p span').eq(0).html(obj.desc);
			        $('.detail_p span').eq(1).html(obj.sce_content);
			        $('.li_holi').eq(0).addClass('on').siblings().removeClass('on');
              if(obj.menu_link>0){
                  $('#tdct').removeClass('textp');
                  $('.jr_img_z').css({
                      'width':'126',
                      'height':'127'
                  });
                  $('.img_san').text('扫描二维码体验此功能');
                  $('.jr_img_z').attr('src','/index.php?g=Home&m=Index&a=QRcode_ajax&kid='+obj.id);
              }else{
                  $('#tdct').addClass('textp');
                  $('.jr_img_z').css({
                      'width':'0',
                      'height':'0'
                  });
                  $('.img_san').text('暂无二维码！');
              }
              picScroll();

			}else{
            	$(".windowTagList").hide();
            	crollThis('.windowLbs');
            	$(".windowLbs").show();
		          //
              $('.two_floor').html(obj.img_all);
      				$('.tianchong').html(obj.li);
      				$('.first h2').html(obj.nick_title);
      				$('.first_detail span').eq(0).html(obj.desc);
      				$('.first_detail span').eq(1).html(obj.sce_content);
              if(obj.menu_link>0){
                  $('#tdcc').removeClass('textp');
                  $('.img_z').css({
                      'width':'126',
                      'height':'127'
                  });
                  $('.img_er').text('扫描二维码体验此功能');
                  $('.img_z').attr('src','/index.php?g=Home&m=Index&a=QRcode_ajax&kid='+obj.id);
              }else{
                  $('#tdcc').addClass('textp');
                  $('.img_z').css({
                      'width':'0',
                      'height':'0'
                  });
                  $('.img_er').text('暂无二维码！');
              }
              picScroll();
			}
		}
	});
    });
    //点击目录按钮返回圈圈导航窗口
    var menu = $(".barNav .setBox .topTag a");
    menu.click(function() {
        $(this).parents(".showWindow").hide();
        $(".windowTagList").show();
    })
    $(".showWindow .btn a").hover(function(){
       $(this).find('.tdc').fadeIn(300);
    },function(){
        $(this).find('.tdc').fadeOut(300);
    });
});

function showHand(){
    var phoneLI = $(".imgHolder .imgScroll ul li");
    var phoneLiLen = phoneLI.length;
    var phoneLiW = phoneLI.width();
    var phoneUlW = phoneLiLen * phoneLiW;
    $(".imgHolder .imgScroll ul").width(phoneUlW);
    startStep();
}

//调用这个方法开启分布引导，不调用不生效
function startStep() {
    var docHeight = $(document).height();
    $(".fullBg").height(docHeight).show();
    $('body,html').css('overflow', 'hidden');
    centerWindow(".showWindow");
    $(".windowTagList").show();
};

function crollThis(a) { //调用这个方法，传入对应弹窗的class
    var showWindow = $(a);
    var i = 0;
    var phoneLI = $(".imgHolder .imgScroll ul li");
    var phoneLiLen = phoneLI.length;
    var phoneLiW = phoneLI.width();
    var descRow = showWindow.find(".info>.row");
    var imgSroll = showWindow.find(".imgHolder .imgScroll ul");
    var btn = showWindow.find(".barNav .setBox .barNavLi ul li");
    function up() {
        i++;
        if (i == btn.length) {
            i = 0
        }
    }
    function down() {
        i--;
        if (i < 0) {
            i = btn.length - 1
        }
    }
    /*切换方法*/
    function run() {
        btn.eq(i).addClass('on').siblings().removeClass('on');
    };
    btn.each(function(index) {
        $(this).click(function() {
            i = index;
            run();
        });
    });
}

//3.点击弹窗方法
function clickaShowWindow(a, b) {
    $(b).click(function() {
        centerWindow(a);
        $(".fullBg").show();
        $(a).slideDown(300);
        return false;
    });
}
//2.将盒子方法放入这个方，方便法统一调用
function centerWindow(a) {
    center(a);
    //自适应窗口
    $(window).bind('scroll resize',
        function() {
            center(a);
        });
}
//1.居中方法，传入需要剧中的标签
function center(a) {
    var wWidth = $(window).width();
    var wHeight = $(window).height();
    var boxWidth = $(a).width();
    var boxHeight = $(a).height();
    var scrollTop = $(window).scrollTop();
    var scrollLeft = $(window).scrollLeft();
    var top = scrollTop + (wHeight - boxHeight) / 2;
    var left = scrollLeft + (wWidth - boxWidth) / 2;
    $(a).css({
        "top": top,
        "left": left
    });
}

function picScroll(){
   $(".insideScroll").each(function(){
       var i=0;
       var t=0;
       var prev=$(this).find(".scrollBtn a.prev");
       var next=$(this).find(".scrollBtn a.next");
       var pageI=$(this).find(".scrollPage i");
       var imgLi=$(this).find("ol li");
       function right() {
           i++;
           if (i == imgLi.length) {
               i = 0
           }
       }
       function left() {
           i--;
           if (i < 0) {
               i = imgLi.length - 1
           }
       }
       function run(){
           pageI.eq(i).addClass("on").siblings().removeClass("on");
        imgLi.eq(i).fadeIn(1000).siblings().fadeOut(1000).hide();
       }
       pageI.each(function(index){
           $(this).click(function(){
               i=index;
               run();
           });
       }).eq(0).trigger("click");
       function runn(){
           right();
           run();
       }
       t= setInterval(runn, 3000);
        $(this).hover(function(){
            clearInterval(t);
            $(".scrollBtn a").fadeIn(1000);
        },function(){
            t = setInterval(runn, 3000);
            $(".scrollBtn a").fadeOut(1000);
        });
       prev.click(function(){
           left();
           run();
       });
       next.click(function(){
           right();
           run();
       });
   })
};

$(function(){
$('.tianchong').on('click','.right_dianji',function(){//第二层右侧菜单点击后，切换不同单页面
var two_list=$(".tianchong li");
var index = two_list.index(this);
var key_id = two_list.eq(index).attr('key');
two_list.eq(index).addClass('on').siblings().removeClass('on');
      $.ajax({
      type:"post",
      url:"?g=Home&m=Index&a=two_ajax",
      datatype:"json",
      data:{
      key_id:key_id
            },
            success:function(sta){
              var obj = JSON.parse(sta);
              $('.first h2').html(obj.nick_title);
              $('.first_detail span').eq(0).html(obj.desc);
              $('.first_detail span').eq(1).html(obj.sce_content);
              $('.two_floor').html(obj.img_all);
              picScroll();
              if(obj.menu_link>0){
                  $('#tdcc').removeClass('textp');
                  $('.img_z').css({
                      'width':'126',
                      'height':'127'
                  });
                  $('.img_er').text('扫描二维码体验此功能');
                  $('.img_z').attr('src','/index.php?g=Home&m=Index&a=QRcode_ajax&kid='+obj.id);
              }else{
                  $('#tdcc').addClass('textp');
                  $('.img_z').css({
                      'width':'0',
                      'height':'0'
                  });
                  $('.img_er').text('暂无二维码！');
              }


            }
                })

    })
})
$(function(){
	$('.li_holi').click(function(){//第三层横排滑动，切换不同的默认首页，以及切换不同的列表(mouseenter)
		var list_holi=$('.li_holi');
		var index=list_holi.index(this);
		var key_id=list_holi.eq(index).attr("key");
			$.ajax({
	    		type:"post",
	    		url:"?g=Home&m=Index&a=four_ajax",
	    		datatype:"json",
	    		data:{
	            		key_id:key_id
	    		},
	    		success:function(sta){
	            		var obj = JSON.parse(sta);
    				      $('.tianchong_jr').html(obj.li);
                  $('.three_floor').html(obj.img_all);
    			        $('.rpp h2').html(obj.nick_title);
    			        $('.detail_p span').eq(0).html(obj.desc);
    			        $('.detail_p span').eq(1).html(obj.sce_content);
    			        list_holi.eq(index).addClass('on').siblings().removeClass('on');
    			        // $('.jr_img_z').attr('src','/index.php?g=Home&m=Index&a=QRcode_ajax&kid='+obj.id);
                  picScroll();
                  if(obj.menu_link>0){
                      $('#tdct').removeClass('textp');
                      $('.jr_img_z').css({
                          'width':'126',
                          'height':'127'
                      });
                      $('.img_san').text('扫描二维码体验此功能');
                      $('.jr_img_z').attr('src','/index.php?g=Home&m=Index&a=QRcode_ajax&kid='+obj.id);
                  }else{
                      $('#tdct').addClass('textp');
                      $('.jr_img_z').css({
                          'width':'0',
                          'height':'0'
                      });
                      $('.img_san').text('暂无二维码！');
                  }
	    		}
		});
	})
})
$(function(){
        $('.tianchong_jr').on('click','.right_jr',function(){//第三层右侧菜单点击切换不同单页面
                var list=$(".tianchong_jr li");
	        var index = list.index(this);
	        var key_id = list.eq(index).attr('key');
	        list.eq(index).addClass('on').siblings().removeClass('on');
	        $.ajax({
			type:"post",
			url:"?g=Home&m=Index&a=five_ajax",
			datatype:"json",
			data:{
				key_id:key_id
			},
			success:function(sta){
				var obj = JSON.parse(sta);
				$('.rpp h2').html(obj.nick_title);
        $('.three_floor').html(obj.img_all);
				$('.detail_p span').eq(0).html(obj.desc);
				$('.detail_p span').eq(1).html(obj.sce_content);
				$('.jr_img_z').attr('src','/index.php?g=Home&m=Index&a=QRcode_ajax&kid='+obj.id);
        picScroll();
        if(obj.menu_link>0){
            $('#tdct').removeClass('textp');
            $('.jr_img_z').css({
                'width':'126',
                'height':'127'
            });
            $('.img_san').text('扫描二维码体验此功能');
            $('.jr_img_z').attr('src','/index.php?g=Home&m=Index&a=QRcode_ajax&kid='+obj.id);
        }else{
            $('#tdct').addClass('textp');
            $('.jr_img_z').css({
                'width':'0',
                'height':'0'
            });
            $('.img_san').text('暂无二维码！');
        }
			}
	        })

        })
})



//此处引用：鼠标滚轮mousewheel插件
!function(a){"function"==typeof define&&define.amd?define(["jquery"],a):"object"==typeof exports?module.exports=a:a(jQuery)}(function(a){function b(b){var g=b||window.event,h=i.call(arguments,1),j=0,l=0,m=0,n=0,o=0,p=0;if(b=a.event.fix(g),b.type="mousewheel","detail"in g&&(m=-1*g.detail),"wheelDelta"in g&&(m=g.wheelDelta),"wheelDeltaY"in g&&(m=g.wheelDeltaY),"wheelDeltaX"in g&&(l=-1*g.wheelDeltaX),"axis"in g&&g.axis===g.HORIZONTAL_AXIS&&(l=-1*m,m=0),j=0===m?l:m,"deltaY"in g&&(m=-1*g.deltaY,j=m),"deltaX"in g&&(l=g.deltaX,0===m&&(j=-1*l)),0!==m||0!==l){if(1===g.deltaMode){var q=a.data(this,"mousewheel-line-height");j*=q,m*=q,l*=q}else if(2===g.deltaMode){var r=a.data(this,"mousewheel-page-height");j*=r,m*=r,l*=r}if(n=Math.max(Math.abs(m),Math.abs(l)),(!f||f>n)&&(f=n,d(g,n)&&(f/=40)),d(g,n)&&(j/=40,l/=40,m/=40),j=Math[j>=1?"floor":"ceil"](j/f),l=Math[l>=1?"floor":"ceil"](l/f),m=Math[m>=1?"floor":"ceil"](m/f),k.settings.normalizeOffset&&this.getBoundingClientRect){var s=this.getBoundingClientRect();o=b.clientX-s.left,p=b.clientY-s.top}return b.deltaX=l,b.deltaY=m,b.deltaFactor=f,b.offsetX=o,b.offsetY=p,b.deltaMode=0,h.unshift(b,j,l,m),e&&clearTimeout(e),e=setTimeout(c,200),(a.event.dispatch||a.event.handle).apply(this,h)}}function c(){f=null}function d(a,b){return k.settings.adjustOldDeltas&&"mousewheel"===a.type&&b%120===0}var e,f,g=["wheel","mousewheel","DOMMouseScroll","MozMousePixelScroll"],h="onwheel"in document||document.documentMode>=9?["wheel"]:["mousewheel","DomMouseScroll","MozMousePixelScroll"],i=Array.prototype.slice;if(a.event.fixHooks)for(var j=g.length;j;)a.event.fixHooks[g[--j]]=a.event.mouseHooks;var k=a.event.special.mousewheel={version:"3.1.12",setup:function(){if(this.addEventListener)for(var c=h.length;c;)this.addEventListener(h[--c],b,!1);else this.onmousewheel=b;a.data(this,"mousewheel-line-height",k.getLineHeight(this)),a.data(this,"mousewheel-page-height",k.getPageHeight(this))},teardown:function(){if(this.removeEventListener)for(var c=h.length;c;)this.removeEventListener(h[--c],b,!1);else this.onmousewheel=null;a.removeData(this,"mousewheel-line-height"),a.removeData(this,"mousewheel-page-height")},getLineHeight:function(b){var c=a(b),d=c["offsetParent"in a.fn?"offsetParent":"parent"]();return d.length||(d=a("body")),parseInt(d.css("fontSize"),10)||parseInt(c.css("fontSize"),10)||16},getPageHeight:function(b){return a(b).height()},settings:{adjustOldDeltas:!0,normalizeOffset:!0}};a.fn.extend({mousewheel:function(a){return a?this.bind("mousewheel",a):this.trigger("mousewheel")},unmousewheel:function(a){return this.unbind("mousewheel",a)}})});