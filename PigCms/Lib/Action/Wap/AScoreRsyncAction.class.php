<?php

/**
 * 积分更新触发接口
 * 全量同步会员卡积分： http://weixin.blbook.cn/index.php?g=Wap&m=AScoreRsync&a=start&password=blbook_admin
 * 单个同步会员卡积分： http://weixin.blbook.cn/index.php?g=Wap&m=AScoreRsync&a=update&card_no=0000001&password=blbook_admin
 * 获取已经绑定的会员卡: http://weixin.blbook.cn/index.php?g=Wap&m=AScoreRsync&a=getBindCard&password=blbook_admin
 * 
 * 删除已绑定的会员卡（测试用）:
 * 		http://weixin.blbook.cn/index.php?g=Wap&m=AScoreRsync&a=delBindCard&wecha_id=onHRmuPrPWliw3wZO4cJRUeMWQ_A&password=blbook_admin
 */
class AScoreRsyncAction extends Action {
	// 配置
	private $table = "memberinfo";
	public function index() {
		$this -> ajaxReturn("TEST");
	}

	private function checkAdmin() {
		if (!isset($_GET['password'])) {
			$this -> ajaxReturn("hack attemp!");
		}

		$password = $this -> _get("password");
		if (empty($password) || $password != "blbook_admin") {
			$this -> ajaxReturn("what? hack attemp!");
		}
	}
	
	/**
	 * 根据微信号  重置会员卡号信息
	 */
	public function delBindCard(){
		// 身份验证
		$this -> checkAdmin();
		$model = M("Member_card_create");
		$wecha_id = $this -> _get("wecha_id");
		$number = $this -> _get("number");
		
		if( !empty($wecha_id) ){
			$where['wecha_id'] = $wecha_id;
		}
		if( !empty($number) ){
			$where['number'] = $number;
		}
		
		$data['number'] = date("YmdHis");
		$data['old_number'] = "";
		$data['is_bind'] = 0;
		
		$ret = $model -> where($where)->save($data);
		var_dump($model->_sql());
		dump($ret);
	}
	
	/**
	 * todo : 同步绑定的会员卡信息
	 */
	public function syncMemberInfo(){
		$cards = $this->getBindCards();
		foreach($cards as $card){
			$card_no = $card['number'];
			// 获取会员系统卡信息，已经绑定的会员卡一定存在
			$card_info = $this->getMemberInfo($card_no);
			if( !empty($card_info) ){
				// 设置历史积分
			}
		}
	}
	
	// 获取 积分>0 的用户
	public function getUserScore() {
		// 身份验证
		$this -> checkAdmin();
		$model = M("userinfo");
		$where["total_score"] = array("gt", 0);
		$list = $model -> field("wechaname,total_score") -> where($where) -> limit(10) -> select();

		//$ret = $model->setField("total_score",0);
		dump($list);
	}

	public function getBindCard() {
		// 身份验证
		$this -> checkAdmin();
		$model = M("Member_card_create");
		$where['is_bind'] = 1 ;
		$list = $model->where($where)->select();
//		$list = $model->select();
		dump($list);
		$model2 = M();
		$sql = "select a.wecha_name,a.wecha_id,b.number from tp_userinfo a,tp_member_card_create b where a.wecha_id=b.wecha_id";
		$list = $model2 -> query($sql);
		dump($list);
	}

	/**
	 * 获取已绑定的会员卡
	 */
	private function getBindCards(){
		$model = M("Member_card_create");
		$where['is_bind'] = 1 ;
		$list = $model->field("number")->where($where)->select();
		return $list;
	}

	// 更新单个会员卡的积分信息
	public function update() {
		$this -> checkAdmin();
		
		$card_no = $this -> _get("card_no");
		// 会员卡是否已经绑定
		$wecha_id = $this->isCardBind($card_no);
		if( $wecha_id ){
			// 获取微信会员卡积分
			$jf = $this->getJf($wecha_id);
			if( $jf === false ){
				$this->ajaxReturn(null,"获取微信用户信息失败!",0);
			}
			// erp系统增加的积分
			$jf_info = $this->getErpJf($card_no);
			$jf_add = $jf_info['jf_add'];
			$jf_status = $jf_info['jf_status'];
			
			/**
			 * feixiang: 2015年10月14日需求 
			 * 			   首次绑定不增加积分(积分清零)
			 */
			if( !empty($jf_status) ){
				if( $jf_add > 0 ){
					$jf_update = $jf + $jf_add;
					$ret = $this->updateJf($wecha_id,$jf_update);
					if( $ret ){
						$ret = array("card_no" => $card_no, "old_score" => $jf, "new_score" => $jf_update);
						$this->ajaxReturn($ret,"success",1);
					}else{
						$this->ajaxReturn(null,"更新失败!",0);
					}
				}else{
					$this->ajaxReturn(null,"积分没有变化.",0);	
				}
			}else{
				// 更新首次绑定状态
				$ret = $this->updateJfStatus($card_no);
				if( $ret !== false ){
					$this->ajaxReturn(null,"首次绑定，积分置0.",1);
				}else{
					$this->ajaxReturn(null,"积分置0失败.",0);
				}
			}
		}else{
			$this->ajaxReturn(null,"会员卡未绑定",0);
		}
	}
	
	private function getJf($wecha_id){
		$model = M("userinfo");
		$where['wecha_id'] = "{$wecha_id}" ;
		$userinfo = $model -> field("total_score") -> where($where) -> find();
		
		$jf = 0 ;
		if( $userinfo === false ){
			return false ;
		}else{
			$jf = $userinfo['total_score'];
		}
		return $jf ; 
	}
	
