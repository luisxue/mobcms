<?php
/**
 *语音回复
**/
class Text_cateAction extends UserAction{
	public function index(){
		$db=D('TextCate');
		$where['token']=session('token');
		$where['fid']=0;  // 只选择一级分类
		$count=$db->where($where)->count();
		$page=new Page($count,10);
		$info=$db->where($where)->order('sorts desc')->limit($page->firstRow.','.$page->listRows)->select();
		
		foreach ($info as $key=>$val){
			$info[$key]['sub']=$db->where("fid='{$val['id']}'")->order('sorts desc')->select();
		}		
		$this->assign('page',$page->show());
		$this->assign('info',$info);
		$this->display();
	}
	
	public function add(){
		/*修改为二级分类*/
		$TextCate_mod = D('TextCate');
		$where['token']=session('token'); //获取tooken
		$where['fid']=0;
    	$result = $TextCate_mod->field('id,name')->where($where)->order('sorts DESC')->select();
    	
    	$this->assign('cate_first',$result);
    		
		
		$this->display();
	}
	
	public function edit(){
		$id=$this->_get('id','intval');
		$info=M('TextCate')->find($id);
		$this->assign('info',$info);
		
		//获取分类
		$TextCate_mod = D('TextCate');
		$where['token']=session('token'); //获取tooken
		$where['fid']=0;
    	$result = $TextCate_mod->field('id,name')->where($where)->order('sorts DESC')->select();
    	
    	$this->assign('cate_first',$result);
    	$this->assign('sfid',$info['fid']);		
		$this->display();
	}
	
	public function del(){
		$where['id']=$this->_get('id','intval');
		
		$db=D('Text');
		//判断一级分类下面是否有二级分类
		$text_cate_count=D(MODULE_NAME)->where("fid='{$where['id']}'")->count();
		
		if($text_cate_count>0){
			$this->error('请删除此分类下面的子分类，然后再删除此分类',U(MODULE_NAME.'/index'));
			exit;
		}
		
		//判断此分类下面是否有数据	
		$count=$db->where("cateid='{$where['id']}'")->count();
		if($count>0){
			$this->error('此分类下面有数据，请删除此分类下对应数据在删除此分类',U(MODULE_NAME.'/index'));
			exit;
		}		
		$where['token']=session('token'); //获取tooken
		if(D(MODULE_NAME)->where($where)->delete()){
			$this->success('操作成功',U(MODULE_NAME.'/index'));
		}else{
			$this->error('操作失败',U(MODULE_NAME.'/index'));
		}
	}
	public function insert(){
		$this->all_insert('','/add');
	}
	public function upsave(){
		$this->all_save();
	}
}
?>