<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>团购</title>
    <meta name="description" content="">
    <meta name="viewport" content="initial-scale=1, width=device-width, maximum-scale=1, user-scalable=no"  />
    <meta name="viewport" content="initial-scale=1.0,user-scalable=no,maximum-scale=1" media="(device-height: 568px)" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name='apple-touch-fullscreen' content='yes'>
    <meta name="full-screen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no"/>
    <meta name="format-detection" content="address=no"/>
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="tpl/static/groupon/wap/css.css" />
<script src="/tpl/Wap/default/common/css/product/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/tpl/Wap/default/common/css/product/js/main.js"></script>
</head>
<body id='index'>
<a name="top"></a>
    <header  class="clearfix">
        <h1 class="hd-logo" style="height:21px;">
            <a class="hd-logo-text" gaevent="imt/hd/logo" href="<?php echo U('Groupon/grouponIndex',array('token'=>$token,'wecha_id'=>$wecha_id));?>" style="font-family:Microsoft Yahei">团购</a>
        </h1>
        
        <div class="hd-nav">
            <a class="icon icon-account account"  gaevent="imt/hd/account" href="<?php echo U('Groupon/my',array('token'=>$token,'wecha_id'=>$wecha_id));?>">我的订单</a>
            <a class="icon icon-wsearch" gaevent="imt/hd/search" href="<?php echo U('Groupon/search',array('token'=>$token,'wecha_id'=>$wecha_id));?>">搜索</a>
        </div>
    </header>
