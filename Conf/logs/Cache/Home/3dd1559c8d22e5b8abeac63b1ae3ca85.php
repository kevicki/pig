<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title><?php if($zdydh6['name'] == ''): ?>管理中心<?php else: echo ($zdydh6['name']); endif; ?>－ 微信帮手 微信公众账号</title>
    </head>
    
    <body>
    	<!--startof header-->
    	<link href="/tpl/Home/demo/common/css/public.css" rel="stylesheet" type="text/css" />
<link href="/tpl/Home/demo/common/css/index2.css" rel="stylesheet" type="text/css" />
<!--<script src="/tpl/Home/demo/common/js/jquery-1.9.1.min.js" type="text/javascript"></script>-->
<script src="/tpl/Home/demo/common/js/jquery1.js" type="text/javascript"></script>
<script src="/tpl/Home/demo/common/js/daohang.js" type="text/javascript"></script>

<script src="/tpl/Home/demo/common/js/jquery-1.7.2.min.js"></script>
<script src="/tpl/Home/demo/common/js/ss.js"></script>
<link href="/tpl/Home/demo/common/css/gongneng.css" rel="stylesheet" type="text/css" />
<script src="/tpl/Home/demo/common/js/gongnneg.js" type="text/javascript"></script>
<link href="/tpl/Home/demo/common/css/gongneng.css" rel="stylesheet" type="text/css" />
<link href="/tpl/Home/demo/common/css/help.css" rel="stylesheet" type="text/css" />
<link href="/tpl/Home/demo/common/css/zifei.css" rel="stylesheet" type="text/css" />
        <link href="/tpl/Home/demo/common/css/case.css" rel="stylesheet" type="text/css" />
        <link href="/tpl/Home/demo/common/css/about us.css" rel="stylesheet" type="text/css" />
