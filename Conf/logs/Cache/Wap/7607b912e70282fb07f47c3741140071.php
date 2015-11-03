<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html style="overflow:auto">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="user-scalable=no, initial-scale=1">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta name="description" content="">
<title><?php echo ($Coupon["title"]); ?></title>
<link href="<?php echo RES;?>/css/guajiang/activity-style.css" rel="stylesheet" type="text/css">
<style type="text/css">
#txt {
	color: #000000;
}
.footFix{width:100%;text-align:center;position:fixed;left:0;bottom:0;z-index:99;}
#footReturn a, #footReturn2 a {
display: block;
line-height: 41px;
color: #fff;
text-shadow: 1px 1px #282828;
font-size: 14px;
font-weight: bold;
}
#footReturn, #footReturn2 {
z-index: 89;
display: inline-block;
text-align: center;
text-decoration: none;
vertical-align: middle;
cursor: pointer;
width: 100%;
outline: 0 none;
overflow: visible;
Unknown property name.-moz-box-sizing: border-box;
box-sizing: border-box;
padding: 0;
height: 41px;
opacity: .95;
border-top: 1px solid #181818;
box-shadow: inset 0 1px 2px #b6b6b6;
background-color: #515151;
Invalid property value.background-image: -ms-linear-gradient(top,#838383,#202020);
background-image: -webkit-linear-gradient(top,#838383,#202020);
Invalid property value.background-image: -moz-linear-gradient(top,#838383,#202020);
Invalid property value.background-image: -o-linear-gradient(top,#838383,#202020);
background-image: -webkit-gradient(linear,0% 0,0% 100%,from(#838383),to(#202020));
Invalid property value.filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#838383',endColorstr='#202020');
Unknown property name.-ms-filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#838383',endColorstr='#202020');
}
</style>
</head>
<?php if($Coupon['bg'] == ''){?>
<body class="activity-coupon-winning">
<?php }else{?>
	<?php if($Coupon['bgtype'] == 0){?>
	<body style="background:url('<?php echo $Coupon['bg']?>')">
	<?php }else{?>
	<body>
	<img src="<?php echo $Coupon['bg']?>" style="position: fixed;top:0;left:0;width:100%;height:100%;z-index:-1">
	<?php }?>
<?php }?>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
<script src="<?php echo RES;?>/css/guajiang/alert.js" type="text/javascript"></script>

<?php if($Coupon['end'] == 1){?>
	<div style="text-align:center;padding:40px 0 0 0;color:#eee">:( 活动不存在或者优惠券被领光了</div>
<?php }else{?> <!--有优惠券的情况下-->

	<?php if($Coupon['end'] == 2){?> <!--过期-->
		<div class="main">
			<div class="banner">
					<img src="<?php echo ($lottery["endpicurl"]); ?>" />
			</div>
			<div class="content" style="margin-top:-5px">
				<div class="boxcontent boxwhite">
					<div class="box">
						<div class="title-brown">活动结束说明：</div>
						<div class="Detail">
							<p><?php echo ($Coupon["endinfo"]); ?></p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<?php if($lotterylist != ''){?>
		<div class="boxcontent boxwhite">
			<div class="box">
				<div class="title-red"><span>您中过的奖</span></div>
				<?php foreach($lotterylist as $k=>$v){?>
				<div class="Detail" <?php if($k != 0){?>style="border-top :1px dashed rgba(0, 0, 0, 0.3);"<?php }?> >
					<p>你中了：<span class="red" ><?php echo $couponname[$lotteryname[$v['prize']]];?></span></p>
					<p>中奖时间：<span class=""><?php echo (date("Y-m-d H:i:s",$v["time"])); ?></span></p>
					<p>请到会员卡中查看并使用您的优惠券</p>
				</div>
				<?php }?>
			</div>
		</div>
		<?php }?>
	<?php }else{?>
		<!--else/--> <!--没有领过-->
			<div class="main">
				<div class="cover" id="Conponid">
					<?php if($lotterylist == ''){?>
					<img id="winaprize" src="<?php echo ($lottery["starpicurl"]); ?>" />
					<?php }else{?>
					<img id="winaprize" src="<?php echo ($lottery["zjpic"]); ?>" />
					<?php }?>
					<div id="scratchpad"></div>
				</div>
			</div>
		<!--/if--><!--没有领过-->
		<!--都显示-->
			<div class="content">	   
			
			
				
				<?php if($wecha_id == ''){?>
<div class="boxcontent boxwhite">
						<div class="box">
							<div class="title-brown">友情提醒：</div>
							<div class="Detail">
				<p style="color:#f00;line-height:160%">您可能是从朋友圈等分享过的页面打开的链接，无法直接参与此活动，如需参与此活动请按照以下步骤操作：<br>1、关注微信名称“<?php echo ($wxuser["wxname"]); ?>”或者微信号“<?php echo ($wxuser["weixin"]); ?>”<br>2、输入关键词：“<?php echo ($Coupon["keyword"]); ?>”</p>            
               </div>
</div>
</div>
			<?php }?>
					<?php if($lotterylist != ''){?>
					<div class="boxcontent boxwhite">
						<div class="box">
							<div class="title-red"><span>您中过的奖</span></div>
							<?php foreach($lotterylist as $k=>$v){?>
							<div class="Detail" <?php if($k != 0){?>style="border-top :1px dashed rgba(0, 0, 0, 0.3);"<?php }?> >
								<p>你中了：<span class="red" ><?php echo $couponname[$lotteryname[$v['prize']]];?></span></p>
								<p>中奖时间：<span class=""><?php echo (date("Y-m-d H:i:s",$v["time"])); ?></span></p>
								<p>请到会员卡中查看并使用您的优惠券</p>
							</div>
							<?php }?>
						</div>
					</div>
					<?php }?>
					<div class="boxcontent boxwhite">
						<div class="box">
							<div class="title-brown"><span>优惠券项目：</span></div>
							<div class="Detail">
							<p> 每人最多允许抽奖次数:<?php echo ($Coupon["canrqnums"]); ?> - 已抽取<span id="usenums"><?php echo ($Coupon["usenums"]); ?></span>次</p>
							 	<p>优惠券1: <?php echo ($couponname[$Coupon['fist']]); ?> <?php if($lottery['displayjpnums']){ ?>数量:<?php echo ($Coupon["fistnums"]); } ?></p>
	
							<?php if($Coupon['second']!=''){ ?>
							<p>优惠券2: <?php echo ($couponname[$Coupon['second']]); ?> <?php if($lottery['displayjpnums']){ ?>数量:<?php echo ($Coupon["secondnums"]); } ?></p>
							<?php } ?>

							 <?php if($Coupon['third']!=''){ ?>
								<p>优惠券3: <?php echo ($couponname[$Coupon['third']]); ?> <?php if($lottery['displayjpnums']){ ?>数量:<?php echo ($Coupon["thirdnums"]); } ?></p>
							<?php } ?>
							<?php if($Coupon['four']!=''){ ?>
								<p>优惠券4: <?php echo ($couponname[$Coupon['four']]); ?> <?php if($lottery['displayjpnums']){ ?>数量:<?php echo ($Coupon["fournums"]); } ?></p>
							<?php } ?>
							<?php if($Coupon['five']!=''){ ?>
								<p>优惠券5: <?php echo ($couponname[$Coupon['five']]); ?> <?php if($lottery['displayjpnums']){ ?>数量:<?php echo ($Coupon["fivenums"]); } ?></p>
							<?php } ?>
							<?php if($Coupon['six']!=''){ ?>
								<p>优惠券6: <?php echo ($couponname[$Coupon['six']]); ?> <?php if($lottery['displayjpnums']){ ?>数量:<?php echo ($Coupon["sixnums"]); } ?></p>
							<?php } ?>
							</div>
						</div>
					</div>
					<div class="boxcontent boxwhite">
						<div class="box">
							<div class="title-brown">活动说明：</div>
							<div class="Detail">
							<?php if ($Coupon['statdate']>time()){echo '<p style="color:red">活动还没有开始 :(</p>';}?>
							<p><?php echo ($Coupon["title"]); ?></p>
							<p><?php echo ($Coupon["info"]); ?></p>
								<p>活动时间: <?php echo (date("Y-m-d H:i",$Coupon["statdate"])); ?>至<?php echo (date("Y-m-d H:i",$Coupon["enddate"])); ?></p>
								<p><?php echo ($Coupon["txt"]); ?></p>					 			
							</div>
						</div>
					</div>
					
					<?php if($Coupon['sttxt']){?>
					<div class="boxcontent boxwhite">
						<div class="box">
							<div class="title-brown">优惠券介绍：</div>
							<div class="Detail">
								<p><?php echo ($Coupon["sttxt"]); ?></p>					 			
							</div>
						</div>
					</div>
					<?php }?>
				</div>
				<div style="clear:both;"></div>
<!--都显示-->
	<?php }?><!--没过期-->

<?php }?> <!--结束-->
<div style="height:60px;"></div>
<div class="footFix" id="footReturn"><a href="javascript:void(0)" onClick="location.href='<?php echo U('Wap/Index/index',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id']));?>';"><span>返回3G网站</span></a></div>	


<style type="text/css">
.window {
	width:290px;
	position:absolute;
	display:none;
	bottom:30px;
	left:50%;
	 z-index:9999;
	margin:-50px auto 0 -145px;
	padding:2px;
	border-radius:0.6em;
	-webkit-border-radius:0.6em;
	-moz-border-radius:0.6em;
	background-color: #ffffff;
	-webkit-box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
	-moz-box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
	-o-box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
	font:14px/1.5 Microsoft YaHei,Helvitica,Verdana,Arial,san-serif;
}
.window .title {
	
	background-color: #A3A2A1;
	line-height: 26px;
    padding: 5px 5px 5px 10px;
	color:#ffffff;
	font-size:16px;
	border-radius:0.5em 0.5em 0 0;
	-webkit-border-radius:0.5em 0.5em 0 0;
	-moz-border-radius:0.5em 0.5em 0 0;
	background-image: -webkit-gradient(linear, left top, left bottom, from( #585858 ), to( #565656 )); /* Saf4+, Chrome */
	background-image: -webkit-linear-gradient(#585858, #565656); /* Chrome 10+, Saf5.1+ */
	background-image:    -moz-linear-gradient(#585858, #565656); /* FF3.6 */
	background-image:     -ms-linear-gradient(#585858, #565656); /* IE10 */
	background-image:      -o-linear-gradient(#585858, #565656); /* Opera 11.10+ */
	background-image:         linear-gradient(#585858, #565656);
	
}
.window .content {
	/*min-height:100px;*/
	overflow:auto;
	padding:10px;
	background: linear-gradient(#FBFBFB, #EEEEEE) repeat scroll 0 0 #FFF9DF;
    color: #222222;
    text-shadow: 0 1px 0 #FFFFFF;
	border-radius: 0 0 0.6em 0.6em;
	-webkit-border-radius: 0 0 0.6em 0.6em;
	-moz-border-radius: 0 0 0.6em 0.6em;
}
.window #txt {
	min-height:30px;font-size:16px; line-height:22px;
}
.window .txtbtn {
	
	background: #f1f1f1;
	background-image: -webkit-gradient(linear, left top, left bottom, from( #DCDCDC ), to( #f1f1f1 )); /* Saf4+, Chrome */
	background-image: -webkit-linear-gradient( #ffffff , #DCDCDC ); /* Chrome 10+, Saf5.1+ */
	background-image:    -moz-linear-gradient( #ffffff , #DCDCDC ); /* FF3.6 */
	background-image:     -ms-linear-gradient( #ffffff , #DCDCDC ); /* IE10 */
	background-image:      -o-linear-gradient( #ffffff , #DCDCDC ); /* Opera 11.10+ */
	background-image:         linear-gradient( #ffffff , #DCDCDC );
	border: 1px solid #CCCCCC;
	border-bottom: 1px solid #B4B4B4;
	color: #555555;
	font-weight: bold;
	text-shadow: 0 1px 0 #FFFFFF;
	border-radius: 0.6em 0.6em 0.6em 0.6em;
	display: block;
	width: 100%;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
	text-overflow: ellipsis;
	white-space: nowrap;
	cursor: pointer;
	text-align: windowcenter;
	font-weight: bold;
	font-size: 18px;
	padding:6px;
	margin:10px 0 0 0;
}
.window .txtbtn:visited {
	background-image: -webkit-gradient(linear, left top, left bottom, from( #ffffff ), to( #cccccc )); /* Saf4+, Chrome */
	background-image: -webkit-linear-gradient( #ffffff , #cccccc ); /* Chrome 10+, Saf5.1+ */
	background-image:    -moz-linear-gradient( #ffffff , #cccccc ); /* FF3.6 */
	background-image:     -ms-linear-gradient( #ffffff , #cccccc ); /* IE10 */
	background-image:      -o-linear-gradient( #ffffff , #cccccc ); /* Opera 11.10+ */
	background-image:         linear-gradient( #ffffff , #cccccc );
}
.window .txtbtn:hover {
	background-image: -webkit-gradient(linear, left top, left bottom, from( #ffffff ), to( #cccccc )); /* Saf4+, Chrome */
	background-image: -webkit-linear-gradient( #ffffff , #cccccc ); /* Chrome 10+, Saf5.1+ */
	background-image:    -moz-linear-gradient( #ffffff , #cccccc ); /* FF3.6 */
	background-image:     -ms-linear-gradient( #ffffff , #cccccc ); /* IE10 */
	background-image:      -o-linear-gradient( #ffffff , #cccccc ); /* Opera 11.10+ */
	background-image:         linear-gradient( #ffffff , #cccccc );
}
.window .txtbtn:active {
	background-image: -webkit-gradient(linear, left top, left bottom, from( #cccccc ), to( #ffffff )); /* Saf4+, Chrome */
	background-image: -webkit-linear-gradient( #cccccc , #ffffff ); /* Chrome 10+, Saf5.1+ */
	background-image:    -moz-linear-gradient( #cccccc , #ffffff ); /* FF3.6 */
	background-image:     -ms-linear-gradient( #cccccc , #ffffff ); /* IE10 */
	background-image:      -o-linear-gradient( #cccccc , #ffffff ); /* Opera 11.10+ */
	background-image:         linear-gradient( #cccccc , #ffffff );
	border: 1px solid #C9C9C9;
	border-top: 1px solid #B4B4B4;
	box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3) inset;
}

.window .title .close {
	float:right;
	background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABoAAAAaCAYAAACpSkzOAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAACTSURBVEhL7dNtCoAgDAZgb60nsGN1tPLVCVNHmg76kQ8E1mwv+GG27cestQ4PvTZ69SFocBGpWa8+zHt/Up+IN+MhgLlUmnIE1CpBQB2COZibfpnXhHFaIZkYph0SOeeK/QJ8o7KOek84fkCWSBtfL+Ny2MPpCkPFMH6PWEhWhKncIyEk69VfiUuVhqJefds+YcwNbEwxGqGIFWYAAAAASUVORK5CYII=");
	width:26px;
	height:26px;
	display:block;	
}
</style>
<div class="window" id="windowcenter">
	<div id="title" class="title">消息提醒<span class="close" id="alertclose"></span></div>
	<div class="content">
	 <div id="txt"></div>
	 <input type="button" value="确定" id="windowclosebutton" name="确定" class="txtbtn">	
	</div>
</div>
 
 

<script type="text/javascript">
window.shareData = {  
            "moduleName":"Coupon",
            "moduleID":"<?php echo ($Coupon["id"]); ?>",
            "imgUrl": "<?php echo ($Coupon["starpicurl"]); ?>", 
            "sendFriendLink": "<?php echo ($f_siteUrl); ?>/index.php?g=Wap&m=Coupon&a=index&token=<?php echo ($token); ?>&id=<?php echo ($Coupon["id"]); ?>&wecha_id=",
            "tTitle": "<?php echo ($Coupon["title"]); ?>",
            "tContent": ""
};
</script>
<?php echo ($shareScript); ?>
</body></html>