<style>
body,h1,h2,h3,h4,h5,h6,p,ul,ol,dl,dd,figure,textarea,input,button,select{margin:0}body{-webkit-tap-highlight-color:rgba(255,255,255,0);-webkit-user-select:none;-moz-user-select:none;-webkit-touch-callout:none;cursor:default;-webkit-text-size-adjust:100%}h1,h2,h3,h4,h5,h6{font-size:100%;font-weight:400}em,th,del,sub,var{font-style:normal;font-weight:400;text-decoration:none;background:0;font-size:100%;vertical-align:middle}ul,ol{padding-left:0;list-style-type:none}input,select{user-select:auto}input{word-break:normal}a{outline:0;text-decoration:none}strong,b{font-weight:700}em,i{font-style:normal}img{border:0}small{font-size:80%}fieldset,img{border:0}table{border-collapse:collapse;border-spacing:0}caption,th,td{font-weight:400;vertical-align:middle}ol{counter-reset:listnumbering}ol li:before{content:counter(listnumbering,decimal) ".";counter-increment:listnumbering;padding-right:3px}h1,h2,h3,div,li,p,menu,button{font-size:100%;-webkit-tap-highlight-color:transparent}a{color:#00A3CE;-webkit-tap-highlight-color:rgba(0,0,0,0)}body{color:#555;background:#FFF;font:14px/1.5 Arial,Helvetica,sans-serif}.body{background:#f7f7f7;overflow:hidden;padding:0 10px}@font-face{font-family:MIF;src:url(/tpl/static/groupon/wap/_icon.otf)}.icon-fonts{font-family:MIF;margin-right:.4em;text-align:center;line-height:1em;font-size:19px;color:silver}.ell{text-overflow:ellipsis;white-space:nowrap;overflow:hidden}.break-word{word-wrap:break-word;overflow:hidden}.m-t10{margin-top:10px}.m-t15{margin-top:15px}.p-10{padding:10px}.p-0{padding:0}.loading-common{display:none}.loading .loading-common{line-height:80px;text-align:center}.no-data{line-height:200px;text-align:center}.cf:after{display:block;content:'';clear:both;visibility:hidden}.input-common,.input-common input,.input-num input,.select-common,.text-common{width:100%;padding:0 10px;height:46px;font-size:16px;border-radius:5px;border:1px #ccc solid;background:#fff;-webkit-box-sizing:border-box;-moz-box-sizing:border-box}.input-clear{padding-right:36px;position:relative}.input-common input{border:0;padding:0;height:44px;background:transparent}.input-clear .btn-close{position:absolute;top:50%;margin-top:-8px;right:12px}.input-num{width:50px;position:relative;padding:0 42px}.input-num input{height:38px;text-align:center}.input-num-minus,.input-num-push{position:absolute;background:#52b3cc;width:36px;height:36px;top:0;text-align:center;line-height:38px;overflow:hidden;color:#fff;font-weight:700;font-size:26px;text-shadow:0 -1px 0 #000;border-radius:4px;border:1px #ccc solid}.input-num-minus{left:0}.input-num-push{right:0}.input-num-minus.disabled,.input-num-push.disabled{background:#eee}.input-captcha{padding-right:170px;position:relative}.captcha-img{width:170px;position:absolute;right:0;top:0}.captcha-img img{height:46px;vertical-align:middle;margin-left:8px}.captcha-img em{display:inline-block;line-height:1.4em;vertical-align:middle;margin-left:5px}.input-rbtn{padding-right:150px;position:relative}.input-rbtn .btn-rbtn{width:140px;font-size:14px;position:absolute;right:0;top:0;height:46px}.select-common{padding:10px}.text-common{display:inline-block;vertical-align:top;height:100px;padding:10px;resize:none}.crumbs{text-align:center;line-height:3em;border-bottom:1px solid #c6c6c6;color:#52b3cc}.crumbs em{color:#9e9b95;padding:0 8px}.crumbs strong{color:#333;font-weight:400}.tips,.tips-tip,.tips-err,.tips-ok,.tip-alert{padding:6px;margin:10px;border-radius:3px;text-align:center;color:#C97;background:#FAEED5;border:1px solid #FAEED5}.tips,.tips-tip{margin:0;border-bottom-color:#C97;border-radius:0}.tips-tip a{color:#C97}.tips-ok{color:#509313;background:#CBE987;border-color:#509313}.tips-err{color:#D01E5E;background:#FFDCD7;border-color:#F1A2B2;-webkit-animation-name:shake;-webkit-animation-duration:.5s;-webkit-animation-iteration-count:1;-webkit-animation-direction:alternate;-webkit-animation-timing-function:ease-in-out}.shake{-webkit-animation-name:shake;animation-name:shake}@-webkit-keyframes shake{0%,100%{-webkit-transform:translateX(0)}10%,30%,50%,70%,90%{-webkit-transform:translateX(-10px)}20%,40%,60%,80%{-webkit-transform:translateX(10px)}}@keyframes shake{0%,100%{transform:translateX(0)}10%,30%,50%,70%,90%{transform:translateX(-10px)}20%,40%,60%,80%{transform:translateX(10px)}}.box-style,.box-style2{padding:8px;margin:10px 0;background:#FFF;color:#333;border:1px solid #CCC;border-radius:5px;box-shadow:2px 2px 4px #ededed;-webkit-box-shadow:2px 2px 4px #ededed;-moz-box-shadow:2px 2px 4px #ededed}.box-style h3,.box-style2 h3{font-size:16px;padding:0 0 10px;margin:0 0 8px;border-bottom:1px dashed #e5e5e5}.box-cpd{padding-top:0;padding-bottom:0}.box-style dt{float:left;width:80px;clear:both;padding:5px 0;text-indent:5px}.box-style dt:after{content:":"}.box-style dd{margin-left:85px;padding:5px 0}button::-moz-focus-inner,input[type=button]::-moz-focus-inner{border:0;padding:0}.btn,.btn-block{display:inline-block;font-size:14px;text-align:center;border:1px solid #76af42;cursor:pointer;padding:.45em 1.65em;color:#FFF;line-height:normal;border-radius:4px;background:-moz-linear-gradient(top,#A6BF53,#9DB64A);background:-webkit-linear-gradient(top,#A6BF53,#9DB64A)}.btn-block{display:block;line-height:46px;padding:0;font-size:20px;background:#A6C04C;border:1px solid #91A351;box-shadow:0 1px 0 rgba(255,255,255,.3) inset,1px 1px 4px #CCC}button.btn-block,input.btn-block{width:100%}.btn-weak{color:#6C6C6C;border-color:#CCC;background:-moz-linear-gradient(top,#FCFCFC,#F0F0F0);background:-webkit-linear-gradient(top,#FCFCFC,#F0F0F0)}.btn-strong{border-color:#f89406;background:-moz-linear-gradient(top,#FBB450,#F89406);background:-webkit-linear-gradient(top,#FBB450,#F89406)}.btn-complementary{border-color:#4596AB;background:#52B3CC}.btn-disable{color:#fff;border-color:#797979;background:#999;box-shadow:0 -2px 0 #999 inset}.btn-close{width:16px;height:16px;display:inline-block;background:#999;color:#fff;text-align:center;border-radius:50%;font:16px/17px Arial;cursor:pointer}.head_tips{text-align:center;font-size:18px}.head_tips em{display:block;font-size:12px;margin-top:6px}.head_icon{color:#FAA62F;font-size:42px;position:relative;top:4px}.ml-item{display:block;text-decoration:none;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;padding:.9em 2em .6em .6em;text-shadow:0 1px 0 #FFF;border-top:1px dashed #E5E5E5;position:relative;color:#666}.ml-box{position:relative;overflow:hidden;padding:10px;border-bottom:1px solid #E5E5E5;background:#fff;display:block;color:#666}.ml-img,.ml-img>img{width:122px;height:74px}.ml-img{float:left;padding:2px;overflow:hidden;border:1px solid #D6D6D6;border-radius:2px;box-shadow:0 0 2px 1px #EFEFEF inset,0 0 2px 1px #E7E7E7;margin-right:8px}.ml-des{color:#999;font-size:12px}.ml-des h4{font-weight:700;padding-top:1px;color:#000}.ml-des b{color:#CE2C13}.ml-info{display:block;margin:2px 0 5px}.ml-num{position:absolute;right:0}.ml-link .ml-item:after{content:'ᐳ';position:absolute;right:10px;top:50%;font-family:MIF;color:#D5D5D5;font-size:14px;margin-top:-11px}.ml-kv .ml-item span{position:absolute;right:0;color:#52b3cc}.ml-kv.ml-link .ml-item span{right:28px;width:180px;text-align:right}.ml-kv .ml-item:after{color:#52b3cc}.ml-hd{display:block;line-height:1.3em;overflow:hidden;white-space:nowrap;text-overflow:ellipsis}.ml-first{border-top:0}.ml-grid>li{width:33.33%;float:left}.ml-grid .ml-item{border-width:0 1px 1px 0}.ml-sel{position:absolute;left:0;top:0;width:100%;height:100%;font-size:2em;border:1px solid #fff;opacity:0}.mg-item,.mg-1-2,.mg-1-3,.mg-2-3,.mg-1-4,.mg-3-4{float:left}ul.mg-2 li,ol.mg-2 li,ul.mg-3 li,ol.mg-3 li,ul.mg-4 li,ol.mg-4 li{float:left;margin:0;list-style:none}.mg-1-2,.mg-2 .mg-item,ul.mg-2 li,ol.mg-2 li{width:50%}.mg-1-3,.mg-3 .mg-item,ul.mg-3 li,ol.mg-3 li{width:33.333%}.mg-1-4,.mg-4 .mg-item,ul.mg-4 li,ol.mg-4 li{width:25%}.mg-2-3{width:66.666%}.mg-3-4{width:75%}.mh{margin:14px 0 6px;position:relative}.icon{height:18px;display:inline-block;background-image:url(/tpl/static/groupon/wap/i-all.png);background-size:250px 150px;background-color:transparent;background-repeat:no-repeat}.icon-account{background-position:-33px 2px}.icon-wsearch{background-position:-90px 2px}.icon-top{height:30px;line-height:30px;padding:0 10px 0 25px;background-position:-192px -40px}.icon-city{height:48px;background-position:-100px -33px}.icon-gsearch{width:16px;height:16px;background-position:-50px -50px}.icon-arrow{width:12px;height:15px;background-position:-1px -51px}.form dt{float:left;width:50px;line-height:38px;clear:both}.form dt:after{content:':'}.form-nof dt{float:none}.form dd{overflow:hidden;line-height:38px;margin-bottom:8px}.form dd>em{font-size:12px;padding-top:6px;display:block;color:#999;line-height:1.4em}.form dd.form-err em{color:red}.form-nodt dt{display:none}.form-cldt dt{float:none;width:100%}.form-cldt dd{overflow:visible}.form-hide{overflow:hidden}.form .form-hide:after{content:''}.form-btn{margin-top:10px}header{position:relative;color:#FFF;height:50px;text-align:center;background:#52B3CC;border-bottom:1px solid #348DA7;background:-moz-linear-gradient(top,#69C2D6,#50B1C8);background:-webkit-gradient(linear,0 0,0 100%,from(#69C2D6),to(#50B1C8))}header h1{font:700 20px/50px Arial;text-shadow:0 1px 1px #398091}.hd-logo{float:left;font-size:24px}.hd-logo-text{display:block;padding:0 12px}head,header a{color:#FFF;text-shadow:0 1px 1px #348DA7}.header-qq .hd-logo{line-height:22px;width:90px;text-align:center;font-size:20px;overflow:hidden}.header-qq .hd-logo-text{font-size:20px;padding-top:8px}.header-qq .hd-logo sub{font-size:10px;line-height:10px;display:inline-block;float:left}.hd-city{float:left;padding:19px 5px 10px;text-shadow:0 1px 1px #348DA7}.hd-city:after{content:'';display:inline-block;width:0;height:0;margin-left:4px;border:4px solid transparent;border-top-color:#FFF}.hd-nav{float:right;font-size:12px;margin:6px 4px 0 0}.hd-nav a{padding:22px 8px 0}.hd-nav .account{padding:22px 2px 0}.left-box,.right-box{position:absolute;top:10px}.right-box{right:8px}.left-box{left:8px}.hd-lbtn{position:relative;display:block}.hd-lbtn:before{content:'';display:inline-block;width:20px;height:20px;background:-moz-linear-gradient(-45deg,#5bbfd8,#449fb6);background:-webkit-linear-gradient(-45deg,#5bbfd8,#449fb6);border:1px solid #2c96b2;-webkit-transform-origin:0 0;-moz-transform-origin:0 0;-webkit-transform:scaleX(0.8) rotate(45deg);-moz-transform:scaleX(0.8) rotate(45deg);border-radius:3px 2px;position:absolute;left:13px;top:-1px}.hd-rbtn,.hd-lbtn span{display:inline-block;height:27px;line-height:27px;padding:0 10px;background:-moz-linear-gradient(top,#5bbfd8,#449fb6);background:-webkit-linear-gradient(top,#5bbfd8,#449fb6);border:1px solid #2c96b2;border-radius:5px}.hd-lbtn span{padding:0 10px 0 5px;margin-left:12px;position:relative;border-left:0;border-radius:2px 5px 5px 2px}.ft-nav{border-top:1px #D5D5D5 solid;background:-moz-linear-gradient(top,#CCC,#FFF);background:-webkit-gradient(linear,0 0,0 100%,from(#F0F0F0),to(#FFF))}.ft-nav>ul{font-size:0;text-align:center;height:35px;overflow:hidden;border-top:1px #FFF solid}.ft-nav li{float:left;width:20%;font-size:12px;line-height:36px;position:relative}.ft-nav a{display:block}.ft-nav a:after{content:'-';height:28px;width:1px;background:#CCC;position:absolute;right:0;top:4px;font-size:0;text-indent:-9999px;background:-moz-linear-gradient(top,#FFF,#CCC,#FFF);background:-webkit-gradient(linear,0 0,0 100%,from(#FFF),to(#FFF),color-stop(0.5,#CCC))}.ft-nav li:last-child a:after{width:0}.ft-partner{padding:0 8px;color:#999}.ft-partner>a{color:#999;margin:0 5px 0 0}.ft-partner>strong,.ft-partner>ul,.ft-partner>ul>li{display:inline-block;font-size:12px;font-weight:400}.ft-copyright{position:relative;text-align:center;width:100%;font-size:12px;color:#999;height:30px}.ft-copyright-text{line-height:23px;background:#FFF;padding:0 6px;position:relative;top:-11px}.ft-copyright-text>a{color:#999}.ft-copyright:before{display:block;content:"";background-image:-webkit-gradient(radial,center center,0,center center,460,from(#b4b4b4),to(#efefef));background-image:-webkit-radial-gradient(circle,#b4b4b4,#efefef);background-image:-moz-radial-gradient(circle,#b4b4b4,#efefef);background-image:radial-gradient(circle,#b4b4b4,#efefef);background-repeat:no-repeat;height:1px;overflow:hidden;margin-top:12px}.ft-wrap{height:48px;width:100%;border-top:1px solid #D5D5D5}.ft-wrap>div{line-height:48px}.ft-user{float:left;padding:0 0 0 10px}.ft-city{float:right;padding:0 10px 0 0}.ft-user-exit{margin:0 0 0 8px}.ft-city-change{padding:0 0 0 14px;margin:0 0 0 6px}.ft-quick-login{line-height:48px;padding-left:10px;text-align:left}.ft-quick-login a{font-size:16px}.ft-account{float:left;padding:0 0 0 10px}.pageinator{height:48px;position:relative;padding:0 8px;background:#f8f8f8;border-top:1px solid #EFEFEF;border-bottom:1px solid #FFF}.pg-next,.pg-top{display:inline-block;line-height:48px}.pg-next{float:left}.pg-next>span{margin-right:10px}.pg-top{float:right}.choose{position:absolute;clip:rect(0 0 0 0)}.choose:checked+.input-diycheckbox.checked,.choose:checked+.input-diyradio.checked{background:#00a3ce;border-color:#028eb2}.input-diycheckbox,.input-diyradio{border:1px solid #ccc;display:inline-block;width:20px;height:20px;position:relative;vertical-align:middle;background:#fff;border-radius:3px;margin-right:3px;top:-2px}.input-diycheckbox.checked:after,.input-diyradio.checked:after{content:"";display:inline-block;width:10px;height:5px;border:0 solid #fff;border-width:0 0 3px 3px;position:absolute;-webkit-transform:rotate(-45deg);-moz-transform:rotate(-45deg);-ms-transform:rotate(-45deg);top:4px;left:3px}.msg-bg{background:rgba(0,0,0,.5);position:absolute;top:0;left:0;width:100%;z-index:998}.msg-doc{position:fixed;width:210px;top:-9999px;left:50%;margin-left:-135px;background:#fff;padding:14px 30px;z-index:999}.msg-doc .btn{font-size:18px;padding:.4em 0}.msg-hd{display:none}.msg-bd{padding:6px;font-size:14px;padding:.5em 0;margin-bottom:.5em;line-height:1.3em}.msg-ft{text-align:center}.msg-btn-ok{float:right;width:130px}.msg-btn-cancel{float:left;width:70px}.msg-alert .msg-btn-ok{width:210px} .ml-link .ml-noafter:after{display:none}.my-account{position:relative;background:-moz-linear-gradient(top,#e1dace,#dfc8b4);background:-webkit-linear-gradient(top,#e1dace,#dfc8b4);border-bottom:1px solid #C0BBB2;display:block;height:79px;width:100%}.my-account>img{float:right}.my-account:after{content:'ᐳ';font-family:MIF;position:absolute;right:23px;top:50%;color:#666;font-size:18px;margin-top:-11px}.my-account-username{font:16px Arial,Helvetica,sans-serif;position:absolute;top:22px;left:28px;color:#333}.my-account-remain{position:absolute;top:45px;left:28px;font:12px Arial,Helvetica,sans-serif;color:#666}.my-count .amount{position:absolute;right:30px;top:10px}.my-mt a{position:relative;text-align:center;display:block;margin-top:10px;height:24px;border-right:1px solid #e5e5e5;margin-bottom:31px}.my-mt li:last-child a{border:0}.my-mt i{display:block;font-size:23px}.my-mt span{display:block;color:#666;font-size:12px}.my-mt em{min-width:20px;color:#fff;background:#f49231;position:absolute;border-radius:3px;top:-2px;left:50%;margin-left:3px;font:11px/14px arial;box-shadow:0 1px 2px 0 #999;display:none}.my-mt .icon-font{font-family:MIF;color:#52b3cc;font-size:24px;line-height:30px}.my-setting .icon-fonts{width:30px;margin:0;display:inline-block;text-align:left;color:#757575}.my-setting .modify{position:absolute;right:30px;top:50%;margin-top:-9px;color:#52b3cc}.address-add{display:block;color:#333}.plus-icon:before{content:'+';width:17px;border:2px solid silver;display:inline-block;text-align:center;margin-right:10px;border-radius:3px;color:silver;font:400 bold 16px/17px Arial}.address-contact{position:relative}.address-contact dt{float:left;width:70px;clear:both;padding:5px 0;text-indent:5px}.address-contact dt:after{content:":"}.address-contact dd{margin-left:80px;padding:5px 0}.address-action{margin-top:10px;padding-top:12px;border-top:1px dashed #e5e5e5;text-align:center}.address-default{background:#F49231;color:#FFF;position:absolute;top:-1px;right:10px;font-size:12px;padding:5px 8px 6px}.address-default:after,.address-default:before{content:'';width:0;height:0;border-style:solid;border-width:5px 16px;border-color:transparent transparent #FFF;position:absolute;bottom:0}.address-default:before{left:0}.address-default:after{right:0}.address-edit-pcd .select-common{width:95%}.address-edit-pcd .mg-1-3{text-align:center}.address-edit-pcd .mg-1-3:first-child{text-align:left}.address-edit-pcd .mg-1-3:last-child{text-align:right}
</style>
<div>
    <a class="my-account" href="<?php echo U('Groupon/myOrders',array('token'=>$token,'wecha_id'=>$wecha_id));?>">
        <p class="my-account-username">我的订单列表</p>
        <p class="my-account-remain">订单总数：<?php echo ($ordersCount); ?></p>
        <img src="tpl/static/groupon/wap/my-photo.png" height="79">
    </a>
</div>


<div id="orders_count" class="body my-count">
   <div class="box-style box-cpd">
       <ul class="mg-4 my-mt cf">
           <li>
               <a href="<?php echo U('Groupon/myOrders',array('token'=>$token,'wecha_id'=>$wecha_id,'paid'=>0));?>">
                   <i class="icon-font">☰</i>
                   <span>待付款</span>
                   <em data-key="unpaid" style="display: inline; -webkit-transform-origin: 0px 0px; opacity: 1; -webkit-transform: scale(1, 1);"><?php echo ($unpaidCount); ?></em>
               </a>
           </li>
           <li>
               <a href="<?php echo U('Groupon/myOrders',array('token'=>$token,'wecha_id'=>$wecha_id,'used'=>0));?>">
                   <i class="icon-font">☱</i>
                   <span>未消费</span>
					<em data-key="unpaid" style="display: inline; -webkit-transform-origin: 0px 0px; opacity: 1; -webkit-transform: scale(1, 1);"><?php echo ($unusedCount); ?></em>
               </a>
           </li>
           <li>
               <a href="<?php echo U('Groupon/myOrders',array('token'=>$token,'wecha_id'=>$wecha_id,'unpaid'=>0));?>">
                   <i class="icon-font">☲</i>
                   <span>全部订单</span>
					<em data-key="unpaid" style="display: inline; -webkit-transform-origin: 0px 0px; opacity: 1; -webkit-transform: scale(1, 1);"><?php echo ($ordersCount); ?></em>
               </a>
           </li>
           <li>
               <a href="<?php echo U('Groupon/myOrders',array('token'=>$token,'wecha_id'=>$wecha_id,'used'=>1));?>">
                   <i class="icon-font">☳</i>
                   <span>已消费</span>
					<em data-key="unpaid" style="display: inline; -webkit-transform-origin: 0px 0px; opacity: 1; -webkit-transform: scale(1, 1);"><?php echo ($usedCount); ?></em>
               </a>
           </li>
       </ul>

       <ul class="ml-link">
           <li>
               <a class="ml-item" href="<?php echo U('Groupon/myOrders',array('token'=>$token,'wecha_id'=>$wecha_id));?>">全部订单<em data-key="all" class="amount" style="-webkit-transform-origin: 0px 0px; opacity: 1; -webkit-transform: scale(1, 1);"><?php echo ($ordersCount); ?></em></a>
           </li>
           <li>
               <a class="ml-item" href="<?php echo U('Groupon/myOrders',array('token'=>$token,'wecha_id'=>$wecha_id,'used'=>0));?>">未消费<em data-key="lotterys" class="amount" style="-webkit-transform-origin: 0px 0px; opacity: 1; -webkit-transform: scale(1, 1);"><?php echo ($unusedCount); ?></em></a>
           </li>
       </ul>
   </div>


</div>
<nav class="pageinator clearfix">
    <div id="nav-page" class="pg-next">
    </div>
    <?php if($hideTopButton != 1): ?><div id="nav-top" class="pg-top">
        <span class="btn btn-top"><span class="icon icon-top"><a href="#top" style="color:#666">回到顶部</a></span></span>
    </div><?php endif; ?>
</nav>
<footer>
<div class="ft-copyright"><span class="ft-copyright-text"> &copy;<?php echo date('Y',time());?> </span></div>
</footer>

<script type="text/javascript">
window.shareData = {  
            "moduleName":"Groupon",
            "moduleID":"0",
            "imgUrl": "", 
            "sendFriendLink": "<?php echo ($f_siteUrl); echo U('Groupon/grouponIndex',array('token'=>$token));?>",
            "tTitle": "团购",
            "tContent": ""
};
</script>
<?php echo ($shareScript); ?>
</body>
</html>