<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的微召唤</title>
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link href="<?php echo RES;?>/card/style/style.css" rel="stylesheet" type="text/css">
<script src="/tpl/static/jquery.min.js" type="text/javascript"></script>
<script src="/tpl/static/alert.js" type="text/javascript"></script>
<script src="<?php echo RES;?>/card/js/accordian.pack.js" type="text/javascript"></script>
<style>
.accordion_child .btn{
	text-align: center;
	padding:10px 10px;
	margin-top:10px;
	}
.accordion_child .btn a{
	padding: 10px 20px;
	background-color: #ea5145;
	color:#FFF;
}
.pic{width:100%;margin-bottom:10px;}
.over{background:#aaa;border:1px solid #aaa;box-shadow: 0 1px 0 #cccccc inset, 0 1px 2px rgba(0, 0, 0, 0.5);}
.window .title{background-image: linear-gradient(#179f00, #179f00);}
</style>
</head>
<body id="cardnews" onLoad="new Accordian(&#39;basic-accordian&#39;,5,&#39;header_highlight&#39;);" class="mode_webapp">
<div class="qiandaobanner"><a href="javascript:history.go(-1);"><img src="/tpl/User/default/common/images/cart_info/vippower.jpg" ></a> </div>
<div id="basic-accordian">
<?php if($text != ''): echo ($text); endif; ?>
<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?><div id="test<?php echo ($item["id"]); ?>-header" class="accordion_headings  <?php if ($item['id']==$firstItemID){?>header_highlight<?php } ?>">
<div class="tab  coupon">
<span class="title"><?php echo ($item["title"]); ?><p>结束时间：<?php echo (date('Y年m月d日',$item["end"])); ?></p></span>
</div>
<div id="test<?php echo ($item["id"]); ?>-content">
<div class="accordion_child">
<img src="<?php echo ($item["reply_pic"]); ?>" class="pic">
<b>参加日期：<?php echo (date('Y年m月d日 H:s:i',$item["add_time"])); ?></b>
<p><?php echo ($username); ?>的人气值为：<?php echo ($item["share_count"]); ?></p>
<p>获取的积分：<?php echo ($item["score"]); ?></p>
<p>活动介绍：</p>
<p><?php echo ($item["intro"]); ?></p>
<?php if ($item['end']>time()){?><p class="btn"><a href="index.php?g=Wap&m=Weizhaohuan&a=index&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&id=<?php echo ($item["id"]); ?>">查看详情</a></p><?php } ?>
<div style="clear:both;height:20px;"></div>
</div> 
<div style="clear:both;height:20px;"></div>
</div>
</div><?php endforeach; endif; else: echo "" ;endif; ?>
</div>

</body>
</html>