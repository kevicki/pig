<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<title></title>
		<meta charset="utf-8">
		<meta content="" name="description">
		<meta content="" name="keywords">
		<meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
		<meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
		<meta content="no-cache" http-equiv="pragma">
		<meta content="0" http-equiv="expires">
		<meta content="telephone=no, address=no" name="format-detection">
		<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
		<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/forum/css/main.css" ></link>
		<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/forum/css/dialog.css" ></link>
		<script src="<?php echo STATICS;?>/forum/js/jquery_min.js" ></script>
		<script src="<?php echo STATICS;?>/forum/js/main.js" ></script>
		<script src="<?php echo STATICS;?>/forum/js/helper_min.js" ></script>
		<script src="<?php echo STATICS;?>/forum/js/dialog_min.js" ></script>
		<script>

	       function collectTrends(tid, uid){
		        loading(true);
	    	    $.post("/index.php?g=Wap&m=Forum&a=likeAjax&token=<?php echo ($_GET['token']); ?>",{
	    	        "tid"  : tid,
	    	        "uid"  : uid,
		    	    },function(res){
		    	    	loading(false);
		    	        if(res) {
							
			    	        location.reload();
		    	        }

		    	    });
	        }
	       function praiseTrends(tid, uid){
	    	    loading(true);
	    	    $.post("/index.php?g=Wap&m=Forum&a=favourAjax&token=<?php echo ($_GET['token']); ?>",{
	    	        "tid"  : tid,
	    	        "uid"  : uid,
		    	    },function(res){
		    	    	loading(false);
		    	        if(res) {
			    	        location.reload();
		    	        }

		    	    });
	        }
		</script>
	</head>
	<body onselectstart="return true;" ondragstart="return false;" class="discuss_my discuss_my_tiezi">
		<div id="container" class="container" <?php if($bgurl != NULL): ?>style="background:url('<?php echo ($bgurl); ?>') repeat-y center 0"<?php endif; ?>>
			<header>
				<div class="header_1">
					<ul class="tbox">
						<li>
													<span id="upload_header" class="head_img">
								<img src="<?php echo ($portrait); ?>" onerror="this.src='<?php echo STATICS;?>/forum/images/face.png';" />
							</span>
												</li>
						<li>
							<h5 id="nickName"><label><?php echo ($uname); ?></label><!--<a href="javascript:void(0);" class="icons icons_edit">&nbsp;</a>--></h5>
							<p>
							<!--	
								<a href="#" class="label"><span class="icons icons_vip_0">&nbsp;</span>非会员</a>
							-->
							</p>
						</li>
					</ul>
				</div>

			</header>
			<div class="body">
				<div class="list_article">
				<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><article>
						<header>
							<div class="article_state">
								
							</div>
							<ul class="tbox">
								<li></li>
								<li>
									<h5><?php echo ($list["title"]); ?></h5>
									<p><?php echo date('Y-m-d H:i:s',$list['createtime']);?></p>
								</li>
								
	
							</ul>
						</header>
						<section>
											<?php if(!empty($list['photos'])){ $count = count(explode(',',$list['photos'])); echo '<figure data-count="'.$count.'张图片">
													<div>'; $photos = explode(',',$list['photos']); for($i=0;$i<count($photos);$i++){ echo '<img src="'.$photos[$i].'" data-src="'.$photos[$i].'" data-gid="g7" onload="preViewImg(this, event);"/>'; } echo '</div></figure>'; } ?>
											<div style="clear:both"></div>	
							<div>
								<div><?php echo htmlspecialchars_decode($list['content'],ENT_QUOTES);?></div>
							</div>
							<a href="/index.php?g=Wap&m=Forum&a=comment&tid=<?php echo ($list["id"]); ?>&wecha_id=<?php echo ($wecha_id); ?>&token=<?php echo ($_GET['token']); ?>">查看全文</a>
						</section>

						<footer>
    										
								<ul class="box">
    								<li><!--喜欢-->
										<a href="javascript:;" class="a_collect <?php if(in_array($wecha_id,explode(',',$list['likeid']))){echo 'on';}else{ } ?>" onclick="collectTrends(<?php echo ($list["id"]); ?>,'<?php echo ($wecha_id); ?>')" ><span class="icons icons_collect" >&nbsp;</span><label><?php if(empty($list['likeid'])): ?>0<?php else: echo count(explode(',',$list['likeid'])); endif; ?></label></a>
    								</li>
    								<li><!--评论-->
    									<a href="/index.php?g=Wap&m=Forum&a=comment&tid=<?php echo ($list["id"]); ?>&wecha_id=<?php echo ($wecha_id); ?>&token=<?php echo ($_GET['token']); ?>" class="a_comment"><span class="icons icons_comment" >&nbsp;</span><label><?php echo ($list["cnum"]); ?></label></a>
    								</li>
    								<li><!--赞-->
    								    <a href="javascript:;" class="a_like <?php if(in_array($wecha_id,explode(',',$list['favourid']))){echo 'on';}else{ } ?>" onclick="praiseTrends(<?php echo ($list["id"]); ?>,'<?php echo ($wecha_id); ?>')"><span class="icons icons_like">&nbsp;</span><label><?php if(empty($list['favourid'])): ?>0<?php else: echo count(explode(',',$list['favourid'])); endif; ?></label></a>
    								</li>
							    </ul>
						</footer>
					</article><?php endforeach; endif; else: echo "" ;endif; ?>
					
				</div>
			</div>
			<footer>
				<section class="nav_footer">
					<ul class="box">
						<li>
							<a href="<?php echo U('Forum/index',array('wecha_id'=>$wecha_id,'token'=>$_GET['token']));?>">
								<span class="icons_home">&nbsp;</span>
								<label>首页</label>
							</a>
						</li>
						<li>
							<a href="<?php echo U('Forum/add',array('wecha_id'=>$wecha_id,'token'=>$_GET['token']));?>" class="nav_add">
								<span class="icons_home_edit">&nbsp;</span>
							</a>
						</li>
						<li>
							<a href="<?php echo U('Forum/myMessage',array('wecha_id'=>$wecha_id,'token'=>$_GET['token']));?>">
														    <span class="icons_my" data-tip="<?php echo ($messageNum); ?>">&nbsp;</span>
															<label>我的</label>
							</a>
						</li>
					</ul>
				</section>
			</footer>
		</div>
			
<script type="text/javascript">
window.shareData = {  
            "moduleName":"Forum",
            "moduleID":"",
            "imgUrl": "", 
            "timeLineLink": "<?php echo ($f_siteUrl); echo U('Forum/index',array('token'=>$_GET['token']));?>",
            "sendFriendLink": "<?php echo ($f_siteUrl); echo U('Forum/index',array('token'=>$_GET['token']));?>",
            "weiboLink": "<?php echo ($f_siteUrl); echo U('Forum/index',array('token'=>$_GET['token']));?>",
            "tTitle": "<?php echo ($uname); ?>",
            "tContent": "<?php echo ($uname); ?>"
        };
</script>
<?php echo ($shareScript); ?>

	</body>

</html>