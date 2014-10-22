<?php
class ArticleAction extends BackAction{

	public function index(){		
		$article_mod=D('Article');
		$count=$article_mod->count();
		$page=new Page($count,25);
		$info=$article_mod->limit($page->firstRow.','.$page->listRows)->select();
		
		$this->assign('page',$page->show());
		$this->assign('info',$info);
		$this->display();	
	}
	//增加
	public function add(){
		if(isset($_POST['dosubmit'])){			
			$article_mod=D('Article');			
			$data = $article_mod->create();		
			if(!$data){
				$this->error('操作失败');
			}			
			
			if ($_FILES['img']['name']!='') {
				$upload_list = $this->_upload('article');
				$data['img'] = $upload_list;
			}			
			$result = $article_mod->add($data);	
						
			if($result){
				$this->success('增加数据成功',U('Article/index'));
			}else{
				$this->error('操作失败');
			}
		}else{
			$this->display();
		}
		
	}
	//编辑
	public function edit(){
		if(isset($_POST['dosubmit'])){
			$article_mod=M('Article');			
			$data = $article_mod->create();		
			if ($_FILES['img']['name']!='') {
				$upload_list = $this->_upload('article');
				$data['img'] = $upload_list;
			}		
			$result = $article_mod->save($data);			
			if(false !== $result){
				$this->success('修改成功',U('Article/index'));
			}else{
				$this->error('修改失败');
			}	
			
		}else{
			
			$id=$this->_get('id','intval');
			$info=D('Article')->find($id);
			$this->assign('info',$info);
			$this->display();
		}	
		
		
	}
	
	
	//删除
	public function del(){
		$db=D('Article');
		$id=$this->_get('id','intval');
		if($db->delete($id)){
			$this->success('操作成功',U(MODULE_NAME.'/index'));
		}else{
			$this->error('操作失败',U(MODULE_NAME.'/index'));
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