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
<style>
body,h1,h2,h3,h4,h5,h6,p,ul,ol,dl,dd,figure,textarea,input,button,select{margin:0}body{-webkit-tap-highlight-color:rgba(255,255,255,0);-webkit-user-select:none;-moz-user-select:none;-webkit-touch-callout:none;cursor:default;-webkit-text-size-adjust:100%}h1,h2,h3,h4,h5,h6{font-size:100%;font-weight:400}em,th,del,sub,var{font-style:normal;font-weight:400;text-decoration:none;background:0;font-size:100%;vertical-align:middle}ul,ol{padding-left:0;list-style-type:none}input,select{user-select:auto}input{word-break:normal}a{outline:0;text-decoration:none}strong,b{font-weight:700}em,i{font-style:normal}img{border:0}small{font-size:80%}fieldset,img{border:0}table{border-collapse:collapse;border-spacing:0}caption,th,td{font-weight:400;vertical-align:middle}ol{counter-reset:listnumbering}ol li:before{content:counter(listnumbering,decimal) ".";counter-increment:listnumbering;padding-right:3px}h1,h2,h3,div,li,p,menu,button{font-size:100%;-webkit-tap-highlight-color:transparent}a{color:#00A3CE;-webkit-tap-highlight-color:rgba(0,0,0,0)}body{color:#555;background:#FFF;font:14px/1.5 Arial,Helvetica,sans-serif}.body{background:#f7f7f7;overflow:hidden;padding:0 10px}@font-face{font-family:MIF;src:url(/tpl/static/groupon/wap/_icon.otf?v3)}.icon-fonts{font-family:MIF;margin-right:.4em;text-align:center;line-height:1em;font-size:19px;color:silver}.ell{text-overflow:ellipsis;white-space:nowrap;overflow:hidden}.break-word{word-wrap:break-word;overflow:hidden}.m-t10{margin-top:10px}.m-t15{margin-top:15px}.p-10{padding:10px}.p-0{padding:0}.loading-common{display:none}.loading .loading-common{line-height:80px;text-align:center}.no-data{line-height:200px;text-align:center}.cf:after{display:block;content:'';clear:both;visibility:hidden}.input-common,.input-common input,.input-num input,.select-common,.text-common{width:100%;padding:0 10px;height:46px;font-size:16px;border-radius:5px;border:1px #ccc solid;background:#fff;-webkit-box-sizing:border-box;-moz-box-sizing:border-box}.input-clear{padding-right:36px;position:relative}.input-common input{border:0;padding:0;height:44px;background:transparent}.input-clear .btn-close{position:absolute;top:50%;margin-top:-8px;right:12px}.input-num{width:50px;position:relative;padding:0 42px}.input-num input{height:38px;text-align:center}.input-num-minus,.input-num-push{position:absolute;background:#52b3cc;width:36px;height:36px;top:0;text-align:center;line-height:38px;overflow:hidden;color:#fff;font-weight:700;font-size:26px;text-shadow:0 -1px 0 #000;border-radius:4px;border:1px #ccc solid}.input-num-minus{left:0}.input-num-push{right:0}.input-num-minus.disabled,.input-num-push.disabled{background:#eee}.input-captcha{padding-right:170px;position:relative}.captcha-img{width:170px;position:absolute;right:0;top:0}.captcha-img img{height:46px;vertical-align:middle;margin-left:8px}.captcha-img em{display:inline-block;line-height:1.4em;vertical-align:middle;margin-left:5px}.input-rbtn{padding-right:150px;position:relative}.input-rbtn .btn-rbtn{width:140px;font-size:14px;position:absolute;right:0;top:0;height:46px}.select-common{padding:10px}.text-common{display:inline-block;vertical-align:top;height:100px;padding:10px;resize:none}.crumbs{text-align:center;line-height:3em;border-bottom:1px solid #c6c6c6;color:#52b3cc}.crumbs em{color:#9e9b95;padding:0 8px}.crumbs strong{color:#333;font-weight:400}.tips,.tips-tip,.tips-err,.tips-ok,.tip-alert{padding:6px;margin:10px;border-radius:3px;text-align:center;color:#C97;background:#FAEED5;border:1px solid #FAEED5}.tips,.tips-tip{margin:0;border-bottom-color:#C97;border-radius:0}.tips-tip a{color:#C97}.tips-ok{color:#509313;background:#CBE987;border-color:#509313}.tips-err{color:#D01E5E;background:#FFDCD7;border-color:#F1A2B2;-webkit-animation-name:shake;-webkit-animation-duration:.5s;-webkit-animation-iteration-count:1;-webkit-animation-direction:alternate;-webkit-animation-timing-function:ease-in-out}.shake{-webkit-animation-name:shake;animation-name:shake}@-webkit-keyframes shake{0%,100%{-webkit-transform:translateX(0)}10%,30%,50%,70%,90%{-webkit-transform:translateX(-10px)}20%,40%,60%,80%{-webkit-transform:translateX(10px)}}@keyframes shake{0%,100%{transform:translateX(0)}10%,30%,50%,70%,90%{transform:translateX(-10px)}20%,40%,60%,80%{transform:translateX(10px)}}.box-style,.box-style2{padding:8px;margin:10px 0;background:#FFF;color:#333;border:1px solid #CCC;border-radius:5px;box-shadow:2px 2px 4px #ededed;-webkit-box-shadow:2px 2px 4px #ededed;-moz-box-shadow:2px 2px 4px #ededed}.box-style h3,.box-style2 h3{font-size:16px;padding:0 0 10px;margin:0 0 8px;border-bottom:1px dashed #e5e5e5}.box-cpd{padding-top:0;padding-bottom:0}.box-style dt{float:left;width:80px;clear:both;padding:5px 0;text-indent:5px}.box-style dt:after{content:":"}.box-style dd{margin-left:85px;padding:5px 0}button::-moz-focus-inner,input[type=button]::-moz-focus-inner{border:0;padding:0}.btn,.btn-block{display:inline-block;font-size:14px;text-align:center;border:1px solid #76af42;cursor:pointer;padding:.45em 1.65em;color:#FFF;line-height:normal;border-radius:4px;background:-moz-linear-gradient(top,#A6BF53,#9DB64A);background:-webkit-linear-gradient(top,#A6BF53,#9DB64A)}.btn-block{display:block;line-height:46px;padding:0;font-size:20px;background:#A6C04C;border:1px solid #91A351;box-shadow:0 1px 0 rgba(255,255,255,.3) inset,1px 1px 4px #CCC}button.btn-block,input.btn-block{width:100%}.btn-weak{color:#6C6C6C;border-color:#CCC;background:-moz-linear-gradient(top,#FCFCFC,#F0F0F0);background:-webkit-linear-gradient(top,#FCFCFC,#F0F0F0)}.btn-strong{border-color:#f89406;background:-moz-linear-gradient(top,#FBB450,#F89406);background:-webkit-linear-gradient(top,#FBB450,#F89406)}.btn-complementary{border-color:#4596AB;background:#52B3CC}.btn-disable{color:#fff;border-color:#797979;background:#999;box-shadow:0 -2px 0 #999 inset}.btn-close{width:16px;height:16px;display:inline-block;background:#999;color:#fff;text-align:center;border-radius:50%;font:16px/17px Arial;cursor:pointer}.head_tips{text-align:center;font-size:18px}.head_tips em{display:block;font-size:12px;margin-top:6px}.head_icon{color:#FAA62F;font-size:42px;position:relative;top:4px}.ml-item{display:block;text-decoration:none;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;padding:.9em 2em .6em .6em;text-shadow:0 1px 0 #FFF;border-top:1px dashed #E5E5E5;position:relative;color:#666}.ml-box{position:relative;overflow:hidden;padding:10px;border-bottom:1px solid #E5E5E5;background:#fff;display:block;color:#666}.ml-img,.ml-img>img{width:122px;height:74px}.ml-img{float:left;padding:2px;overflow:hidden;border:1px solid #D6D6D6;border-radius:2px;box-shadow:0 0 2px 1px #EFEFEF inset,0 0 2px 1px #E7E7E7;margin-right:8px}.ml-des{color:#999;font-size:12px}.ml-des h4{font-weight:700;padding-top:1px;color:#000}.ml-des b{color:#CE2C13}.ml-info{display:block;margin:2px 0 5px}.ml-num{position:absolute;right:0}.ml-link .ml-item:after{content:'ᐳ';position:absolute;right:10px;top:50%;font-family:MIF;color:#D5D5D5;font-size:14px;margin-top:-11px}.ml-kv .ml-item span{position:absolute;right:0;color:#52b3cc}.ml-kv.ml-link .ml-item span{right:28px;width:180px;text-align:right}.ml-kv .ml-item:after{color:#52b3cc}.ml-hd{display:block;line-height:1.3em;overflow:hidden;white-space:nowrap;text-overflow:ellipsis}.ml-first{border-top:0}.ml-grid>li{width:33.33%;float:left}.ml-grid .ml-item{border-width:0 1px 1px 0}.ml-sel{position:absolute;left:0;top:0;width:100%;height:100%;font-size:2em;border:1px solid #fff;opacity:0}.mg-item,.mg-1-2,.mg-1-3,.mg-2-3,.mg-1-4,.mg-3-4{float:left}ul.mg-2 li,ol.mg-2 li,ul.mg-3 li,ol.mg-3 li,ul.mg-4 li,ol.mg-4 li{float:left;margin:0;list-style:none}.mg-1-2,.mg-2 .mg-item,ul.mg-2 li,ol.mg-2 li{width:50%}.mg-1-3,.mg-3 .mg-item,ul.mg-3 li,ol.mg-3 li{width:33.333%}.mg-1-4,.mg-4 .mg-item,ul.mg-4 li,ol.mg-4 li{width:25%}.mg-2-3{width:66.666%}.mg-3-4{width:75%}.mh{margin:14px 0 6px;position:relative}.icon{height:18px;display:inline-block;background-image:url(/tpl/static/groupon/wap/i-all.png);background-size:250px 150px;background-color:transparent;background-repeat:no-repeat}.icon-account{background-position:-33px 2px}.icon-wsearch{background-position:-90px 2px}.icon-top{height:30px;line-height:30px;padding:0 10px 0 25px;background-position:-192px -40px}.icon-city{height:48px;background-position:-100px -33px}.icon-gsearch{width:16px;height:16px;background-position:-50px -50px}.icon-arrow{width:12px;height:15px;background-position:-1px -51px}.form dt{float:left;width:50px;line-height:38px;clear:both}.form dt:after{content:':'}.form-nof dt{float:none}.form dd{overflow:hidden;line-height:38px;margin-bottom:8px}.form dd>em{font-size:12px;padding-top:6px;display:block;color:#999;line-height:1.4em}.form dd.form-err em{color:red}.form-nodt dt{display:none}.form-cldt dt{float:none;width:100%}.form-cldt dd{overflow:visible}.form-hide{overflow:hidden}.form .form-hide:after{content:''}.form-btn{margin-top:10px}header{position:relative;color:#FFF;height:50px;text-align:center;background:#52B3CC;border-bottom:1px solid #348DA7;background:-moz-linear-gradient(top,#69C2D6,#50B1C8);background:-webkit-gradient(linear,0 0,0 100%,from(#69C2D6),to(#50B1C8))}header h1{font:700 20px/50px Arial;text-shadow:0 1px 1px #398091}.hd-logo{float:left;font-size:24px}.hd-logo-text{display:block;padding:0 12px}head,header a{color:#FFF;text-shadow:0 1px 1px #348DA7}.header-qq .hd-logo{line-height:22px;width:90px;text-align:center;font-size:20px;overflow:hidden}.header-qq .hd-logo-text{font-size:20px;padding-top:8px}.header-qq .hd-logo sub{font-size:10px;line-height:10px;display:inline-block;float:left}.hd-city{float:left;padding:19px 5px 10px;text-shadow:0 1px 1px #348DA7}.hd-city:after{content:'';display:inline-block;width:0;height:0;margin-left:4px;border:4px solid transparent;border-top-color:#FFF}.hd-nav{float:right;font-size:12px;margin:6px 4px 0 0}.hd-nav a{padding:22px 8px 0}.hd-nav .account{padding:22px 2px 0}.left-box,.right-box{position:absolute;top:10px}.right-box{right:8px}.left-box{left:8px}.hd-lbtn{position:relative;display:block}.hd-lbtn:before{content:'';display:inline-block;width:20px;height:20px;background:-moz-linear-gradient(-45deg,#5bbfd8,#449fb6);background:-webkit-linear-gradient(-45deg,#5bbfd8,#449fb6);border:1px solid #2c96b2;-webkit-transform-origin:0 0;-moz-transform-origin:0 0;-webkit-transform:scaleX(0.8) rotate(45deg);-moz-transform:scaleX(0.8) rotate(45deg);border-radius:3px 2px;position:absolute;left:13px;top:-1px}.hd-rbtn,.hd-lbtn span{display:inline-block;height:27px;line-height:27px;padding:0 10px;background:-moz-linear-gradient(top,#5bbfd8,#449fb6);background:-webkit-linear-gradient(top,#5bbfd8,#449fb6);border:1px solid #2c96b2;border-radius:5px}.hd-lbtn span{padding:0 10px 0 5px;margin-left:12px;position:relative;border-left:0;border-radius:2px 5px 5px 2px}.ft-nav{border-top:1px #D5D5D5 solid;background:-moz-linear-gradient(top,#CCC,#FFF);background:-webkit-gradient(linear,0 0,0 100%,from(#F0F0F0),to(#FFF))}.ft-nav>ul{font-size:0;text-align:center;height:35px;overflow:hidden;border-top:1px #FFF solid}.ft-nav li{float:left;width:20%;font-size:12px;line-height:36px;position:relative}.ft-nav a{display:block}.ft-nav a:after{content:'-';height:28px;width:1px;background:#CCC;position:absolute;right:0;top:4px;font-size:0;text-indent:-9999px;background:-moz-linear-gradient(top,#FFF,#CCC,#FFF);background:-webkit-gradient(linear,0 0,0 100%,from(#FFF),to(#FFF),color-stop(0.5,#CCC))}.ft-nav li:last-child a:after{width:0}.ft-partner{padding:0 8px;color:#999}.ft-partner>a{color:#999;margin:0 5px 0 0}.ft-partner>strong,.ft-partner>ul,.ft-partner>ul>li{display:inline-block;font-size:12px;font-weight:400}.ft-copyright{position:relative;text-align:center;width:100%;font-size:12px;color:#999;height:30px}.ft-copyright-text{line-height:23px;background:#FFF;padding:0 6px;position:relative;top:-11px}.ft-copyright-text>a{color:#999}.ft-copyright:before{display:block;content:"";background-image:-webkit-gradient(radial,center center,0,center center,460,from(#b4b4b4),to(#efefef));background-image:-webkit-radial-gradient(circle,#b4b4b4,#efefef);background-image:-moz-radial-gradient(circle,#b4b4b4,#efefef);background-image:radial-gradient(circle,#b4b4b4,#efefef);background-repeat:no-repeat;height:1px;overflow:hidden;margin-top:12px}.ft-wrap{height:48px;width:100%;border-top:1px solid #D5D5D5}.ft-wrap>div{line-height:48px}.ft-user{float:left;padding:0 0 0 10px}.ft-city{float:right;padding:0 10px 0 0}.ft-user-exit{margin:0 0 0 8px}.ft-city-change{padding:0 0 0 14px;margin:0 0 0 6px}.ft-quick-login{line-height:48px;padding-left:10px;text-align:left}.ft-quick-login a{font-size:16px}.ft-account{float:left;padding:0 0 0 10px}.pageinator{height:48px;position:relative;padding:0 8px;background:#f8f8f8;border-top:1px solid #EFEFEF;border-bottom:1px solid #FFF}.pg-next,.pg-top{display:inline-block;line-height:48px}.pg-next{float:left}.pg-next>span{margin-right:10px}.pg-top{float:right}.choose{position:absolute;clip:rect(0 0 0 0)}.choose:checked+.input-diycheckbox.checked,.choose:checked+.input-diyradio.checked{background:#00a3ce;border-color:#028eb2}.input-diycheckbox,.input-diyradio{border:1px solid #ccc;display:inline-block;width:20px;height:20px;position:relative;vertical-align:middle;background:#fff;border-radius:3px;margin-right:3px;top:-2px}.input-diycheckbox.checked:after,.input-diyradio.checked:after{content:"";display:inline-block;width:10px;height:5px;border:0 solid #fff;border-width:0 0 3px 3px;position:absolute;-webkit-transform:rotate(-45deg);-moz-transform:rotate(-45deg);-ms-transform:rotate(-45deg);top:4px;left:3px}.msg-bg{background:rgba(0,0,0,.5);position:absolute;top:0;left:0;width:100%;z-index:998}.msg-doc{position:fixed;width:210px;top:-9999px;left:50%;margin-left:-135px;background:#fff;padding:14px 30px;z-index:999}.msg-doc .btn{font-size:18px;padding:.4em 0}.msg-hd{display:none}.msg-bd{padding:6px;font-size:14px;padding:.5em 0;margin-bottom:.5em;line-height:1.3em}.msg-ft{text-align:center}.msg-btn-ok{float:right;width:130px}.msg-btn-cancel{float:left;width:70px}.msg-alert .msg-btn-ok{width:210px}
.star{font-family:MIF;color:#f49231;font-size:14px;margin-right:1px;letter-spacing:2px;position:relative;width:5.5em}.star:before{content:'★★★★★';color:#e9e9e9;position:absolute;left:0}.star i{position:absolute;left:0}.star-text{position:absolute;left:5.5em;font-size:1.2em;font-family:Arial}.recommend{margin-right:-10px;font-size:12px}.recommend li{width:145px}.recommend h3{font-size:12px;color:#999;height:2.2em;padding:10px 5px 0}.recommend h3:after{content:'';display:block;border-top:1px solid #ccc;margin:-9px 10px 0 56px}.recommend li{float:left;margin:0 10px 10px 0}.recommend .box-style{display:block;padding:6px;margin:0;line-height:1em;position:relative}.recommend img{width:131px;height:80px}.recommend h4{margin:5px 0 7px}.recommend strong{font-size:18px;color:#4aa1b7}.recommend strong:after{content:'元';font-size:12px;color:#666;margin-left:3px}.recommend em{position:absolute;right:6px;bottom:6px}.orders .ml-item:first-child{border-top:0}.orders .btn-del{float:right;visibility:hidden}.orders-del .btn-del{visibility:visible}.order-detail,.order-score{position:relative}.order-detail .ml-des{padding-right:20px}.order-detail:before{content:'ᐳ';font-family:MIF;position:absolute;right:0;top:50%;color:#d5d5d5;font-size:18px;margin-top:-11px}.order-score{height:22px}.order-score a{display:block}.order-score .order-score-to{position:absolute;color:#666;right:10px;top:5px}.order-score .order-score-to:after{font-size:18px;content:'ᐳ';font-family:MIF;margin-left:5px;color:#d5d5d5}.order-detail .ml-img{box-shadow:none;padding:0;border:0;border-radius:4px}.order-detail strong{font-size:18px;color:#00a3ce;font-weight:400}.order-status{border-top:1px dashed #E5E5E5;margin-top:10px;padding:12px 5px 5px;color:#999}.order-status span{color:#999}.order-yes,.order-yes span{color:#a6c04c}.order-info dl,.order-coupons li,.order-express dl,.order-detail-box dl,.order-detail-box li{color:#666}.order-coupons{padding-bottom:2px}.order-coupons h3{margin-bottom:0;border:0;position:relative}.order-coupons h3 em{position:absolute;font-size:12px;color:#ccc;top:8px;right:0}.order-coupons li{padding:.8em .2em .6em}.order-coupons strong{font-weight:400}.order-coupons .mg-1-4{text-align:right}.order-coupons .ml-item{white-space:normal}.order-express dl:last-child{margin-top:18px}.order-btn{margin-bottom:10px}.score{position:relative;color:#f49231;font-size:26px;height:26px}.score:before,.score span:after{content:'★★★★★';position:absolute;font-family:MIF;font-size:26px;color:#e9e9e9;letter-spacing:6px;line-height:1em;left:0}.score input{position:absolute;opacity:0}.score label{float:left;width:1.08em;margin-right:5px}.score span{position:absolute;visibility:hidden;left:175px;width:80px;line-height:1.9em;font-size:14px}.score label:after{content:'';display:block;position:relative;width:1.08em;height:1.08em;z-index:2}.score span:after{color:#f49231;left:-175px}.score input:checked+span{visibility:visible}.score_1:checked+span:after{content:'★'}.score_2:checked+span:after{content:'★★'}.score_3:checked+span:after{content:'★★★'}.score_4:checked+span:after{content:'★★★★'}.score-face:before,.score-face span:after{font-size:28px;content:'☻☻☻☻☻';background:#fff}.score-face span:after{color:#ffc95e}.score-face .score_1:checked+span:after{content:'☹'}.score-face .score_2:checked+span:after{content:'☹☹'}.score-face .score_3:checked+span:after{content:'☺☺☺'}.score-face .score_4:checked+span:after{content:'☺☺☺☺'}.score-face .score_5:checked+span:after{content:'☺☺☺☺☺'}.my-judge{padding-bottom:10px}.my-judge-total{border-bottom:1px dashed #E5E5E5;padding-bottom:10px;margin-bottom:10px}.my-judge-score dt{width:50px}.my-judge-score dd{margin-left:50px}.my-judge-tips{margin-top:12px;text-align:center;font-size:16px}.my-judge-tips span{color:#94bc37;font-size:24px}.my-judge-result dd{float:right;max-width:180px}.my-judge-result .star{font-size:16px;display:inline-block;width:5.5em;line-height:0}.my-judge-result .star-text{display:none}.my-judge-result:last-child{border-top:1px dashed #E5E5E5;margin-top:5px;padding-top:5px}.my-judge-result:last-child dt{padding-top:8px}.my-judge-sub dt{float:none;width:100%}.my-judge-sub dd{margin:-5px 0 8px 10px}
</style>
<header>
        <div class="left-box">
            <a class="hd-lbtn" href="<?php echo U('Groupon/my',array('token'=>$token,'wecha_id'=>$wecha_id));?>"><span>我的团购</span></a>
        </div>
        <h1>订单详情</h1>
    </header>

<div id="tips"></div>

<article class="body bg-common order-view" id="order_view">
    <div class="box-style">
        <a href="<?php echo U('Groupon/product',array('token'=>$token,'id'=>$thisProduct['id'],'wecha_id'=>$wecha_id));?>">
        <div class="item-box order-detail cf">
            <i class="ml-img">
                <img src="<?php echo ($thisProduct["logourl"]); ?>" alt="">
            </i>
            <div class="ml-des">
                <h4 class="ell"><?php echo ($thisProduct["name"]); ?></h4>
                <em class="ml-info ell"><?php echo (date("Y-m-d",$thisProduct["endtime"])); ?>结束</em>
                <p class="ml-desc"><strong><?php echo ($thisProduct["price"]); ?></strong> 元 <?php if($thisOrder["sn"] == 1): ?><span style="color:#f60" title="虚拟商品">（虚拟商品）</span><?php endif; ?></p>
            </div>
        </div>
        <div class="order-status cf">
            <ul class="mg-2">
                <li class="order-yes"><span class="icon-fonts">☑</span>已售数量<?php echo ($thisProduct['salecount']+$thisProduct['fakemembercount']); ?></li>
                <li class="order-yes"></li>
            </ul>
        </div>
        </a>
    </div>
    <div class="box-style order-coupons">
        <h3>
            <span class="icon-fonts">ⓕ</span><?php if($thisOrder["sn"] != 1): ?>团购券密码<?php else: ?>团购虚拟物品SN密码<?php endif; ?>
            
   			<?php if($thisOrder["sn"] != 1): ?><em><?php if($thisProduct["over"] != 1): if ($thisOrder['paid']){ ?>
   		<a href="<?php echo U('Groupon/handle',array('token'=>$token,'id'=>$thisOrder['id'],'wecha_id'=>$wecha_id));?>">商家处理订单</a><?php } endif; ?></em><?php endif; ?>
        </h3>
        <ul>
            <li class="ml-item cf">
                <div class="mg-3-4">
                	<?php if($thisOrder["sn"] != 1): echo ($thisOrder["code"]); ?>
                    <?php else: ?>
                    <?php $sns = unserialize($thisOrder['sn_content']); ?>
					<?php if(is_array($sns)): $i = 0; $__LIST__ = $sns;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sn): $mod = ($i % 2 );++$i;?><p>
						<span style="font-weight:bold;"><?=$thisProduct['sn_name']?$thisProduct['sn_name']:'SN'?>:</span><span style=""><?php echo ($sn["sn"]); ?></span>
						<?php if($sn["pass"] != ''): ?><span style="font-weight:bold;margin-left:40px;"><?=$thisProduct['sn_pass']?$thisProduct['sn_pass']:'密码'?>:</span> <span><?php echo ($sn["pass"]); ?></span><?php endif; ?>
					</p><?php endforeach; endif; else: echo "" ;endif; endif; ?>
                </div>
                <div class="mg-1-4">
                    <em class="order-yes"><?php if(!$thisOrder['handled']): ?>未消费<?php else: ?>已使用<?php endif; ?></em>
                </div>
            </li>
        </ul>
    </div>
    <?php if(!$thisOrder['handled']): endif; ?>
    <div class="box-style order-info">
        <h3><span class="icon-fonts">ⓖ</span>订单详情</h3>
        <dl>
            <dt>下单时间</dt>
            <dd><?php echo (date("Y-m-d",$thisOrder["time"])); ?></dd>
            <dt>手机号</dt>
            <dd><?php echo ($thisOrder["tel"]); ?></dd>
            <dt>数量</dt>
            <dd><?php echo ($thisOrder["total"]); ?></dd>
            <dt>总价</dt>
            <dd><?php echo ($thisOrder["price"]); ?> 元</dd>
        </dl>
    </div>
   
    <?php if($thisOrder["needPay"] == '1'): if (!$thisProduct['over']){ ?>
    <div class="order-btn">
<span onClick="window.location.href='?g=Wap&m=Alipay&a=pay&price=1&from=Groupon&orderName=<?php echo ($o["name"]); ?>&single_orderid=<?php echo ($thisOrder["orderid"]); ?>&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>'" gaevent="imt/view/buy" class="btn btn-block btn-strong">付款</span>
    </div>
     <?php
 } endif; ?>
</article>
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