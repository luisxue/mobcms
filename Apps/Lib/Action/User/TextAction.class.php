<?php
/**
 *文本回复
**/
class TextAction extends UserAction{
	public function index(){
		$db=D('Text');
		$where['uid']=session('uid');
		$where['token']=session('token');
		$count=$db->where($where)->count();
		$page=new Page($count,25);
		$info=$db->where($where)->limit($page->firstRow.','.$page->listRows)->select();
		$this->assign('page',$page->show());
		$this->assign('info',$info);
		$this->display();
	}
	public function add(){
		//获取分类
		$db=M('TextCate');
		$where['token']=session('token');
		$where['fid']=0;  // 只选择一级分类
		$cate=$db->where($where)->select();		
		foreach ($cate as $key=>$val){
			$cate[$key]['sub']=$db->where("fid='{$val['id']}'")->order('sorts desc')->select();
		}	
		//print_r($cate_info);
		$this->assign('cate',$cate);

		$this->display();
	}
	public function edit(){
		$where['id']=$this->_get('id','intval');
		$where['uid']=session('uid');
		$where['token']=session('token');
		$res=D('Text')->where($where)->find();
		$this->assign('info',$res);
			
		//获取分类
		$db=M('TextCate');
		$where_c['token']=session('token');
		$where_c['fid']=0;  // 只选择一级分类
		$cate=$db->where($where_c)->select();		
		foreach ($cate as $key=>$val){
			$cate[$key]['sub']=$db->where("fid='{$val['id']}'")->order('sorts desc')->select();
		}	
		
		$this->assign('cate',$cate);
			
		$this->display();
	}
	public function del(){
		$where['id']=$this->_get('id','intval');
		$where['uid']=session('uid');
		if(D(MODULE_NAME)->where($where)->delete()){
			M('Keyword')->where(array('pid'=>$id,'token'=>session('token'),'module'=>'Text'))->delete();
			$this->success('操作成功',U(MODULE_NAME.'/index'));
		}else{
			$this->error('操作失败',U(MODULE_NAME.'/index'));
		}
	}
	public function insert(){
		//C('TOKEN_ON',false);
		$this->all_insert('','/add');
	}
	public function upsave(){
		$this->all_save();
	}

}
?>