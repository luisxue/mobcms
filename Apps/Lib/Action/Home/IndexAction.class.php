<?php
class IndexAction extends BaseAction{
	
	
	public function _initialize(){
		parent::_initialize();
		//获取友情连接
		$links_mode=D('Links');
		$links_rel=$links_mode->where("status=1")->select();		
		$this->assign('links',$links_rel);
		
		//获取几条客户案例
		//获取分类		
		$caseCate_mode=D('CaseCate');
		$cateRel=$caseCate_mode->where('status=1')->order("sorts ASC")->limit("0,12")->select();		
		$this->assign('footer_cates',$cateRel);	
		
	}
	//首页
	public function index(){		
		$this->display();
	}
	//客户案例
	public function cases(){
		//获取分类		
		$caseCate_mode=D('CaseCate');
		$cateRel=$caseCate_mode->where('status=1')->order("sorts ASC")->select();		
		$this->assign('cates',$cateRel);		
		
		$cid=$this->_get('cid');
		
		//获取对应的列表内容    点击分类的时候列表全部展示				
		$case_mode=D('Case');		
		$case_rel=$case_mode->order("sorts")->where("cate_id='{$cid}'")->select();
		
		//echo $case_mode->getLastSql();
		
		
		//print_r($case_rel);
		//exit;
		
		$this->assign('case_rel',$case_rel);
		$this->assign('cid',$cid);//cid用于选中		
		foreach ($cateRel as $key=>$val){
			if($val['id']==$cid){
				$cname=$val['name'];
			}
		}				
		$this->assign('cname',$cname);//获取当前分类的名称
		
		//如果点击母个案例进来的时候 显示对应案例信息
		$id=$this->_get('id');		
		if($id){
			$one_case_rel=$case_mode->order("sorts")->where("id='{$id}'")->find();
			//echo $case_mode->getLastSql();
			$this->assign('one_case_rel',$one_case_rel);
			$this->assign('item_id',$id);			
		}
		//如果有id
		//print_r($cateRel);				
		$this->display();
	} 	
	//客户案例
	public function introduction(){	
		//获取分类	
		//如果点击母个案例进来的时候 显示对应案例信息
		$article_mode=D('article');		
		$articleRel=$article_mode->field('id,titleb')->where('status=1')->order("sorts ASC")->select();
				
		$this->assign('all_article',$articleRel);			
		$id=$this->_get('id');		
		if($id){
			$one_article_rel=$article_mode->order("sorts ASC")->where("id='{$id}'")->find();
			//echo $article_mode->getLastSql();
			//exit;
			$this->assign('one_article_rel',$one_article_rel);
			$this->assign('article_id',$id);			
		}				
		$this->display();
	}
	public function resetpwd(){
		$uid=$this->_get('uid','intval');
		$code=$this->_get('code','trim');
		$rtime=$this->_get('resettime','intval');
		$info=M('Users')->find($uid);
		if( (md5($info['uid'].$info['password'].$info['email'])!==$code) || ($rtime<time()) ){
			$this->error('非法操作',U('Index/index'));
		}
		$this->assign('uid',$uid);
		$this->display();
	}
	//验证码
    function verify(){
        import("ORG.Util.Image");
        //$length=4, $mode=1, $type='png', $width=48, $height=22
        Image::buildImageVerify(4,1,'png',52,24);
    }
}