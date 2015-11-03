<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,user-scalable=no,maximum-scale=1" />
<title><?php echo ($action_name); ?></title>
<link rel="stylesheet" href="<?php echo ($staticPath); ?>/tpl/static/seckill/css/style.css"/>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/public-framework/scripts/jquery.js"></script>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/alert.js"></script>
</head>

<body style="background-color:#efefef;">
	<?php if($memberNotice != ''): echo ($memberNotice); endif; ?>
<div class="banner">
	<img src="<?php echo ($action_header_img); ?>" width="100%" alt="" />
</div>

<div class="time">
	<h1 class="time_1">您的抢购时间</h1>
	<h1 class="time_2"><?php echo (date("Y-m-d",$s_time)); ?></h1>
	<h1 class="time_3"><?php echo (date("H:i:s",$s_time)); ?></h1>
    <h2 class="time_old">标准时间<br/>
    <span style="text-decoration:line-through"><?php echo (date("Y-m-d H:i:s",$action_sdate)); ?></span></h2>
    <h2>当前排名<br/>第<span style=" color:#288b26;"><?php echo ($num); ?></span>位</h2>
</div>
<?php if($status == 0): ?><a href="<?php echo U('shop_invite', array('id'=>$action_id,'share_code'=>$share_code,'token'=>$token));?>"><div class="btn">我要提前抢</div></a>
<?php elseif($status == 1): ?>
	<div class="btn">抢购中点击商品抢购</div>
<?php else: ?>
	<a href="javascript:;"><div class="btn">活动已结束</div></a><?php endif; ?>
<?php if($share == ''): ?><a href="<?php echo U('shop_invite', array('id'=>$action_id,'share_code'=>$share_code,'token'=>$token));?>"><div class="text">暂无好友帮忙，快去邀请吧！</div><a>
<?php else: ?>
<div class="help">
<h1>帮助过您的好友&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<?php echo U('see_invite', array('id'=>$action_id,'share_code'=>$share_code,'token'=>$token));?>">详细列表<a></h1> 
<?php if(is_array($share)): $i = 0; $__LIST__ = $share;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div>
    	<img src="<?php echo ($vo["share_pic"]); ?>" width="100%">
        <?php echo ($vo["share_nickname"]); ?>帮您提前<?php echo ($vo["share_time"]); ?>秒
        <h2>
        	<span style=" font-weight:bold;">-<?php echo ($vo["share_time"]); ?></span>秒
		</h2>
    </div><?php endforeach; endif; else: echo "" ;endif; ?> 
</div><?php endif; ?>

<div class="guize" style="height:auto;padding-bottom:20px;">
	<div>活动规则</div>
<?php echo (html_entity_decode($action_rule)); ?>
</div>
<ul class="product">
<?php if(is_array($shop)): $k = 0; $__LIST__ = $shop;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k; if($k%2 != 0): ?><li class="product-left">
	<a href="<?php echo U('shop', array('id'=>$action_id,'sid'=>$vo['shop_id'],'uid'=>$uid,'token'=>$token));?>" class="link js-goods clearfix" data-goods-id="5507105" title="<?php echo ($vo["shop_name"]); ?>">
	<img src="<?php echo ($vo["shop_img"]); ?>" width="100%"/>
    	<h3><?php echo ($vo["shop_name"]); ?></h3>
        <h4><span style="font-size:15px; color:#ff0000; margin-right:2.5%;">￥<?php echo ($vo["shop_price"]); ?></span>
        <!--span style=" font-size:12px; color:#808080; text-decoration:line-through; margin-right:5%;">￥6</span-->
        数量:<?php echo ($vo["shop_num"]); ?>
        </h4>
	</a>	
    </li>
	<?php else: ?>
	<li class="product-right">
	<a href="<?php echo U('shop', array('id'=>$action_id,'sid'=>$vo['shop_id'],'uid'=>$uid,'token'=>$token));?>" class="link js-goods clearfix" data-goods-id="5507105" title="<?php echo ($vo["shop_name"]); ?>">
	<img src="<?php echo ($vo["shop_img"]); ?>" width="100%"/>
    	<h3><?php echo ($vo["shop_name"]); ?></h3>
        <h4><span style="font-size:15px; color:#ff0000; margin-right:2.5%;">￥<?php echo ($vo["shop_price"]); ?></span>
        <!--span style=" font-size:12px; color:#808080; text-decoration:line-through; margin-right:5%;">￥6</span-->
        数量:<?php echo ($vo["shop_num"]); ?>
        </h4>
	</a>	
    </li><?php endif; endforeach; endif; else: echo "" ;endif; ?>	
</ul>

</body>
</html>