<?php
class ArticleModel extends Model{

	protected $_validate =array(
		array('title','require','标题不能为空',1),		
	);
	
	protected $_auto = array (		
		array('createtime','time',self::MODEL_INSERT,'function'),
		array('updatetime','time',self::MODEL_BOTH,'function'),
	);	
	
	
	
}