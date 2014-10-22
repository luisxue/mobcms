<?php
/**
 *用户案例
**/
class Case_cateAction extends BackAction{
	public function index(){
		$db=D('Case_cate');
		/*
		 * F('case',null);
		$case=$db->where('status=1')->limit(32)->select();
		F('case',$case);
		 * */
		$count=$db->count();
		$page=new Page($count,25);
		$info=$db->order('sorts ASC')->limit($page->firstRow.','.$page->listRows)->select();
		$this->assign('info',$info);
		$this->assign('page',$page->show());
		$this->display();
	}
	public function add(){
		$this->display();
	}
	
	public function edit(){
		$id=$this->_get('id','intval');
		$info=D('Case_cate')->find($id);
		$this->assign('info',$info);
		$this->display('add');
	}
	
	public function del(){
		$db=D('Case_cate');
		$id=$this->_get('id','intval');
		if($db->delete($id)){
			$this->success('操作成功',U(MODULE_NAME.'/index'));
		}else{
			$this->error('操作失败',U(MODULE_NAME.'/index'));
		}
	}
	
	public function insert(){
		$case_mod=D('Case_cate');				
		$data = $case_mod->create();		
		if(!$data){
			$this->error('操作失败');
		}
		if ($_FILES['img']['name']!='') {
			$upload_list = $this->_upload('case');
			$data['img'] = $upload_list;
		}
		$result = $case_mod->add($data);	
		if($result){
			$this->success('操作成功',U('Case_cate/index'));
		}else{
			$this->error('操作失败');
		}
	}
	
	public function upsave(){
		$db=D('Case_cate');			
		$data = $db->create();
		if ($_FILES['img']['name']!='') {
			$upload_list = $this->_upload('case');
			$data['img'] = $upload_list;
		}		
		$result = $db->save($data);
		if(false !== $result){
			$this->success('修改成功',U('Case_cate/index'));
		}else{
			$this->error('修改失败');
		}	
	}	
	//公共上传图片方法	
	public function _upload($savePath)
	{
		import("ORG.Net.UploadFile");
		$upload = new UploadFile();
		//设置上传文件大小
		$upload->maxSize = 32922000;
		$upload->allowExts = explode(',', 'jpg,gif,png,jpeg');
		$upload->savePath = ROOT_PATH.'/data/uploads/'.$savePath.'/';
		$upload->saveRule = uniqid;

		if (!$upload->upload()) {
			//捕获上传异常
			echo $upload->getErrorMsg();
			exit;
			$this->error($upload->getErrorMsg());
		} else {
			//取得成功上传的文件信息
			$uploadList = $upload->getUploadFileInfo();
		}
		$uploadList='./data/uploads/'.$savePath.'/'.$uploadList['0']['savename'];
		return $uploadList;
	}
	
	
	
	
	
}