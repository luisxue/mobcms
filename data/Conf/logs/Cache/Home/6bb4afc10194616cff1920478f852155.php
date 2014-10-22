<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<title><?php echo C('site_title');?>用户登陆</title>
<meta name="keywords" content="<?php echo C('site_title');?>用户登录" />
<meta name="description" content="<?php echo C('content');?>" />
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/style.css"/>
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/index.css"/>
<!--[if lte IE 6]>
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/ie6.css"/>
<![endif]-->
<script type="text/javascript">window.onerror=function(){return true;}</script>
<script type="text/javascript" src="<?php echo RES;?>/js/lang.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/js/config.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/js/jquery.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/js/common.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/js/page.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/js/jquery.lazyload.js"></script>
<script type="text/javascript">
GoMobile('');
var searchid = 5;
</script>
</head>
<body>
<div id="herder" >
	<div id="top">
		<img src="<?php echo RES;?>/images/logo.png" alt="微信营销后台管理系统" />		
		<a href="/" <?php if((ACTION_NAME == 'index') and (GROUP_NAME == 'Home')): ?>class="menuon"<?php endif; ?>>首页</a>
		<a href="<?php echo U('Home/Index/introduction',array('id'=>4));?>" <?php if((ACTION_NAME) == "introduction"): ?>class="menuon"<?php endif; ?>>功能介绍</a>
		<a href="<?php echo U('Home/Index/cases',array('cid'=>6));?>" <?php if((ACTION_NAME) == "cases"): ?>class="menuon"<?php endif; ?>>客户案例</a>
		<a href="<?php echo U('Home/Index/about');?>" <?php if((ACTION_NAME) == "about"): ?>class="menuon"<?php endif; ?>>关于我们</a>
		<!--
		<a href="Home-Index-price.html" <?php if((ACTION_NAME) == "price"): ?>class="menuon"<?php endif; ?>>资费说明</a>
		-->
        <a href="<?php echo U('Home/Index/help');?>" <?php if((ACTION_NAME) == "help"): ?>class="menuon"<?php endif; ?>>帮助中心</a>
			
		<?php if($_SESSION[uid]!=false): ?><a href="<?php echo U('User/Index/index');?>" >管理中心</a><?php endif; ?>				
		<a class="line" ></a>
      	<div class="lgoin_info">
			<?php if($_SESSION[uid]==false): ?><a href="<?php echo U('Users/login');?>">登录</a>
				<a href="<?php echo U('Users/register');?>">注册</a>
				
				<?php else: ?>
				<a href="<?php echo U('User/Index/index');?>" id="tiduser">您好：<span><?php echo (session('uname')); ?></span></a>
				<a href="<?php echo U('System/Admin/logout');?>" class="a1" id="quit">退出</a><?php endif; ?>
		</div>
	</div>
</div>
<div class="banner gbanner"></div>
<div class="main">
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/login.css"/>
<div class="abody">
  <div class="contaier wp cf">

    <div class="think-login">
        <div class="head">
            <strong>用户登录</strong>
        </div>
		<?php if(isset($err)): ?><div class="err" style="width:160px;">
	        <div class="icon_<?php echo ($err["err"]); ?>"><?php echo ($err["msg"]); ?></div>                
        </div><?php endif; ?>  
        <div class="body think-form ">
            <form action="<?php echo U('Users/login');?>" method="post" class="login">
                <table>
                    <tbody><tr>
                        <th>用户名:</th>
                        <td>
                            <input class="text" type="text" name="username" value="<?php echo ($username); ?>">
                        </td>
                    </tr>
                    <tr>
                        <th>密　码:</th>
                        <td>
                            <input class="text" type="password" name="password">
                        </td>
                    </tr>
					<tr>
                        <th>验证码:</th>
                        <td>
                            <input class="text" type="text" name="code" style="width:80px;">
							<img src="<?php echo U('Index/verify');?>" class="verify_img" class="left"                              
							onclick="javascript:this.src='./?a=verify&m=Index&tm='+Math.random()"
                            style="margin:5px 0px 0px 10px;"/>
                        </td>
                    </tr>
                    <tr>
                        <th>&nbsp;</th>
                        <td>
                            <input class="submit" type="submit" value="登录">
                        </td>
                    </tr>
					<tr>
                        <th>&nbsp;</th>
                        <td>&nbsp;                            
                        </td>
                    </tr>				
                </tbody>
			 </table>
            </form>
        </div>
    </div>	
	<div class="other_login">
		<p> 还没有成为用户，立即注册吧！</p>
		<a href="<?php echo U('Users/register');?>" class="other_login_btn">立即注册</a>
	</div>
	
   	
</div>

</div>
</div>

<div class="footerEnd">
	<p>(<a style="color:#3399FF;" href="http://www.alivv.com" target="_blank">Alivv</a>)旗下微信营销系统：<a style="color:#3399FF;" href="<?php echo U('Home/Index/about');?>" target="_blank">微动CMS.</a>  © 2010-2014 Alivv. All Rights Reserved.  京ICP备 84127796号-2</p>
	<p><strong>意见反馈Email: </strong>luisxue@alivv.net</p>

	<p>QQ群交流：297432779　<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_5827351'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/stat.php%3Fid%3D5827351%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));</script>
	</p>


</div>
</body>
</html>