	// 更新会员卡积分
	private function updateJf($wecha_id,$jf){
		$where_update['wecha_id'] = "{$wechat_id}";
		$ret = $model -> table("tp_userinfo") -> where($where_update) -> setField("total_score", $jf);
		
		return $ret ; 
	}

	// 获取erp系统积分
	private function getErpJf($card_no){
		$model = M();
		$model -> db(1, 'mysql://blbook:ONoiE8EVO0TDtp@119.29.116.37/weixin');
		$card = $model -> db(1) -> table($this -> table) -> field("total_my,jf_history,jf_status") -> where("card_no='{$card_no}'") -> find();
		
		$jf_add = 0 ;
		if( $card ){
			// 计算应该加的积分
			$jf_erp = $card['total_my'];
			$jf_history_erp = $card['jf_history'];
			$jf_add = intval($jf_erp) - intval($jf_history_erp);
			$card['jf_add'] = $jf_add;	
		}
		// 切换回主数据库
		$model -> db(0);
		return $card;
	}

	private function isCardBind($card_no) {
		$model = M("member_card_create");
		$where['number'] = "{$card_no}";
		$where['is_bind'] = 1;
		$ret = $model -> field("wecha_id") -> where($where) -> find();
		if ($ret === false) {
			return false;
		} else {
			$wecha_id = $ret['wecha_id'];
			return $wecha_id;
		}
	}
	
	/**
	 * 获取用户绑定实体卡信息
	 */
	private function getUserCardInfoByWechaId($wecha_id){
		$model = M("member_card_create");
		$where['wecha_id'] = "{$wecha_id}";
		$ret = $model -> where($where) -> find();
		return $ret ; 
	}

	// 更新所有会员卡
	public function start() {
		// 身份验证
		$this -> checkAdmin();
		// 返回结果
		$result = array();

		$model = M("member_card_create");
		// 遍历已绑定的会员卡，更新积分信息
		$list = $model -> where("is_bind=1") -> select();
		if ($list == false) {
			$this -> ajaxReturn("no card binded!");
		}
		// 设置 erp数据
		$model -> db(1, 'mysql://blbook:ONoiE8EVO0TDtp@119.29.116.37/weixin');
		foreach ($list as $value) {
			// 取该会员卡的积分信息
			$wechat_id = $value['wecha_id'];
			$card_no = $value['number'];

			$model = M("userinfo");
			$where_user["wecha_id"] = "{$wechat_id}";
			$userinfo = $model -> field("total_score") -> where($where_user) -> find();

			$jf = $userinfo['total_score'];
			// 获取该会员卡的信息
			$card = $model -> db(1) -> table($this -> table) -> field("total_my,jf_history,jf_status") -> where("card_no='{$card_no}'") -> find();
			if ($card) {
				// 计算应该加的积分
				$jf_erp = $card['total_my'];
				$jf_history_erp = $card['jf_history'];

				$jf_add = intval($jf_erp) - intval($jf_history_erp);
				if ($jf_add > 0) {
					// 如果有分数变化，则设置历史积分，再更新会员卡积分
					$update_sql = "update {$this->table} set jf_history={$jf_erp} where card_no='{$card_no}';";
					$ret = $model -> db(1) -> table($this -> table) -> execute($update_sql);
					if ($ret != false) {
							$result[] = array("card_no" => $card_no, "old_score" => $jf, "new_score" => $jf_update);
					}
					
					// 2015年10月14日 需求： 如果是第一次更新，则将积分置为0，后面才开始积分 ———— 废弃，绑定会员卡时已经处理
					/*
					if( !empty($card['jf_status'])){
						// 切换回主数据库
						$model -> db(0);
						
						// 更新会员卡积分
						$jf_update = $jf + $jf_add;
						$where_update['wecha_id'] = "{$wechat_id}";
						$ret = $model -> table("tp_userinfo") -> where($where_update) -> setField("total_score", $jf_update);
						if ($ret != false) {
							$result[] = array("card_no" => $card_no, "old_score" => $jf, "new_score" => $jf_update);
						}
					}else{
						// 更新首次绑定状态 jf_status，设置为已绑定
						$ret = $model -> db(1) -> table($this -> table) -> where("card_no='{$card_no}'") -> setField("jf_status",1);
						if ($ret != false) {
							$result[] = array("card_no" => $card_no, "old_score" => $jf, "new_score" => $jf_update);
						}		
					}
					 * 
					 */
				}
			}
		}
		$this -> ajaxReturn(null, "updated:" . count($result), 1);
	}

	private function getUserinfo($wechat_id) {
		$model = M('Userinfo');
		$where["wechat_id"] = "{$wechat_id}";
		$ret = $model -> where($where) -> find();
		return $ret;
	}
	
	private function updateJfStatus($card_no){
		// 切换到erp系统数据库
		$model = M();
		$model = $model -> db(1, 'mysql://blbook:ONoiE8EVO0TDtp@119.29.116.37/weixin');

		$card_where['card_no'] = $card_no;
		$card = $model -> db(1) -> table('memberinfo') -> where($card_where) -> setField("jf_status",1);

		// 切换回主数据库
		$model -> db(0);
		// end erp系统卡号验证
		return $card;
	}

	private function getMemberInfo($card_no) {
		// 切换到erp系统数据库
		$model = M();
		$model = $model -> db(1, 'mysql://blbook:ONoiE8EVO0TDtp@119.29.116.37/weixin');

		$card_where['card_no'] = $card_no;
		$card = $model -> db(1) -> table('memberinfo') -> where($card_where) -> find();

		// 切换回主数据库
		$model -> db(0);
		// end erp系统
		return $card;
	}

}
?>