<!--startof header-->
<div class="header clr">
	<div class="biaotilan clr">
        <div class="shang clr">
            <div class="zhongJian clr">
                <div class="zLeft clr">欢迎使用<?php echo ($f_siteName); ?>!</div>
                <div class="zRight clr">
                    <?php if($_SESSION[uid]==false): ?><span class="ones clr"><a href="<?php echo U('Index/login');?>">注册</a></span>
                        <span class="twos clr"><a href="<?php echo U('Index/login');?>">登录</a></span>
                    <?php else: ?>
                        你好,<a href="/#" hidefocus="true"  ><span style="color:red"><?php if($_SESSION['role_name']== 'staff'): echo (session('staff_username')); else: echo (session('uname')); endif; ?></span></a>（uid:<?php echo ($_SESSION['uid']); ?>）
                        <a href="/#" onclick="Javascript:window.open('<?php echo U('System/Admin/logout');?>','_blank')" >退出</a><?php endif; ?>   
                </div>
            </div>
        </div>
    
        <div class="xia clr">
            <div class="logo clr" style="height:60px"><a href="/"><img src="<?php echo ($f_logo); ?>" /></a></div>
            <div class="daohang1 clr">
            <ul id="topMenu">
                <li <?php if((ACTION_NAME == 'index') and (GROUP_NAME == 'Home')): ?>class="menuon"<?php endif; ?> ><a href="/" >首页</a></li>
                <li <?php if((ACTION_NAME) == "fc"): ?>class="menuon"<?php endif; ?> <?php if($zdydh1['dspl'] == 1): ?>style="display:none;"<?php endif; ?>>
                    <a <?php if($zdydh1['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($zdydh1['url'] == ''): echo U('Home/Index/fc'); else: echo ($zdydh1['url']); endif; ?>"><?php if($zdydh1['name'] == ''): ?>功能介绍<?php else: echo ($zdydh1['name']); endif; ?></a></li>
                <li <?php if((ACTION_NAME) == "about"): ?>class="menuon"<?php endif; ?> <?php if($zdydh2['dspl'] == 1): ?>style="display:none;"<?php endif; ?>>
                    <a <?php if($zdydh2['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($zdydh2['url'] == ''): echo U('Home/Index/about'); else: echo ($zdydh2['url']); endif; ?>"><?php if($zdydh2['name'] == ''): ?>关于我们<?php else: echo ($zdydh2['name']); endif; ?></a></li>
                <li <?php if((ACTION_NAME) == "price"): ?>class="menuon"<?php endif; ?> <?php if($zdydh3['dspl'] == 1): ?>style="display:none;"<?php endif; ?>>
                    <a <?php if($zdydh3['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($zdydh3['url'] == ''): echo U('Home/Index/price'); else: echo ($zdydh3['url']); endif; ?>"><?php if($zdydh3['name'] == ''): ?>资费说明<?php else: echo ($zdydh3['name']); endif; ?></a></li>
                <li <?php if((ACTION_NAME) == "common"): ?>class="menuon"<?php endif; ?> <?php if($zdydh4['dspl'] == 1): ?>style="display:none;"<?php endif; ?>>
                    <a <?php if($zdydh4['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($zdydh4['url'] == ''): echo U('Home/Index/common'); else: echo ($zdydh4['url']); endif; ?>"><?php if($zdydh4['name'] == ''): ?>产品案例<?php else: echo ($zdydh4['name']); endif; ?></a></li>
					<?php if($_SESSION['role_name']== 'staff'): ?><li <?php if((GROUP_NAME) == "User"): ?>class="menuon"<?php endif; ?>><a  href="<?php echo U('User/Function/welcome',array('id'=>session('wid'),'token'=>session('token')));?>">管理中心</a></li>
					<?php else: ?>
                <li <?php if((GROUP_NAME) == "User"): ?>class="menuon"<?php endif; ?> <?php if($zdydh5['dspl'] == 1): ?>style="display:none;"<?php endif; ?>>
                    <a <?php if($zdydh5['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($zdydh5['url'] == ''): echo U('User/Index/index'); else: echo ($zdydh5['url']); endif; ?>"><?php if($zdydh5['name'] == ''): ?>管理中心<?php else: echo ($zdydh5['name']); endif; ?></a></li><?php endif; ?>
                <li <?php if((ACTION_NAME) == "help"): ?>class="menuon"<?php endif; ?> <?php if($zdydh6['dspl'] == 1): ?>style="display:none;"<?php endif; ?>>
                    <a <?php if($zdydh6['open'] == '1'): ?>target="_blank"<?php endif; ?> href="<?php if($zdydh6['url'] == ''): echo U('Home/Index/help'); else: echo ($zdydh6['url']); endif; ?>"><?php if($zdydh6['name'] == ''): ?>帮助中心<?php else: echo ($zdydh6['name']); endif; ?></a>
                </li>            
            </ul>
            </div>
        </div>
    </div>
            <!--banner-->
            <div class="banner clr" >
            	<p  style="background:#e9cbbf;" class="zhutu clr">
                	<?php if($images['help'] == null): ?><img src="/tpl/Home/demo/common/images/images/6.png" />
                    <?php else: ?>
                        <img src="<?php echo ($images['help']); ?>" style="width:100%;height:300px;"><?php endif; ?>
                </p>
            </div>
            <!--end banner-->
        <!--ENDOF header-->
        
        <!--startof content-->
		<div class="content clr">
        	<div class="congtS clr">
            	<div class="shangLt clr">当前位置</div>
                <div class="shangRt clr">
                	<p class="oneth clr"> <a href="<?php echo ($f_siteUrl); ?>"><?php echo ($f_siteName); ?>多用户微信营销系统</a></p>
                    <p>»</p>
                    <p class="twoth clr"><a href="#"><?php if($zdydh6['name'] == ''): ?>管理中心<?php else: echo ($zdydh6['name']); endif; ?></a></p>
                </div>
            </div>
            <div class="congtX clr">
            	<p class="title clr">如何为微信公众号配置接口？</p>
                <p class="atation clr">请务必认真阅读以下2步内容，才能更有效的完成配置工作，有疑问的请联系QQ：<?php echo ($f_qq); ?>提问。
                <br/>
                <div style="display:<?php if($_GET['token'] != ''): ?>block;<?php else: ?>none;<?php endif; ?>">
                    你的接口URL是：<font color="red"><?php echo ($f_siteUrl); ?>/index.php?g=Home&m=Weixin&a=index&token=<?php echo ($wxuser["token"]); echo ($wxuser["urlsubfix"]); ?></font>
                    <br>您的token是：<font color="red">
                    <?php if($wxuser['pigsecret']){echo $wxuser['pigsecret'];}else{echo $_GET['token'];} ?></font>
                    <br>EncodingAESKey：<font color="red"><?php echo ($wxuser["aeskey"]); ?></font>
                    <br>消息加解密方式：<font color="red"><?php echo ($wxuser["encodetype"]); ?></font>
                </div>
                </p>
                <p class="first clr">第一步、在<?php echo ($f_siteName); ?>多用户微信营销系统绑定你的微信公众号。</p>
                <ul>
                	<li class="suojin clr">1、注册并登录<a href="<?php echo U('Index/login');?>"><?php echo ($f_siteName); ?>多用户微信营销系统接口平台</a></li>
                    <li class="suojin clr">2、添加公众号 → 功能管理 → 勾选要开启的功能</li>
                    <li><img src="/tpl/Home/demo/common/images/images/shiliphoto_17.png" /></li>
                    <li><img src="/tpl/Home/demo/common/images/images/shiliphoto_20.png" style="margin-bottom:40px;" /></li>
                </ul>
                <p class="first clr">第二步、到微信公众平台设置接口。</p>
                <ul>
                	<li class="suojin clr">1、登录 <a href="http://mp.weixin.qq.com/">微信公众平台</a>（<a href="http://mp.weixin.qq.com/">http://mp.weixin.qq.com/</a>），登录之后点击左侧菜单的“开发者中心”，下图红框中所示。</li>
                    <li><img src="/tpl/Home/demo/common/images/1.jpg" /></li>
                    <li class="suojin clr">2、进入开发者中心之后，点击下图中绿色的“启用”按钮（<span>如果按钮是红色的就忽略这个直接进入下一步</span>），然后在弹出的页面里点击确定，然后点击下图中的“修改配置”（<span>订阅号的开发者中心可能没有开发者ID、AppId和AppSecret，这属于正常的</span>）</li>
                    <li><img src="/tpl/Home/demo/common/images/2.jpg" /></li>
                    <li class="suojin clr">3、按照下面要求填写接口配置信息，填写后提交即可<br />
                <?php if($_GET['token'] == ''): ?><p style="font-size:14px">比如你<?php echo ($f_siteName); ?>平台上的地址是<?php echo ($f_siteUrl); ?>/index.php/api/demo</p>
                    <p style="font-size:14px">那么URL就是<?php echo ($f_siteUrl); ?>/INDEX.PHP/api/demo</p>
                <?php else: ?>
                    <p style="font-size:14px">你的URL是 <font color="red"><?php echo ($f_siteUrl); ?>/index.php?g=Home&m=Weixin&a=index&token=<?php echo ($wxuser["token"]); echo ($wxuser["urlsubfix"]); ?></font></p><?php endif; ?>
                <p style="font-size:14px">Token填写 <font color="red"><?php if($wxuser['pigsecret']){echo $wxuser['pigsecret'];}else{echo $_GET['token'];} ?></font></p>
                <p style="font-size:14px">EncodingAESKey <font color="red"><?php echo ($wxuser["aeskey"]); ?></font></p><p style="font-size:14px">消息加解密方式 <font color="red"><?php echo ($wxuser["encodetype"]); ?></font></p>
					<li><img src="/tpl/Home/demo/common/images/5.jpg" /></li>
                </ul>
            </div>
        </div>        	
        <!--endof content-->
         <!--footer-->
        <!--悬浮框-->
            <div id="leftsead">
                <ul>
                    <?php if($agentid == 0): ?><li>
                            <a href="javascript:void(0)" class="youhui">
                                <img src="/tpl/Home/demo/common/images/xufu/l02.png" width="47" height="49" class="shows" />
                                <img src="/tpl/Home/demo/common/images/xufu/a.png" width="57" height="49" class="hides"/>
                                <img src="<?php echo C('site_twm');?>" width="145" class="2wm" style="display:none;margin:-100px 57px 0 0"/>
                                <map name="taklhtml"><area shape="rect" coords="26,273,115,300 " href="#" /></map>
                            </a>
                        </li>
                        <li>
                            <a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo C('site_qq');?>&site=qq&menu=yes" target="_blank">
                                <div class="hides" style="width:161px;display:none;" id="qq">
                                    <div class="hides" id="p1">
                                        <img src="/tpl/Home/demo/common/images/xufu/ll04.png">
                                    </div>
                                    <?php if(C('site_qq') == ''): ?><div class="hides" id="p2">
                                            <span style="color:#FFF;font-size:13px">xxxxxxxxxxx</span>
                                        </div>
                                    <?php else: ?>
                                        <?php if(is_array($siteqq)): $i = 0; $__LIST__ = $siteqq;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="hides" id="p2">
        	                                    <span style="color:#FFF;font-size:13px"><?php echo ($vo); ?></span>
        	                                </div><?php endforeach; endif; else: echo "" ;endif; endif; ?>
                                </div>
                                <img src="/tpl/Home/demo/common/images/xufu/l04.png" width="47" height="49" class="shows" />
                            </a>
                        </li>
                        <li id="tel">
                            <a href="javascript:void(0)">
                                <div class="hides" style="width:161px;display:none" id="tels"/>
                                    <div class="hides" id="p1">
                                        <img src="/tpl/Home/demo/common/images/xufu/ll05.png">
                                    </div>
                                    <?php if(C('site_mp') == ''): ?><div class="hides" id="p3">
                                            <span style="color:#FFF;font-size:12px">xxxxxxxxxxx</span>
                                        </div>
                                    <?php else: ?>
                                        <?php if(is_array($sitemp)): $i = 0; $__LIST__ = $sitemp;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="hides" id="p3">
        	                                    <span style="color:#FFF;font-size:12px"><?php echo ($vo); ?></span>
        	                                </div><?php endforeach; endif; else: echo "" ;endif; endif; ?>
                                </div>
                                <img src="/tpl/Home/demo/common/images/xufu/l05.png" width="47" height="49" class="shows" />
                            </a>
                        </li>
                    <?php else: ?>
                        <li>
                            <a href="javascript:void(0)" class="youhui">
                                <img src="/tpl/Home/demo/common/images/xufu/l02.png" width="47" height="49" class="shows" />
                                <img src="/tpl/Home/demo/common/images/xufu/a.png" width="57" height="49" class="hides"/>
                                <img src="<?php echo ($qrcode); ?>" width="145" class="2wm" style="display:none;margin:-100px 57px 0 0"/>
                                <map name="taklhtml"><area shape="rect" coords="26,273,115,300 " href="#" /></map>
                            </a>
                        </li>
                        <li>
                            <a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($qq); ?>&site=qq&menu=yes" target="_blank">
                                <div class="hides" style="width:161px;display:none;" id="qq">
                                    <div class="hides" id="p1">
                                        <img src="/tpl/Home/demo/common/images/xufu/ll04.png">
                                    </div>
                                    <?php if(siteqq == ''): ?><div class="hides" id="p2">
                                            <span style="color:#FFF;font-size:13px">xxxxxxxxxxx</span>
                                        </div>
                                    <?php else: ?>
                                        <?php if(is_array($siteqq)): $i = 0; $__LIST__ = $siteqq;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="hides" id="p2">
                                                <span style="color:#FFF;font-size:13px"><?php echo ($vo); ?></span>
                                            </div><?php endforeach; endif; else: echo "" ;endif; endif; ?>
                                </div>
                                <img src="/tpl/Home/demo/common/images/xufu/l04.png" width="47" height="49" class="shows" />
                            </a>
                        </li>
                        <li id="tel">
                            <a href="javascript:void(0)">
                                <div class="hides" style="width:161px;display:none" id="tels"/>
                                    <div class="hides" id="p1">
                                        <img src="/tpl/Home/demo/common/images/xufu/ll05.png">
                                    </div>
                                    <?php if(sitemp == ''): ?><div class="hides" id="p3">
                                            <span style="color:#FFF;font-size:12px">xxxxxxxxxxx</span>
                                        </div>
                                    <?php else: ?>
                                        <?php if(is_array($sitemp)): $i = 0; $__LIST__ = $sitemp;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="hides" id="p3">
                                                <span style="color:#FFF;font-size:12px"><?php echo ($vo); ?></span>
                                            </div><?php endforeach; endif; else: echo "" ;endif; endif; ?>
                                </div>
                                <img src="/tpl/Home/demo/common/images/xufu/l05.png" width="47" height="49" class="shows" />
                            </a>
                        </li><?php endif; ?>
                    <li id="btn">
                        <a id="top_btn">
                        <div class="hides" style="width:161px;display:none"><img src="/tpl/Home/demo/common/images/xufu/ll06.png" width="161" height="49" /></div>
                        <img src="/tpl/Home/demo/common/images/xufu/l06.png" width="47" height="49" class="shows" />
                        </a>
                    </li>
                </ul>
            </div>
        	<!--leftsead end-->
        </div>
        <!--startof footer-->
        <div class="footer clr" style="padding-bottom:10px;padding-top:10px;position:fixed;bottom:0;">
        	<div class="last clr">
            	<P style="padding-bottom: 0px;">© <?php echo ($time); ?> <?php if($agenturl != ''): echo ($agenturl); else: echo C('server_topdomain'); endif; ?>   <?php if($copyright == ''): echo C('ipc'); else: echo ($copyright); endif; ?></P>
            	<?php
 if (C('server_topdomain')=='pigcms.cn'){ echo '<P style="padding:20px 0 0 0;"><a  key ="549258c23b05a3da0fbc6eb3"  logo_size="83x30"  logo_type="realname"  href="http://www.anquan.org" ><script src="http://static.anquan.org/static/outer/js/aq_auth.js"></script></a></p>'; } ?>
            	
            </div>
        </div>
    <script type="text/javascript">
        //功能更新
        $(".tuPian").mouseover(function(){
          $(this).children().children(".tubiao").hide();
          $(this).children().children(".tubiao1").show();
        });
        $(".tuPian").mouseout(function(){
          $(this).children().children(".tubiao").show();
          $(this).children().children(".tubiao1").hide();
        });
        //右侧导航 - 二维码
        $(".youhui").mouseover(function(){
            $(this).children(".2wm").show();
        })
        $(".youhui").mouseout(function(){
            $(this).children(".2wm").hide();
        });
        //右侧导航 - QQ
        var ndiv = $("#qq").children().length;;
        var npx = ((ndiv-2)*49)+"px";
        $("#qq").mouseover(function(){
            $("#tel").css("margin-top",npx);
        })
        $("#qq").mouseout(function(){
            $("#tel").css("margin-top","0px");
        })
        //右侧导航 - 电话
        var ndiv = $("#tels").children().length;
        var npx1 = ((ndiv-2)*49)+"px";
        $("#tels").mouseover(function(){
            $("#btn").css("margin-top",npx1);
        })
        $("#tels").mouseout(function(){
            $("#btn").css("margin-top","0px");
        })
    </script><!--span style="display:none"><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_5524076'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/stat.php%3Fid%3D5524076' type='text/javascript'%3E%3C/script%3E"));</script></span-->
    </body>
</html>