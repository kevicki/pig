<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>微信公众平台源码</title>
<meta http-equiv="MSThemeCompatible" content="Yes" />
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/style_2_common.css?BPm" />
<script src="<?php echo RES;?>/js/common.js" type="text/javascript"></script>
<link href="<?php echo RES;?>/css/style.css" rel="stylesheet" type="text/css" />
 <script src="<?php echo STATICS;?>/jquery-1.4.2.min.js" type="text/javascript"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=<?php echo $apikey;?>"></script>
 <link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/cymain.css" />
 <script src="/tpl/static/artDialog/jquery.artDialog.js?skin=default"></script>
<script src="/tpl/static/artDialog/plugins/iframeTools.js"></script>
<?php if($type == 'music'): ?><script type="text/javascript" src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript" src="/tpl/static/audioplayer/inc/jquery.jplayer.min.js"></script>
    <script type="text/javascript" src="/tpl/static/audioplayer/inc/jquery.mb.miniPlayer.js"></script>
    <link rel="stylesheet" type="text/css" href="/tpl/static/audioplayer/css/miniplayer.css" title="style" media="screen"/>
    <script type="text/javascript">
        $(function () {

            $(".audio").mb_miniPlayer({
                width: 200,
                inLine: false,
                onEnd: playNext
            });

            function playNext(player) {
                var players = $(".audio");
                document.playerIDX = player.idx + 1 <= players.length - 1 ? player.idx + 1 : 0;
                players.eq(document.playerIDX).mb_miniPlayer_play();
            }
        });
    </script><?php endif; ?>
</head>
<body style="background:#fff">

<style>
.usercontent ul li{
float:none;
line-height:50px;
padding-left:10px;
}
input{border: 1px solid #DDDDDD;height:30px;width:200px;margin-left:10px;}
.new-btn-login{
    background-color: transparent;
    background-image: url("<?php echo RES;?>/images/img/new-btn-fixed.png");
    border: medium none;
	border:1px solid red;
	
}
.new-btn-login{
    background-position: 0 -198px;
    width: 82px;
	color: #FFFFFF;
    font-weight: bold;
    height: 28px;
    line-height: 28px;
    padding: 0 10px 3px;
	
}
.new-btn-login:hover{
	background-position: 0 -167px;
	width: 82px;
	color: #FFFFFF;
    font-weight: bold;
    height: 28px;
    line-height: 28px;
    padding: 0 10px 3px;
}
.bottonbox{
border: 1px solid #D74C00;
padding: 1px;
display: inline-block;
}
</style>
<script>

$(function(){
	var month=<?php echo ($month); ?>;
	var gidPrice=<?php echo ($user["price"]); ?>;
	var price=new Array();
	<?php if(is_array($group)): $i = 0; $__LIST__ = $group;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$p): $mod = ($i % 2 );++$i;?>price[<?php echo ($p["id"]); ?>]=<?php echo ($p["price"]); ?>;<?php endforeach; endif; else: echo "" ;endif; ?>
	$('#group').change(function(){
		var price2 = price[$('#group').val()]*month;
		$('#price').val(isNaN(price2) ? <?php echo ($user["price"]); ?> : price2);
		$('#needprice').val(isNaN(price2) ? <?php echo ($user["price"]); ?> : price2);
	});
	$('#num').change(function(){
		$('#price').val(gidPrice*$('#num').val());
		$('#needprice').val(gidPrice*$('#num').val());
	});
});
function checkcz(){
	if($('#group').val()==0){
		//alert('请选择级别');
		//return false;
	}
	return true;
}
function upgrade(){
	$('#price').val(0);
	$('#needprice').val(0);
	$('#num').css('display','none');
	$('#group').css('display','');
	$('#num').val(0);
	$('#price').val(price[$('#group').val()]*month);
	$('#needprice').val(price[$('#group').val()]*month);
}
function delay(){
	$('#price').val(0);
	$('#needprice').val(0);
	$('#num').css('display','');
	$('#group').css('display','none');
	$('#group').val(0);
	$('#price').val(gidPrice*$('#num').val());
		$('#needprice').val(gidPrice*$('#num').val());
	
}
</script>


<div class="usercontent" style="margin:30px auto;width:85%">
<ul>
<form action="<?php echo U('Alipay/vip_post');?>" method="post" onsubmit="return checkcz()">
<li> 
		<b>充值选项: </b>
		<a href="###" onclick="upgrade()">升级</a>&nbsp;&nbsp;<a href="###" onclick="delay()">延迟使用期限</a>
    </li>
	<li> 
		<b>选择: </b>
		<select name="gid" style="margin-left:10px;" id="group">
		<option value="0" selected>请选择级别</option>
			<?php if(is_array($group)): $i = 0; $__LIST__ = $group;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$group): $mod = ($i % 2 );++$i;?><option value="<?php echo ($group["id"]); ?>"<?php if($_SESSION['gid'] == $group['id']): endif; ?>><?php echo ($group["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
		</select>
		<select name="num" style="margin-left:10px;display:none" id="num">
		<option value="0">请选择时间</option>
			<option value="1">1个月</option>
			<option value="2">2个月</option>
			<option value="3">3个月</option>
			<option value="4">4个月</option>
			<option value="5">5个月</option>
			<option value="6">6个月</option>
			<option value="7">7个月</option>
			<option value="8">8个月</option>
			<option value="9">9个月</option>
			<option value="10">10个月</option>
			<option value="11">11个月</option>
			<option value="12">12个月</option>		
		</select>
    </li>
	<li style="display:none"> <b>充值用户名: </b><input type="text" name="uname" value="<?php echo (session('uname')); ?>" size="60" > <b>充值帐号,默认即可请勿修改</b></li>
	<li> <b>账户余额: </b><input type="text" style="border:none;width:90px;" name="moneybalance" value="<?php echo ($thisUser["moneybalance"]); ?>" id="needmoneybalanceprice" size="10" disabled> 元<b></b></li>
	<li> <b>需要花费: </b><input type="text" style="border:none;width:90px;" name="needprice" value="<?php echo ($user["price"]); ?>" id="needprice" size="10" disabled> 元<b></b></li>
	<li style="display:none"> <b>充值金额: </b><input type="text" name="price" style="width:90px;" value="<?php echo ($user["price"]); ?>" id="price" size="10"> 元 <b>先择对应的充值选项,价格自动生成</b></li>

	<li style="text-align:center"><span class="bottonbox"><button class="new-btn-login" type="submit" style="text-align:center;">确 认</button></span></li>
	</form>
</ul>
        <div class="clr"></div>
      </div>

<script>
var domid=art.dialog.data('domid');
// 返回数据到主页面
function returnHomepage(url){
	var origin = artDialog.open.origin;
	var dom = origin.document.getElementById(domid);
	var domsrcid=domid+'_src';

	if(origin.document.getElementById(domsrcid)){
	origin.document.getElementById(domsrcid).src=url;
	}
	
	dom.value=url;
	setTimeout("art.dialog.close()", 100 )
}
</script>

</body>
</html>