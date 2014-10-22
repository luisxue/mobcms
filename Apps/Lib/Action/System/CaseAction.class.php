<?php
/**
 *用户案例
**/
class CaseAction extends BackAction{
	public function index(){
		$db=D('Case');
		$case_cate=D('Case_cate');
		F('case',null);
		$case=$db->where('status=1')->limit(32)->select();
		F('case',$case);
		$count=$db->count();
		$page=new Page($count,25);
		$info=$db->limit($page->firstRow.','.$page->listRows)->select();
		
		foreach ($info as $key=>$val){
			$cate_name=$case_cate->where("id='{$val['cate_id']}'")->find();
			$info[$key]['cate_name']=$cate_name['name'];
		}
		$this->assign('info',$info);
		$this->assign('page',$page->show());
		$this->display();
	}
	public function add(){
		
		$case_cate=D('CaseCate');
		$case_cate_rel=$case_cate->select();				
		$this->assign('case_cate',$case_cate_rel);//分类列表
		
		$this->display();
	}
	
	public function edit(){
		$id=$this->_get('id','intval');
		$info=D('Case')->find($id);
		$this->assign('info',$info);
		
		$case_cate=D('CaseCate');
		$case_cate_rel=$case_cate->select();				
		$this->assign('case_cate',$case_cate_rel); //分类列表
		$this->assign('cate_id',$info['cate_id']);
		
		$this->display('add');
	}
	
	public function del(){
		$db=D('Case');
		$id=$this->_get('id','intval');
		if($db->delete($id)){
			$this->success('操作成功',U(MODULE_NAME.'/index'));
		}else{
			$this->error('操作失败',U(MODULE_NAME.'/index'));
		}
	}
	
	public function insert(){
		$case_mod=D('Case');				
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
			$this->success('操作成功',U('Case/index'));
		}else{
			$this->error('操作失败');
		}
	}
	
	public function upsave(){
		$db=D('Case');			
		$data = $db->create();
		if ($_FILES['img']['name']!='') {
			$upload_list = $this->_upload('case');
			$data['img'] = $upload_list;
		}		
		$result = $db->save($data);
		if(false !== $result){
			$this->success('修改成功',U('Case/index'));
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