<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title><?php echo ($Invite["title"]); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="<?php echo ($staticPath); ?>/tpl/static/yqh/css/reveal.min.css"/>
    <link rel="stylesheet" href="<?php echo ($staticPath); ?>/tpl/static/yqh/css/invitation.css"/>
    <link rel="stylesheet" href="<?php echo ($staticPath); ?>/tpl/static/yqh/css/idangerous.swiper.css">
    <script src="<?php echo ($staticPath); ?>/tpl/static/yqh/js/reveal.min.js"></script>
    <script src="<?php echo ($staticPath); ?>/tpl/static/yqh/js/classList.js"></script>
    <script src="<?php echo ($staticPath); ?>/tpl/static/yqh/js/zepto.min.js"></script>
    <script src="<?php echo ($staticPath); ?>/tpl/static/yqh/js/widget.js"></script>
    <style>
		A:link {
		 color: #fff;
		 TEXT-DECORATION: none
		}
       <!-- 
*{font-size:12px;font-family:Verdana, Geneva, sans-serif;line-height:14px} 
a{color:#039} 
a:hover{color:#f60} 
.pop{ text-align:center;position:absolute;width:70%;height:80%;background:#eee;border:1px solid #ccc;z-index:999;background:#fff} 
.pop_head{position:relative;height:20px;background:#499646} 
.pop_head a{position:absolute;right:8px;line-height:20px;color:#000;text-decoration:none} 
.pop_head a:hover{color:#f60;text-decoration:none} 
.pop_body{padding:8px} 
-->   
    </style>
</head>
<body>
<div class="reveal">
    <div class="slides">
        <section>
            <section data-page="cover-page" data-background="<?php echo ($Invite["cover"]); ?>">
            </section>
            <section data-page="intro-page">
                <div class="page">
                    <div class="flag">
                        活动<br />介绍
                    </div>

                    <img src="<?php echo ($Invite["meetpic"]); ?>" style="position: absolute; top: 50%; left: 50%; width: 85%; max-width: 85%; max-height: 85%" id="intro-pic"/>
                    <script>
                        $(function(){
                            var $intro_pic = $('#intro-pic');
                            var time = setInterval(function(){
                                if ($intro_pic.height()){
                                    $intro_pic.css({'margin-top': $intro_pic.height() / -2, 'margin-left': $intro_pic.width() / -2});
                                    clearInterval(time);
                                }
                            }, 200)
                        });
                    </script>
                    <div class="intro-content">
                        <?php echo ($Invite["content"]); ?>
                    </div>
                </div>
            </section>
           <?php if($Userlist != null): ?><section data-page="guest-page" class="guest-page">
                <div class="page">
                    <div class="flag">
                        活动<br />主角
                    </div>
                    <div class="intro-wrap">
                        <?php if(is_array($Userlist)): $i = 0; $__LIST__ = $Userlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$User): $mod = ($i % 2 );++$i;?><div class="guest-intro-block" style="">
                                <img src="<?php echo ($User["headpic"]); ?>" style="height:60px;width:60px;"/>
                                <div class="bar" style="background-color:pink"><?php echo ($User["username"]); ?></div>
                            </div><?php endforeach; endif; else: echo "" ;endif; ?>
                    </div>
                </div>
                <script>
                    var guest_ani_tasks = new aniTasks();
                    $(function(){
                        var words = [
                            <?php if(is_array($Userlist)): $i = 0; $__LIST__ = $Userlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$User): $mod = ($i % 2 );++$i;?>'<div style="width:100%;padding:10px;line-height:150%"><h3>&nbsp<?php echo ($User["username"]); ?></h3>&nbsp;&nbsp;<?php echo ($User["position"]); ?><br /><br /></div><div style="width:100%;height:auto;"><div style="width:100%;height:auto;">&nbsp;&nbsp;&nbsp;&nbsp;<?php echo ($User["synopsis"]); ?></div></div>',<?php endforeach; endif; else: echo "" ;endif; ?>
                        ];
                        var imgs = [
                        <?php if(is_array($Userlist)): $i = 0; $__LIST__ = $Userlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$User): $mod = ($i % 2 );++$i;?>'<?php echo ($User["headpic"]); ?>',<?php endforeach; endif; else: echo "" ;endif; ?>
                        ];
                        var $guest_blocks = $('.guest-page .guest-intro-block');
                        var m_top = ($(window).height() - 45 * 8) / 2
                        var m_left = $(window).width() / 2 - 90 - 10
                        for (var i = 0, $each; i < $guest_blocks.length; i++){
                            $each = $guest_blocks.eq(i);
                            var $bar = $each.find('.bar');
                            var ani_opt = {};
                            if (i % 2){
                                $each.css('left', -80);
                                $bar.css('right', 20);
                                $bar.css('text-align', 'right');
                                ani_opt.left = m_left;
                            } else {
                                $each.css('right', -80);
                                $bar.css('left', 20);
                                $bar.css('text-align', 'left');
                                ani_opt.right = m_left;
                            }
                            $each.css('top', 45 * (i - (i % 2) + 1) - 50 + m_top);
                                                                
                            guest_ani_tasks.addTaskPair(new aniMove($each, ani_opt), 500 + (i - (i % 2)) * 70);
                        }



                        $guest_blocks.tap(function(){
                            var i = $guest_blocks.index(this);
                            var $each_intro = $('<div><img src="' + imgs[i] + '" style="width:100%;height:224px;">' + words[i] + '</div>');
                            $each_intro.find('p').css({
                                'padding': '10px 20px'
                            });

                            lightbox(introCard($each_intro.css({'color': '#fff'}), {'background': 'rgba(100, 100, 50, 0.8)'}));
                        });
                    });
                </script>
            </section><?php endif; ?>
            <?php if($Meetlist != null): ?><section data-page="arrangement">
                <div class="page">
                    <div class="flag">
                        活动<br />安排
                    </div>
                    <div class="swiper-container arrange-swiper">
                        <div class="swiper-wrapper">
                        <?php if(is_array($Meetlist)): $i = 0; $__LIST__ = $Meetlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$Meet): $mod = ($i % 2 );++$i;?><div class="swiper-slide arrange-block">
                                <div class="arrange-block-wrapper">
                                    <p class="title"><?php echo (date("m月d日",$Meet["time"])); ?></p>
                                    <p class="time"><?php echo (date("H:i",$Meet["ytime"])); ?>-<?php echo (date("H:i",$Meet["xtime"])); ?></p>
                                    <table>
                                        <tr>
                                            <td class="left">
                                                人物 
                                            </td>
                                            <td class="right">
                                                <p class="content"><?php echo ($Meet["guest"]); ?></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="left">
                                                内容
                                            </td>
                                            <td class="right">
                                                <p class="content"><?php echo ($Meet["content"]); ?></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="left">
                                                电话
                                            </td>
                                            <td class="right">
                                                <p class="content"><?php echo ($Meet["call"]); ?></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="left">
                                                地点
                                            </td>
                                            <td class="right">
                                                <p class="content"><?php echo ($Meet["site"]); ?></p>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div><?php endforeach; endif; else: echo "" ;endif; ?>
                        </div>
                    </div>
                    <div class="arrange-info">
                        <div class="info-right" style="width:100%;height:80px;">
                            <p>
                                <div><center><font size="5" color="#ff00ff"><?php if($firsttime == $lasttime): echo (date("m月d日",$firsttime)); else: echo (date("m月d日",$firsttime)); ?>到<?php echo (date("m月d日",$lasttime)); endif; ?></font></center></div>
                            </p>
                        </div>
                        <div class="clear:both"></div>
                    </div>
            </div>
            </section><?php endif; ?>
            <section data-page="travel-1">
                <div class="page">
                    <div class="flag">
                        主办<br />方
                    </div>
                    <div class="contact-card">
                    <div style="width:100%;height:70%;">
                        <div style="width:58%;float:left;">
                            <p>
                                <span class="icon"><img style="width:20px;vertical-align: middle" src="<?php echo ($staticPath); ?>/tpl/static/yqh/images/36.png"/></span>
                                <?php echo ($Invite["photo"]); ?>
                            </p>
                            <p>
                                <span class="icon"><img style="width:20px;vertical-align: middle" src="<?php echo ($staticPath); ?>/tpl/static/yqh/images/37.png"/></span>
                                <?php echo ($Invite["linkman"]); ?>
                            </p>
                            <?php if($Invite["email"] != null): ?><p>
                                <span class="icon"><img style="width:20px;vertical-align: middle" src="<?php echo ($staticPath); ?>/tpl/static/yqh/images/35.png"/></span>
                                <?php echo ($Invite["email"]); ?>
                            </p><?php endif; ?>
                            <p>
                                <span class="icon"><img style="width:20px;vertical-align: middle" src="<?php echo ($staticPath); ?>/tpl/static/yqh/images/38.png"/></span>
                                <?php echo ($Invite["site"]); ?>
                            </p>
                        </div>
                        <?php if($Invite["twopic"] != null): ?><div class="left" style="width:40%;float:right;border:"><img src="<?php echo ($Invite["twopic"]); ?>" width="100px" height="100px" /></div><?php endif; ?>
                        <?php if($Invite["theme"] != null): ?><div class="code-info" style="height:auto;">
                            <div class="right" style="width:100%;margin-top:30px;margin-left:-13px;"><center><font size="3" color="#00FFFF">如需关注请点击:</font><a href="http://<?php echo ($Invite["themeurl"]); ?>"><?php echo ($Invite["theme"]); ?></a></center></div>
                            </div><?php endif; ?>




                   </div>
                        <div style="clear:both">
                        <!-- <div id="pop" class="pop" style="margin-top: -205px;margin-left: 30px;display:none;"> -->
                        <div id="pop" class="pop" style="margin-top: -205px;margin-left:10%;display:none;border:3px solid #469D42;">
                        <div class="pop_head"><a href="javascript:void(0);" onclick="hide()"><font color="#fff"><b>关闭</b></font></a></div> 
                        <div class="pop_body">
                             <div class="form-part-1" style="margin-top:-10px;">
                        <form class="login-form clearfix" method="post" action="">
                  <fieldset>
                    <label>姓名<span style="color:red">*</span><input name="name" value="" style="width:150px;margin-top:50px;" /></label>
                    
                </fieldset>
                <fieldset>
                    <label>手机<span style="color:red">*</span><input name="mobile" value="" style="width:150px;margin-top:10px;"/></label>
                </fieldset>
                <fieldset>
                    <label>公司<span style="color:red">*</span><input name="comp" value="" style="width:150px;margin-top:10px;"/></label>
                    
                </fieldset>
                <fieldset>
                    <label>邮箱<span style="color:red">*</span><input name="email" value="" style="width:150px;margin-top:10px;"/></label>
                    
                </fieldset>
                <fieldset>
                    <label>职位<span style="color:red">*</span><input name="post" value="" style="width:150px;margin-top:10px;"/></label>
                </fieldset>
                <fieldset>
                    <label>
                     <center><div style="float:left;margin-left:30%;margin-top:3%;"><button type="submit" class="button" style="width:70px;"><b>保 存</b></button></div></center>
                </fieldset>
                </form>
            </div>
                        </div> 
                    </div> 





                            <center><button class=""><a href="javascript:void(0);" onclick="show();">自愿报名</a></button></center>
                        </div><div id="content">  
            <div style="text-align: center;margin-top:15px;"><span style="color:red">*</span> <?php echo ($Invite["warn"]); ?></div>
                    </div>
                </div>
            </section>
            <?php if(is_array($Partlist)): $i = 0; $__LIST__ = $Partlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$Part): $mod = ($i % 2 );++$i;?><section data-page="contact-page">
                <div class="page">
                    <div class="flag">
                        合作<br />伙伴
                    </div>
                    <div class="contact-card-travel"  style=" overflow:auto">
                        <h2><?php echo ($Part["partnertype"]); ?></h2>
                        <div style="text-align: center"><img src="<?php echo ($Part["typepic"]); ?>" style="width:100px;height:100px" /></div >
                        <p><?php echo ($Part["remark"]); ?></p>
                        <h3>公司名称</h3>
                        <p><?php echo ($Part["company"]); ?></p>
                        <h3>联系方式：</h3>
                        <p><?php echo ($Part["photo"]); ?>
                        </p>
                        <h3>计划方案：</h3>
                        <?php echo ($Part["scheme"]); ?>
                    </div>
                </div>
            </section><?php endforeach; endif; else: echo "" ;endif; ?>
        </section>
    </div>
</div>

<div class="arrow arrow-up" style="opacity: 0" onclick="Reveal.prev()">
    <img src="<?php echo ($staticPath); ?>/tpl/static/yqh/images/arrow-up.png"/>
</div>
<div class="arrow arrow-down" onclick="Reveal.next()">
    <img src="<?php echo ($staticPath); ?>/tpl/static/yqh/images/arrow-down.png"/>
</div>
<script>
    Reveal.initialize({

        width: '100%',

        height: '100%',

     // Display controls in the bottom right corner
        controls: false,

        // Display a presentation progress bar
        progress: false,

        // Display the page number of the current slide
        slideNumber: false,

        // Push each slide change to the browser history
        history: true,

        // Enable keyboard shortcuts for navigation
        keyboard: true,

        // Enable the slide overview mode
        overview: false,

        // Vertical centering of slides
        center: false,

        // Enables touch navigation on devices with touch input
        touch: true,

        // Loop the presentation
        loop: false,

        // Change the presentation direction to be RTL
        rtl: false,

        // Turns fragments on and off globally
        fragments: false,

        // Flags if the presentation is running in an embedded mode,
        // i.e. contained within a limited portion of the screen
        embedded: false,

        // Number of milliseconds between automatically proceeding to the
        // next slide, disabled when set to 0, this value can be overwritten
        // by using a data-autoslide attribute on your slides
        autoSlide: 0,

        // Stop auto-sliding after user input
        autoSlideStoppable: true,

        // Enable slide navigation via mouse wheel
        mouseWheel: false,

        // Hides the address bar on mobile devices
        hideAddressBar: true,

        // Opens links in an iframe preview overlay
        previewLinks: false,

        // Transition style
        transition: 'linear', // default/cube/page/concave/zoom/linear/fade/none

        // Transition speed
        transitionSpeed: 'default', // default/fast/slow

        // Transition style for full page slide backgrounds
        backgroundTransition: 'slide', // default/none/slide/concave/convex/zoom

        // Number of slides away from the current that are visible
        viewDistance: 6,

        // Parallax background image
        parallaxBackgroundImage: '<?php echo ($Invite["inback"]); ?>',

        // Parallax background size
        parallaxBackgroundSize: '100% 100%' // CSS syntax, e.g. "2100px 900px"


    });


    $(function(){
        $('.page').css({'width': $(window).width(), 'height': $(window).height()});
    });
</script>
<script type="text/javascript"> 
var EX = {
  addEvent:function(k,v){
    var me = this;
    if (me.addEventListener)
      me.addEventListener(k, v, false);
    else if(me.attachEvent)
      me.attachEvent("on" + k, v);
    else
      me["on" + k] = v;
  },
  removeEvent:function(k,v){
    var me = this;
    if (me.removeEventListener)
      me.removeEventListener(k, v, false);
    else if (me.detachEvent)
      me.detachEvent("on" + k, v);
    else
      me["on" + k] = null;
  },
  stop:function(evt){
    evt = evt || window.event;
    evt.stopPropagation?evt.stopPropagation():evt.cancelBubble=true;
  }
};
document.getElementById('pop').onclick = EX.stop;
var url = '#'; 
function show(){ 
var o = document.getElementById('pop'); 
o.style.display = ""; 
setTimeout(function(){EX.addEvent.call(document,'click',hide);});
} 
function hide(){ 
var o = document.getElementById('pop'); 
o.style.display = "none"; 
EX.removeEvent.call(document,'click',hide);
} 
</script>  
<script src="<?php echo ($staticPath); ?>/tpl/static/yqh/js/idangerous.swiper-2.0.min.js"></script>
<script src="<?php echo ($staticPath); ?>/tpl/static/yqh/js/invitation.js"></script>
<script type="text/javascript">
window.shareData = {  
            "moduleName":"Invite",
            "moduleID":"<?php echo (intval($_GET['yid'])); ?>",
            "imgUrl": "<?php echo ($Invite["replypic"]); ?>", 
            "timeLineLink": "<?php echo ($f_siteUrl); echo U('Invite/index',array('token'=>$_GET['token'],'yid'=>intval($_GET['yid'])));?>",
            "sendFriendLink": "<?php echo ($f_siteUrl); echo U('Invite/index',array('token'=>$_GET['token'],'yid'=>intval($_GET['yid'])));?>",
            "weiboLink": "<?php echo ($f_siteUrl); echo U('Invite/index',array('token'=>$_GET['token'],'yid'=>intval($_GET['yid'])));?>",
            "tTitle": "<?php echo ($Invite["title"]); ?>",
            "tContent": "<?php echo ($Invite["content"]); ?>"
        };
</script>
<?php echo ($shareScript); ?>
</body>
</html>