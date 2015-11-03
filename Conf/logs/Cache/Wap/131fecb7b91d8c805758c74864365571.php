<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,user-scalable=no,maximum-scale=1" />
<title><?php echo ($action_name); ?></title>
<link rel="stylesheet" href="<?php echo ($staticPath); ?>/tpl/static/seckill/css/style.css"/>
<script type="text/javascript" src="<?php echo ($staticPath); ?>/tpl/static/public-framework/scripts/jquery.js"></script>
</head>

<body style="background-color:#efefef;">

<div class="banner">
	<img src="<?php echo ($action_header_img); ?>" width="100%" alt="" />
</div>

<div class="clock">
	<h1 style="font-size:12px; color:#808080; text-align:center; margin-bottom:11px;
     line-height:12px;"><span style="color:#4c4c4c"><?php echo ($user_nickname); ?></span>
     正在参加<span style="color:#ff0000">“<?php echo ($action_name); ?>~”</span>活动</h1>
     <h1 style="font-size:12px; color:#808080; text-align:center; margin-bottom:22px;
     line-height:12px;">您的帮助将助TA赢得<span style="color:#128618">提前抢购</span>时间！</h1>
	
    
    <div id="clock_img" class="clock_img">
   <a href="javascript:;" id="seckill"> <img src="<?php echo ($staticpath); ?>/tpl/static/seckill/images/clock.gif" width="100%"/></a>
    </div>
	<div class="share">
		<img src="<?php echo ($staticPath); ?>/tpl/static/seckill/images/share-guide.png" style="width: 100%;">
	</div>
</div>

<?php if($share == ''): ?><a href="<?php echo U('shop_invite', array('id'=>$action_id,'share_code'=>$share_code,'token'=>$token));?>"><div class="text">暂无好友帮忙，快去邀请吧！</div><a>
<?php else: ?>
<div class="help">
<h1>帮助过"<?php echo ($user_nickname); ?>"的好友</h1> 
<?php if(is_array($share)): $i = 0; $__LIST__ = $share;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div>
    	<img src="<?php echo ($vo["share_pic"]); ?>" width="100%">
        <?php echo ($vo["share_nickname"]); ?>帮"<?php echo ($user_nickname); ?>"提前<?php echo ($vo["share_time"]); ?>秒
        <h2>
        	<span style=" font-weight:bold;">-<?php echo ($vo["share_time"]); ?></span>秒
		</h2>
    </div><?php endforeach; endif; else: echo "" ;endif; ?> 
</div><?php endif; ?>
<script>
	$(function(){
		$("#seckill").click(function() {
			$(".share").show() ;

			$(".share").click(function() {
				$(this).hide() ;
			}) ;

		});
	});
</script>
<script type="text/javascript">
	window.shareData = {  
		"moduleName":"Seckill",
		"moduleID":"0",
		"imgUrl": "<?php echo ($action_header_img); ?>", 
		"timeLineLink": "<?php echo ($f_siteUrl); echo U('Seckill/shop_invite',array('token'=>$token,'id'=>$action_id,'share_code'=>$share_code));?>",
		"sendFriendLink": "<?php echo ($f_siteUrl); echo U('Seckill/shop_invite',array('token'=>$token,'id'=>$action_id,'share_code'=>$share_code));?>",
		"weiboLink": "<?php echo ($f_siteUrl); echo U('Seckill/shop_invite',array('token'=>$token,'id'=>$action_id,'share_code'=>$share_code));?>",
		"tTitle": "<?php echo ($action_name); ?>",
		"tContent": "<?php echo ($action_name); ?>"
	};
</script>
		<?php echo ($shareScript); ?>
</body>
</html>