<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>敏感词过滤</title>
<link href="<?php echo RES;?>/images/main.css" type="text/css" rel="stylesheet">
<script src="<?php echo STATICS;?>/jquery.min.js" type="text/javascript"></script>
<script src="<?php echo STATICS;?>/function.js" type="text/javascript"></script>
<meta http-equiv="x-ua-compatible" content="ie=7" />
</head>
<body class="warp">
<div id="artlist">
	<div class="mod kjnav">
		<?php if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="<?php echo U($action.'/'.$vo['name'],array('pid'=>$_GET['pid'],'level'=>3,'title'=>urlencode ($vo['title'])));?>"><?php echo ($vo['title']); ?></a>
		<?php if(($action == 'Article') or ($action == 'Img') or ($action == 'Text') or ($action == 'Voiceresponse')): break; endif; endforeach; endif; else: echo "" ;endif; ?>
	</div>   	
</div>
<div class="cr"></div>
<div id="artlist">
	<div class="ksearch">
    	<div class="fl" style="color:red">
			温馨提示：敏感词开启后将会对整站所有页面中对应的敏感词进行过滤，例如开启的【做证件】，页面中所有的【做证件】将变为【***】。
		</div>
    </div>
</div>
<div id="artlist">
	<div class="ksearch">
		<div class="fl" style="color:red">
			警告：添加修改敏感词时不能带标点符号，不能写单个字母，不能只写数字，尽量不要写英文，如果页面代码中有您填的敏感词将会出现页面混乱或功能无法使用的问题！请谨慎添加修改敏感词！
		</div>
    </div>
</div>
<div id="artlist">

	 <div class="ksearch">
    	<div class="fl">
			<input name="word" class="ipt" type="text" value="<?php echo $_GET['word'];?>"/> 
			<input type="button" class="ksub" id="search" value=""/>
			&nbsp;&nbsp;&nbsp;
			<a href="<?php echo U('Susceptible/set_all',array('all'=>1,'word'=>$_GET['word'],'p'=>$_GET['p']));?>">开启全部</a>
			&nbsp;|&nbsp;
			<a href="<?php echo U('Susceptible/set_all',array('all'=>2,'word'=>$_GET['word'],'p'=>$_GET['p']));?>">关闭全部</a>
        </div>
    </div>
 	
</div>
<form action="<?php echo U('Susceptible/set_all',array('word'=>$_GET['word'],'p'=>$_GET['p']));?>" method="post">
	<table width="100%" border="0" cellspacing="0" cellpadding="0" id="alist">
		<tr>
			<td width='80'>选中</td>
			<td>敏感词</td>
			<td>添加时间</td>
			<td>修改时间</td>
			<td>状态</td>
			<td>管理操作</td>
		</tr>
		<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
			<td align='center'><input type="checkbox" name="word_id[]" class="check" value="<?php echo ($vo["id"]); ?>"/></td>
			<td><?php echo ($vo["word"]); ?></td>
			<td><?php echo (date("Y-m-d H:i:s",$vo["addtime"])); ?></td>
			<td><?php echo (date("Y-m-d H:i:s",$vo["time"])); ?></td>
			<td><?php if($vo['state'] == 1){echo "<span style='color:green'>开启</span>";}else{echo "<span style='color:red'>关闭</span>";}?></td>
			<td>
				<a href="<?php echo U('System/Susceptible/set',array('id'=>$vo['id'],'word'=>$_GET['word'],'p'=>$_GET['p']));?>"><?php if($vo['state'] == 1){echo "关闭";}else{echo "开启";}?></a>
				&nbsp;|&nbsp;
				<a href="<?php echo U('System/Susceptible/edit',array('id'=>$vo['id'],'word'=>$_GET['word'],'p'=>$_GET['p']));?>">修改</a>
				&nbsp;|&nbsp;
				<a href="javascript:drop_confirm('确定要删除“<?php echo $vo['word'];?>”吗','<?php echo U('System/Susceptible/del',array('id'=>$vo['id'],'word'=>$_GET['word'],'p'=>$_GET['p']));?>');">删除</a>
			</td>
		</tr><?php endforeach; endif; else: echo "" ;endif; ?>
		<tr bgcolor="#FFFFFF">
			<td style="text-align: left;" colspan="2">
				&nbsp;&nbsp;&nbsp;
				选中所有&nbsp;<input type="checkbox" id="checkAll" value="0" style="vertical-align:middle;">
				<input type="hidden" name="set_all" id="set_all" value="">
				&nbsp;&nbsp;&nbsp;
				<input type="button" id="set_all_1" value="开启选中">
				&nbsp;&nbsp;&nbsp;
				<input type="button" id="set_all_2" value="关闭选中">
			</td>
			<td colspan="4"><div class="listpage"><?php echo ($page); ?></div></td>
		</tr>
	   
	</table>
</form>
<script type="text/javascript">
	$(function(){
		$('#checkAll').click(function(){
			var ischecked = $(this).is(':checked');
			if(ischecked){
				$('.check').prop('checked',true);
			}else{
				$('.check').prop('checked',false);
			}
		});
		$('#search').click(function(){
			var word = $('input[name=word]').val();
			window.location.href = '<?php echo U('System/Susceptible/index');?>&word='+word;
		});
		$('#set_all_1').click(function(){
			$('#set_all').val("1");
			$('form').submit();
		});
		$('#set_all_2').click(function(){
			$('#set_all').val("0");
			$('form').submit();
		});
	});
	function drop_confirm(msg, url){
		if(confirm(msg)){
			window.location = url;
		}
	}
</script>
</body>
</html>