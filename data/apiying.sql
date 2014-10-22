/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : apiying

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2014-05-18 15:23:50
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tp_access`
-- ----------------------------
DROP TABLE IF EXISTS `tp_access`;
CREATE TABLE `tp_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) default NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_access
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_adma`
-- ----------------------------
DROP TABLE IF EXISTS `tp_adma`;
CREATE TABLE `tp_adma` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(255) NOT NULL,
  `copyright` varchar(50) NOT NULL,
  `info` varchar(120) NOT NULL,
  `title` varchar(60) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_adma
-- ----------------------------
INSERT INTO `tp_adma` VALUES ('1', '1', 'knmdyy1390207240', '/tpl/Home/ApiYing/common/images/ewm2.jpg', '© 2001-2013 某某微信版权所有', '微信营销管理平台为个人和企业提供基于微信公众平台的一系列功能，包括智能回复、微信3G网站、互动营销活动，会员管理，在线订单，数据统计等系统功能,带给你全新的微信互动营销体验。', '微信微信营销专家');
INSERT INTO `tp_adma` VALUES ('2', '6', 'zpbqjb1391609865', 'http://test.57lehuo.com/weixin.jpg', '© 2001-2013 phonegap中文网版权所有', '微信营销管理平台为个人和企业提供基于微信公众平台的一系列功能，包括智能回复、微信3G网站、互动营销活动，会员管理，在线订单，数据统计等系统功能,带给你全新的微信互动营销体验。', '微信微信营销专家');

-- ----------------------------
-- Table structure for `tp_alipay_config`
-- ----------------------------
DROP TABLE IF EXISTS `tp_alipay_config`;
CREATE TABLE `tp_alipay_config` (
  `token` varchar(60) NOT NULL,
  `name` varchar(40) NOT NULL default '',
  `pid` varchar(40) NOT NULL default '',
  `key` varchar(60) NOT NULL default '',
  `open` tinyint(1) NOT NULL default '0',
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_alipay_config
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_alipay_m_config`
-- ----------------------------
DROP TABLE IF EXISTS `tp_alipay_m_config`;
CREATE TABLE `tp_alipay_m_config` (
  `token` varchar(60) NOT NULL,
  `name` varchar(40) NOT NULL default '',
  `pid` varchar(40) NOT NULL default '',
  `key` varchar(60) NOT NULL default '',
  `open` tinyint(1) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_alipay_m_config
-- ----------------------------
INSERT INTO `tp_alipay_m_config` VALUES ('feedrk1391692825', '', '', '', '1', '0');

-- ----------------------------
-- Table structure for `tp_api`
-- ----------------------------
DROP TABLE IF EXISTS `tp_api`;
CREATE TABLE `tp_api` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `number` tinyint(1) NOT NULL,
  `order` tinyint(1) NOT NULL,
  `is_colation` tinyint(1) NOT NULL,
  `colation_keyword` text NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`,`token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_api
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_areply`
-- ----------------------------
DROP TABLE IF EXISTS `tp_areply`;
CREATE TABLE `tp_areply` (
  `id` int(11) NOT NULL auto_increment,
  `keyword` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `token` char(30) NOT NULL,
  `home` varchar(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_areply
-- ----------------------------
INSERT INTO `tp_areply` VALUES ('1', '首页', '首页', '1', '', '1390066104', '', 'eurggv1390065711', '0');
INSERT INTO `tp_areply` VALUES ('2', '', '您好！欢迎关注启鸿教育咨询服务公众平台，我们将竭诚为您服务。', '7', '', '1391699244', '', 'feedrk1391692825', '0');
INSERT INTO `tp_areply` VALUES ('3', '', '您好！欢迎关注启鸿生活服务微信公众平台，我们提供本地天气、家政、打折促销、房产、招聘等信息的查询服务。', '7', '', '1391766061', '1391766344', 'vssbhv1391702832', '');
INSERT INTO `tp_areply` VALUES ('4', '功能 ？', '亲，欢迎您关注启鸿校园生活公众平台。启鸿大学校园生活，立足大学校园，服务大学生活。\r\n我们提供以下校园生活服务：\r\n1、各类校园招聘。\r\n2、资格考试信息。\r\n3、等级考试查询。\r\n4、驾校报名查询。\r\n5、校园外卖订购。\r\n6、电脑维修购买。\r\n7、本地旅游景点。\r\n8、常用号码查询。\r\n9、娱乐休闲查询。\r\n10、公交路线查询。\r\n欢迎您对本平台提供建设性意见。', '7', '', '1392008772', '1392031428', 'btmdkz1392007679', '');
INSERT INTO `tp_areply` VALUES ('5', 'home', '', '7', '', '1392206958', '1393069634', 'usyhhb1392205269', '1');
INSERT INTO `tp_areply` VALUES ('7', '', '欢迎来到王小贱”贱“人馆，关注 王小贱，关注微生活！用你那贱贱的手指头回复以下内容试试~~\r\n\r\n访问首页   输入首页    注释：进入”贱“人馆首页\r\n天气查询　城市名＋天气　例上海天气\r\n快递  快递＋快递名＋快递号　例：快递顺丰117215889174\r\n手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13917778912\r\n笑话　直接发送笑话\r\n健康指数查询　健康＋高，＋重　例：健康170,65\r\n姓名算命    算命+姓名   例：算命王小贱', '22', '', '1393673731', '1393675161', 'rzakjq1393673210', '');
INSERT INTO `tp_areply` VALUES ('6', '', '感谢亲的关注哦/示爱/示爱本小店的发展离不开亲的支持/抱拳/抱拳本小店支持在线下单功能，发送【商城】，开始选购哦/礼物/礼物亲商品直送到家，不信你试试哦/OK/OK\r\n       在线如有任何疑问请联系：阿宝 18754132531或，微信个人号dongkai730638  \r\n本平台还有强大的查询功能，请发送关键词进行搜索!\r\n\r\n1.发送【抽奖】即可玩幸运大抽奖\r\n2.发送【梦见+关键词】例如:梦见父母，在线解梦\r\n3.发送【笑话】直接发送笑话\r\n4.发送【糗事】直接发送糗事', '13', '', '1392969482', '1393054279', 'sbhydc1392964286', '');
INSERT INTO `tp_areply` VALUES ('8', '', '你好，欢迎您关注青海名贵土特产！', '7', '', '1393861151', '', 'kkxebf1393860973', '0');
INSERT INTO `tp_areply` VALUES ('9', '', '1.附近周边信息查询地图\r\n2.音乐查询　音乐＋音乐名 例：音乐爱你一万年\r\n3.天气查询　城市名＋天气　例上海天气\r\n4.手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13917778912\r\n 5.身份证查询　身份证＋号码　　例：身份证342423198803015568\r\n 6.公交查询　公交＋城市＋公交编号　例：上海公交774\r\n 7.火车查询　火车＋城市＋目的地　例火车上海南京\r\n8.翻译 支持 及时翻译，语音翻译　翻译＋关键词 例：翻译你好\r\n9.彩票查询　彩票＋彩票名 例如:彩票双色球\r\n10.周公解梦　梦见+关键词　例如:梦见父母\r\n11.陪聊　直接输入聊天关键词即可\r\n12.聊天　直接输入聊天关键词即可\r\n13.藏头诗 藏头诗+关键词　例：藏头诗我爱你　\r\n14.笑话　直接发送笑话\r\n15.糗事　直接发送糗事\r\n16.快递 快递＋快递名＋快递号　例：快递顺丰117215889174\r\n 17.健康指数查询　健康＋高，＋重　例：健康170,65\r\n 18.朗读 朗读＋关键词　例：朗读LanRain多用户营销系统\r\n19.计算器 计算器使用方法　例：计算50-50　，计算100*100\r\n 20.输入服务了解平台系统的售后服务\r\n21.输入抽奖，即可玩幸运大抽奖\r\n22.输入会员即可填写会员资料', '38', '', '1394030539', '1394030791', 'egagky1394029884', '1');
INSERT INTO `tp_areply` VALUES ('10', '华联', '1.附近周边信息查询地图\r\n2.公交查询　公交＋城市＋公交编号　例：上海公交774\r\n3.火车查询　火车＋城市＋目的地　例火车上海南京\r\n4.音乐查询　音乐＋音乐名 例：音乐爱你一万年\r\n5.天气查询　城市名＋天气　例上海天气\r\n6.快递 快递＋快递名＋快递号　例：快递顺丰117215889174\r\n7.健康指数查询　健康＋高，＋重　例：健康170,65', '47', '', '1394502580', '1394504876', 'ymivkz1394500574', '1');
INSERT INTO `tp_areply` VALUES ('11', 'home', '感谢您对我们的支持，phonegap中文网旗下网站平台（apiying.com）测试开通中，交流群240840349', '6', '', '1394628948', '1395495033', 'zpbqjb1391609865', '1');
INSERT INTO `tp_areply` VALUES ('12', '天气查询', '天气查询', '53', '', '1394769681', '', 'txoohl1394767478', '0');
INSERT INTO `tp_areply` VALUES ('13', '首页', '首页', '74', '', '1395677578', '1395804293', 'wgsiap1395669220', '1');
INSERT INTO `tp_areply` VALUES ('14', '', '您好，感谢您关于逸山伍自转小火锅官方微信。\r\n回复“砸金蛋”即可参与本公司开业大酬宾活动。', '75', '', '1395817451', '1395847834', 'gfqlqk1395814571', '');
INSERT INTO `tp_areply` VALUES ('15', '首页', '', '69', '', '1395839645', '1395845294', 'wdkszz1395625484', '1');
INSERT INTO `tp_areply` VALUES ('16', '', '感谢您关注\"杨伙计餐饮连锁\"公众号，杨伙计致力打造“洞庭湖乡民俗餐饮品牌”，传播“洞庭民俗传统饮食文化”。 /微笑', '36', '', '1396232483', '', 'msowdl1393998402', '0');

-- ----------------------------
-- Table structure for `tp_article`
-- ----------------------------
DROP TABLE IF EXISTS `tp_article`;
CREATE TABLE `tp_article` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `cate_id` int(11) NOT NULL default '0',
  `keywords` varchar(255) default NULL,
  `titleb` varchar(255) default NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(15) NOT NULL,
  `form` varchar(30) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `content` text NOT NULL,
  `img` varchar(1000) NOT NULL,
  `sorts` int(10) default '0',
  `status` tinyint(1) default '1',
  `uid` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_article
-- ----------------------------
INSERT INTO `tp_article` VALUES ('4', '0', '微信网站开发，微官网', '微官网', '微信网站开发_微信后台营销管理系统全国首创微信3G网站', '微官网，快速帮用户打造超炫微信移动网站，只需鼠标点点就可以快速打造属于自己的微信网站', '树小儿', 'apiying.com', '1392733160', '1392733160', '<h1>\r\n	<span style=\"font-size:14px;\"><span style=\"font-size:24px;\">微官网</span></span>\r\n</h1>\r\n<p>\r\n	<span style=\"font-size:14px;\">微信后台营销管理系统全国首创微信3G网站，用户只要通过简单的设置，就能快速生成属于您自己的微信3G网站，并且有各种精美模板，可供选择，还有自定义模版，可以设计出自己的风格，让您的粉丝有种惊艳的感觉。在微信后台营销管理系统官方微信号输入\"首页\"体验微信3G网站。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><img src=\"/data/ArticleImg/image/20140302/531300e122225.png\" title=\"微信网站开发\" alt=\"微信网站开发\" height=\"419\" width=\"501\" /></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><img src=\"/data/ArticleImg/image/20140302/531300e43388a.png\" title=\"微信网站开发\" alt=\"微信网站开发\" height=\"416\" width=\"503\" /></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><img src=\"/data/ArticleImg/image/20140302/531300e539f75.png\" title=\"微信网站开发\" alt=\"微信网站开发\" height=\"413\" width=\"496\" /><br />\r\n<br />\r\n</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', './data/uploads/article/53036be89da55.jpg', null, '1', '0');
INSERT INTO `tp_article` VALUES ('5', '0', '微信会员卡 微信商家会员卡，微信会员卡管理系统', '微信会员卡', '微信会员卡_微信会员卡管理系统 方便携带 永不挂失', '微信会员卡通过在微信内植入会员卡，基于全国4亿微信用户，帮助企业建立集品牌推广、会员管理、营销活动、统计报表于一体的微信会员管理平台。', '树小儿', 'apiying.com', '1393754859', '1393754859', '<h1>\r\n	<span style=\"font-size:14px;\"><span style=\"font-size:18px;\">微信会员卡管理系统 方便携带 永不挂失</span><br />\r\n</span> \r\n</h1>\r\n<p>\r\n	<span style=\"font-size:14px;\">\r\n	<p>\r\n		<span style=\"font-size:14px;\">微信会员卡是基于腾讯公司的各种产品延伸出来的一个全新专注生活电子商务与O2O的最新产品，依靠腾讯亿级的用户群体，通过微信、微博、手机QQ等手机产品，其平台效应已经保证了这种神话的必然来临。</span> \r\n	</p>\r\n<br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">微信会员卡通过在微信内植入会员卡，基于全国6亿微信用户，帮助企业建立集品牌推广、会员管理、营销活动、统计报表于一体的微信会员管理平台。清晰记录企业用户的消费行为并进行数据分析；还可根据用户特征进行精细分类，从而实现各种模式的精准营销。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span> \r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><img src=\"/data/ArticleImg/image/20140302/53130257eef7b.png\" title=\"微信会员卡\" alt=\"微信会员卡\" height=\"347\" width=\"240\" /><span style=\"background-color:;\"><span style=\"color:#000000;\"></span></span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><img src=\"/data/ArticleImg/image/20140302/53130259b9c9c.png\" title=\"微信会员卡\" alt=\"微信会员卡\" height=\"352\" width=\"245\" /><br />\r\n<br />\r\n</span> \r\n</p>', '', null, '1', '0');
INSERT INTO `tp_article` VALUES ('6', '0', '', '微活动', '微活动——优惠券+刮刮卡+大转盘+微投票+一战到底的会员再营销', '微活动 优惠券+刮刮卡+大转盘+微投票+一战到底的会员再营销', '树小儿', 'apiying.com', '1393755034', '1393755034', '<h1>\r\n	微活动 优惠券+刮刮卡+大转盘+微投票+一战到底的会员再营销\r\n</h1>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">我们将利用微信的强交互性，让您通过对互动流程、环节和方式的设计，运用各种设计活动从而实现与用户的互动交流,，微整合系统互动符合微信娱乐性强的产品 本质，微信后台营销管理系统内置了专为商家定制的“商家营销服务模块”，包括优惠券推广模块、幸运大转盘推广模块、刮刮卡抽奖模块、微投票、一战到底等功能模块，商家通过 发起营销活动，对已有客户进行再营销，通过不断更新补充主题，用户可以反复参与，并可带动周边朋友一起分享，从而形成极强的口碑营销效果。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><img src=\"/data/ArticleImg/image/20140302/531303900b6d2.png\" title=\"微活动 优惠券+刮刮卡+大转盘+微投票+一战到底的会员再营销\" alt=\"微活动 优惠券+刮刮卡+大转盘+微投票+一战到底的会员再营销\" height=\"390\" width=\"683\" /><br />\r\n</span> \r\n</p>', '', null, '1', '0');
INSERT INTO `tp_article` VALUES ('7', '1', '微留言 微信留言', '微留言', '微留言:用户的互动交流利器', '“微留言”是一种能为商家带来巨大的社会化流量的功能，允许留言可以被分享于留言者的朋友圈、腾讯微博和发送给好友，这意味着留言可以被无数的粉丝分享', '树小儿', 'apiying.com', '1393755259', '1393755259', '<h1>\r\n	微留言:用户的互动交流利器<br />\r\n</h1>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">“微留言”是一种能为商家带来巨大的社会化流量的功能，允许留言可以被分享于留言者的朋友圈、腾讯微博和发送给好友，这意味着留言可以被无数的粉丝分享，用户对商家进行实时且客观的评价，真实的社交环境保证了留言的客观性和有效性。“微留言”的使用商家只需做好产品和用户服务即可，随着口碑的传播，消费者将源源</span>不断。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/data/ArticleImg/image/20140302/531304632aa1e.png\" title=\"微留言:用户的互动交流利器\" alt=\"微留言:用户的互动交流利器\" height=\"344\" width=\"683\" />\r\n</p>\r\n<p>\r\n	<br />\r\n<img src=\"/data/ArticleImg/image/20140302/531304635feb7.png\" title=\"微留言:用户的互动交流利器\" alt=\"微留言:用户的互动交流利器\" height=\"456\" width=\"519\" /><br />\r\n</p>', '', null, '1', '0');
INSERT INTO `tp_article` VALUES ('8', '1', '微相册，微信相册', '微相册', '微相册:照片展现，让商品一览无余', '微相册作为微信后台营销管理系统平台的一项主打基本功能，为微信后台营销管理系统用户提供图片的存储和展示服务', '树小儿', 'apiying.com', '1393755489', '1393755489', '<h1>\r\n	微相册:照片展现，让商品一览无余<br />\r\n</h1>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">微相册作为微信后台营销管理系统平台的一项主打基本功能，为微信后台营销管理系统用户提供图片的存储和展示服务，是基于图片兴趣分享的社区型产品。在微相册里，您可以方便的创建相册，轻松地发布您需要展示的照片，还可以拓展为商家开展活动的一种展现方式。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><img src=\"/data/ArticleImg/image/20140302/5313055046395.png\" title=\"微相册:照片展现，让商品一览无余\" alt=\"微相册:照片展现，让商品一览无余\" height=\"402\" width=\"716\" /><br />\r\n<br />\r\n</span>\r\n</p>', '', null, '1', '0');
INSERT INTO `tp_article` VALUES ('9', '0', '微信自定义菜单，微信自定义菜单功能', '自定义菜单', '微信自定义菜单：各模块均可直接展现使用，随需求而定，随需要而链', '微信后台营销管理系统提供微信公众号自定义菜单管理功能，用户无需再通过输入关键词触发回复，直接点击菜单就可以看相关的内容', '树小儿', 'apiying.com', '1393755767', '1393755767', '<h1>\r\n	<span style=\"font-size:14px;\"><span style=\"font-size:18px;\">微信自定义菜单：各模块均可直接展现使用，随需求而定，随需要而链</span><br />\r\n</span>\r\n</h1>\r\n<p>\r\n	<span style=\"font-size:14px;\"><br />\r\n</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">微信后台营销管理系统提供微信公众号自定义菜单管理功能，用户无需再通过输入关键词触发回复，直接点击菜单就可以看相关的内容，微信后台营销管理系统可与企业原有Wap进行打通，复用企业APP原有功能，同时可定制个性化功能、使用HTML5新技术进行无限拓展，帮助企业打造最便捷、易推广的微信内置APP，此功能如果结合微信3G网站可以使您的公众号用户体验更好，带给粉丝不一样的感受</span>。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/data/ArticleImg/image/20140302/531306698c6b7.png\" title=\"微信自定义菜单\" alt=\"微信自定义菜单\" height=\"474\" width=\"320\" />\r\n</p>', '', null, '1', '0');
INSERT INTO `tp_article` VALUES ('10', '1', '微房产，微房产360度全景', '微房产', '微房产:360度全景看房', '微房产是利用微信后台营销管理系统平台打造的一款全新超炫酷的房产官方网站，其功能非常强大，包含了楼盘介绍、子楼盘管理、户型介绍及户型图、', '树小儿', 'apiying.com', '1393756023', '1393756023', '<h1>\r\n	微房产:360度全景看房<br />\r\n</h1>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">微房产是利用微信后台营销管理系统平台打造的一款全新超炫酷的房产官方网站，其功能非常强大，包含了楼盘介绍、子楼盘管理、户型介绍及户型图、楼盘相册、房友印象以及专家点评等功能，更有360度全景看房超强大功能震撼登场！花几分钟时间即可打造微房产官网。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span>\r\n</p>\r\n<p>\r\n	<img src=\"/data/ArticleImg/image/20140302/531307632097f.png\" title=\"微房产:360度全景看房\" alt=\"微房产:360度全景看房\" height=\"414\" width=\"504\" />\r\n</p>\r\n<p>\r\n	<br />\r\n<img src=\"/data/ArticleImg/image/20140302/531307640f9de.png\" title=\"微房产:360度全景看房\" alt=\"微房产:360度全景看房\" height=\"413\" width=\"496\" /><br />\r\n<br />\r\n<span style=\"font-size:14px;\"></span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', null, '1', '0');
INSERT INTO `tp_article` VALUES ('11', '1', '微汽车，微信汽车网站', '微汽车', '微汽车', '微汽车采用微信后台营销管理系统平台进行汽车的销售管理、预约保养、预约试驾、保险计算、车贷计算、车型比较、违章查询、360度全景看车', '树小儿', 'apiying.com', '1393756235', '1393756235', '<p>\r\n	<h2 class=\"guideh2\">\r\n		微汽车：预约试驾、预约保养、360度看车、车主关怀应有尽有！<br />\r\n	</h2>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">微汽车采用微信后台营销管理系统平台进行汽车的销售管理、预约保养、预约试驾、保险计算、车贷计算、车型比较、违章查询、360度全景看车、车主关怀等功能，整个过程非常便捷，省时省力省心，并通过与微信后台营销管理系统平台有交互能力的手机客户端，快速便捷的实现了商家的销售管理与预约过程，同时也实现了客户无需进入4s店就能进行预约保养和试驾的功能。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><img src=\"/data/ArticleImg/image/20140302/5313083454a02.png\" alt=\"\" /></span>\r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span>\r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><img src=\"/data/ArticleImg/image/20140302/531308350a2c5.png\" alt=\"\" /></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><br />\r\n</span>\r\n</p>', '', null, '1', '0');
INSERT INTO `tp_article` VALUES ('12', '0', '微信医疗网站,微医疗', '微医疗', '微信医疗网站-微医疗互联网时代的医疗小助手', '微信医疗网站-微医疗互联网时代的医疗小助手,用户可通过微信后台营销管理系统实现在线挂号、内容设置、预约查询、预约统计的一整套服务体系', '树小儿', 'apiying.com', '1394251811', '1394251811', '<h1>\r\n	微信医疗网站-微医疗互联网时代的医疗小助手\r\n</h1>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">用户可通过微信后台营销管理系统实现在线挂号、内容设置、预约查询、预约统计的一整套服务体系，能够有效解决患者挂号难、排队累、就医不方便等一系列难题</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/data/ArticleImg/image/20140308/531a9803a94d4.png\" alt=\"\" />\r\n</p>', '', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('13', '0', '', '微酒店', '微酒店-微信酒店系统，', '微酒店-微信酒店系统，一键点击，轻松订房查看该项使用指南', '树小儿', 'apiying.com', '1394252154', '1394252154', '<h1 class=\"guidep\">\r\n	微酒店-微信酒店系统，一键点击，轻松订房查看该项使用指南<br />\r\n</h1>\r\n<p class=\"guidep\">\r\n	<br />\r\n</p>\r\n<p class=\"guidep\">\r\n	<span style=\"font-size:14px;\">1、消息管理：包含自动消息回复和功能性消息编辑功能，优化对用户的消息服务，提升用户体验。</span>\r\n</p>\r\n<p class=\"guidep\">\r\n	<span style=\"font-size:14px;\">2、门店管理：即对门店详情页面显示内容进行管理，且用户可直接一键导航或一键拨号。</span>\r\n</p>\r\n<p class=\"guidep\">\r\n	<span style=\"font-size:14px;\">3、用户管理：用户信息管理模块，给每个用户打上各种标签，为精准营销提供服务。</span>\r\n</p>\r\n<p class=\"guidep\">\r\n	<span style=\"font-size:14px;\">4、数据统计：各式各样的数据为后期运营提供重要帮助。</span>\r\n</p>\r\n<p class=\"guidep\">\r\n	<span style=\"font-size:14px;\">5、提供服务：用户直接可在公众账号进行预约房间、预约餐厅等操作。</span>\r\n</p>\r\n<p class=\"guidep\">\r\n	<img src=\"/data/ArticleImg/image/20140308/531a99782e01e.png\" alt=\"\" /><br />\r\n<span style=\"font-size:14px;\"></span>\r\n</p>\r\n<p class=\"guidep\">\r\n	<span style=\"font-size:14px;\"><br />\r\n</span>\r\n</p>', '', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('14', '0', '微餐饮，微信餐饮管理系统', '微餐饮', '微餐饮_微信餐饮管理系统', '', '树小儿', 'apiying.com', '1394257922', '1394257922', '<h1>\r\n	微餐饮，微信餐饮管理系统<br />\r\n</h1>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">微信餐饮管理系统 让顾客通过微信可以查看餐厅介绍、就餐环境、菜品、订餐、定位、获取路线导航、点评、反馈意见等。  店家管理员通过微餐厅后台可以审核外卖订单、查看报表数据、修改菜品、验证优惠券等。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/data/ArticleImg/image/20140308/531aaffab951b.png\" alt=\"\" /><br />\r\n<img src=\"/data/ArticleImg/image/20140308/531aaffc5baeb.png\" alt=\"\" /><br />\r\n<img src=\"/data/ArticleImg/image/20140308/531aaffcb9765.png\" alt=\"\" /><br />\r\n<img src=\"/data/ArticleImg/image/20140308/531aaffe4b9cc.png\" alt=\"\" /><br />\r\n</p>', '', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('15', '0', '微商城，微信在线商城系统', '微商城', '微商城_微信在线商城系统', '微信商城是基于微信而研发的一款社会化电子商务系统，同时又是一款传统互联网、移动互联网、微信、易信四网一体化的企业购物系统', '树小儿', 'apiying.com', '1394258374', '1394258374', '<h1>\r\n	微商城_微信在线商城系统\r\n</h1>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">微信商城是基于微信而研发的一款社会化电子商务系统，同时又是一款传统互联网、移动互联网、微信、易信四网一体化的企业购物系统&nbsp; 其主要功能包括：支持商品管理、支持会员管理、支持购物车、支持商品分类管理、支持订单管理、支持店铺设置、支持支付方式管理、支持配送方式管理。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span>\r\n</p>\r\n<p>\r\n	<img src=\"/data/ArticleImg/image/20140308/531ab19e352c7.png\" title=\"微商城\" alt=\"微商城\" height=\"414\" width=\"499\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n<img src=\"/data/ArticleImg/image/20140308/531ab1a07c33e.png\" title=\"微商城\" alt=\"微商城\" height=\"410\" width=\"503\" /><br />\r\n<br />\r\n<span style=\"font-size:14px;\"></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><br />\r\n</span>\r\n</p>', '', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('16', '0', '微团购，微信团购管理系统', '微团购', '微团购—微信团购管理系统', '', '树小儿', 'apiying.com', '1394258724', '1394258724', '<h1>\r\n	微团购—微信团购管理系统<br />\r\n</h1>\r\n<p>\r\n	<span style=\"font-size:14px;\">微团购（wechat&nbsp;Group \r\npurchase），又称微信团购，是一种新型便捷的移动网络团购方式。微团购和传统团购模式有很大区别，微信用户不需要先购买团购凭证（卡券），而是直\r\n接通过微信公众平台确认用户的团购资格，在确定的时间范围内主动前往商品供应商处购买商品的一种购买行为。微团购借助强大的微信平台，依托于微信公众平\r\n台，为那些热爱团购，乐享优惠的微信好友主动推送应季的热门商品。最终是否选择进行团购取决于微信用户自己的需求。可以预测，在未来微团购将会变得越来越\r\n普遍，越来越完整。随着在实践中不断的完善，微团购会变成广大微信用户掌中的珍宝。从商业的角度来说，微团购是一个从超过6亿的微信用户中攫取商机的工\r\n具，可以带来的商机不可估量</span> \r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">微团购商家管理分为后台管理及门店管理两个部分。后台管理分为团购管理、订单管理、团购券管理以及会员管理、退款管理：团购管理包括新建团购、复制团购、\r\n上架管理、添加通知等功能；订单管理及团购券管理主要功能为查询与导出；会员管理中可以看到会员消费总数据；退款管理中可以查看用户的退款信息。门店管理\r\n分为团购券验证及团购券管理两部分：团购券验证可以验证适用门店已选择当前门店的团购券；团购券管理仅支持已被授权的团购。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span> \r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><img src=\"/data/ArticleImg/image/20140308/531ab3a2348d8.png\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span> \r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:14px;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('18', '0', '微信淘宝天猫店铺，微信天猫店铺，微信淘宝店铺', '淘宝天猫店铺', '微信淘宝天猫店铺', '微信淘宝天猫店铺，简单配置店铺商品常用关键词，就可以直接通过微信检索店铺内的商品，关键词是包含匹配，只要用户输入的信息有包含关键词，就会回复店铺商品信息', '树小儿', 'apiying.com', '1394260218', '1394260218', '<h1>\r\n	<span class=\"marginb\">微信淘宝天猫店铺<br />\r\n</span>\r\n</h1>\r\n<p>\r\n	<span class=\"marginb\">开启此开关,只需要你填写天猫或淘宝店铺的手机站点地址，简单配置店铺商品常用关键词，就可以直接通过微信检索店铺内的商品，关键词是包含匹配，只要用户输入的信息有包含关键词，就会回复店铺商品信息，起到很好的推广作用，请看下面的范例。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n<span class=\"marginb\"></span>\r\n</p>\r\n<p>\r\n	<span class=\"marginb\"><img src=\"/data/ArticleImg/image/20140308/531ab8cf6f12c.png\" title=\"淘宝天猫店铺\" alt=\"淘宝天猫店铺\" height=\"315\" width=\"586\" /></span>\r\n</p>\r\n<p>\r\n	<span class=\"marginb\"><br />\r\n</span>\r\n</p>\r\n<p>\r\n	<br />\r\n<span class=\"marginb\"></span>\r\n</p>\r\n<p>\r\n	<span class=\"marginb\"><img src=\"/data/ArticleImg/image/20140308/531ab8989518e.png\" title=\"淘宝天猫店铺\" alt=\"淘宝天猫店铺\" height=\"484\" width=\"575\" /></span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n<span class=\"marginb\"></span>\r\n</p>\r\n<p>\r\n	<span class=\"marginb\"><img src=\"/data/ArticleImg/image/20140308/531ab89d5329c.png\" title=\"淘宝天猫店铺\" alt=\"淘宝天猫店铺\" height=\"481\" width=\"578\" /><br />\r\n<br />\r\n</span>\r\n</p>', '', '0', '1', '0');
INSERT INTO `tp_article` VALUES ('19', '0', '微预约，微信预约', '微预约', '微信预约-微信预约管理系统', '微信预约-微信预约管理系统', '树小儿', 'apiying.com', '1394260837', '1394260837', '<h1>\r\n	<span style=\"font-size:14px;\"><span style=\"font-size:24px;\">微信预约-微信预约管理系统</span></span>\r\n</h1>\r\n<p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n<span style=\"font-size:14px;\">微预约是商家利用微快车平台实现在线预约的一种服务，可以运用汽车、房产、酒店、医疗、餐饮等一系列行业，给用户的出行办事、购物、消费带来了极大的便利！且操作非常简单，响应速度非常快，受到业界的一致好评！</span><br />\r\n<br />\r\n</p>\r\n<p>\r\n	<img src=\"/data/ArticleImg/image/20140308/531abb3d6eb05.png\" title=\"微信预约-微信预约管理系统\" alt=\"微信预约-微信预约管理系统\" height=\"600\" width=\"400\" />\r\n</p>\r\n<p>\r\n	<br />\r\n<img src=\"/data/ArticleImg/image/20140308/531abb3eb1337.png\" title=\"微信预约-微信预约管理系统\" alt=\"微信预约-微信预约管理系统\" height=\"600\" width=\"400\" />\r\n</p>\r\n<br />\r\n<span style=\"font-size:14px;\"></span>\r\n<p>\r\n	<span style=\"font-size:14px;\"><br />\r\n</span>\r\n</p>', '', '0', '1', '0');

-- ----------------------------
-- Table structure for `tp_behavior`
-- ----------------------------
DROP TABLE IF EXISTS `tp_behavior`;
CREATE TABLE `tp_behavior` (
  `id` int(11) NOT NULL auto_increment,
  `fid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `date` varchar(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `model` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_behavior
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_call`
-- ----------------------------
DROP TABLE IF EXISTS `tp_call`;
CREATE TABLE `tp_call` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `token` varchar(60) character set latin1 NOT NULL,
  `phone_account` varchar(50) character set latin1 NOT NULL,
  `phone_password` varchar(50) character set latin1 NOT NULL,
  `status` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_call
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_canyu`
-- ----------------------------
DROP TABLE IF EXISTS `tp_canyu`;
CREATE TABLE `tp_canyu` (
  `id` int(11) NOT NULL auto_increment,
  `xid` int(11) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `token` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `number` int(11) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_canyu
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_case`
-- ----------------------------
DROP TABLE IF EXISTS `tp_case`;
CREATE TABLE `tp_case` (
  `id` int(11) NOT NULL auto_increment,
  `cate_id` int(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `img` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `sorts` int(10) default NULL,
  `content` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_case
-- ----------------------------
INSERT INTO `tp_case` VALUES ('1', '4', '绿地宝马5S', 'http://v.phonegap100.com/', './data/uploads/case/5311cb919bf20.png', '1', null, '<img src=\"/data/ArticleImg/image/20140301/5311cb846e5db.jpg\" alt=\"\" />');
INSERT INTO `tp_case` VALUES ('2', '4', '威汉汽车', '', './data/uploads/case/5311cbdf762a8.png', '1', null, '<img src=\"/data/ArticleImg/image/20140301/5311cbd552414.jpg\" alt=\"\" /><br />');
INSERT INTO `tp_case` VALUES ('3', '4', '奔驰世家', '', './data/uploads/case/5311cc10272db.png', '1', null, '<img src=\"/data/ArticleImg/image/20140301/5311cc0d22f40.jpg\" alt=\"\" />');
INSERT INTO `tp_case` VALUES ('4', '4', '沃尔沃丰颐', '', './data/uploads/case/5311cc48b47f9.png', '1', null, '<img src=\"/data/ArticleImg/image/20140301/5311cc4543b75.jpg\" alt=\"\" />');
INSERT INTO `tp_case` VALUES ('5', '4', '长安铃木', '', './data/uploads/case/5311cc81bbe76.png', '1', null, '<img src=\"/data/ArticleImg/image/20140301/5311cc70f0270.jpg\" alt=\"\" />');
INSERT INTO `tp_case` VALUES ('6', '4', '湘潭润锦汽车', '', './data/uploads/case/5311ccc3c3560.png', '1', null, '<img src=\"/data/ArticleImg/image/20140301/5311ccbfc3a66.jpg\" alt=\"\" />');
INSERT INTO `tp_case` VALUES ('8', '1', '石梅湾九里', '', './data/uploads/case/53128a2eebabb.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53128a1273a31.png\" title=\"石梅湾九里微信营销\" alt=\"石梅湾九里微信营销\" height=\"417\" width=\"744\" />');
INSERT INTO `tp_case` VALUES ('9', '1', '曲江公馆·和园', '', './data/uploads/case/53128a5d588cc.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53128a572206b.png\" title=\"曲江公馆·和园\" alt=\"曲江公馆·和园\" height=\"425\" width=\"737\" />');
INSERT INTO `tp_case` VALUES ('10', '1', '雅居乐·剑桥郡', '', './data/uploads/case/53128a9c5abb2.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53128a8eaeb23.png\" title=\"雅居乐·剑桥郡微信营销\" alt=\"雅居乐·剑桥郡微信营销\" height=\"419\" width=\"744\" />');
INSERT INTO `tp_case` VALUES ('11', '1', '金地檀溪', '', './data/uploads/case/53128abff09aa.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53128ab8aaa01.png\" title=\"金地檀溪微信\" alt=\"金地檀溪微信\" height=\"426\" width=\"740\" />');
INSERT INTO `tp_case` VALUES ('12', '1', '万科学府', '', './data/uploads/case/53128aecab5a1.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53128ae4238dd.png\" title=\"万科学府 微信\" alt=\"万科学府 微信\" height=\"428\" width=\"737\" />');
INSERT INTO `tp_case` VALUES ('13', '1', '安阳恒大绿洲', '', './data/uploads/case/53128b20149ac.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53128b14ea121.png\" title=\"安阳恒大绿洲微信营销案例\" alt=\"安阳恒大绿洲微信营销案例\" height=\"426\" width=\"753\" />');
INSERT INTO `tp_case` VALUES ('14', '5', '虎都男装', '', './data/uploads/case/53128d95767f5.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53128d8c3db35.png\" title=\"虎都男装微信营销\" alt=\"虎都男装微信营销\" height=\"415\" width=\"739\" />');
INSERT INTO `tp_case` VALUES ('15', '5', '欧培拉', '', './data/uploads/case/53128dc3b7718.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53128db9c28a5.png\" title=\"欧培拉微信营销案例\" alt=\"欧培拉微信营销案例\" height=\"421\" width=\"741\" />');
INSERT INTO `tp_case` VALUES ('16', '5', '婴缘坊', '', './data/uploads/case/53128de68838c.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53128ddbdd71f.png\" title=\"婴缘坊微信营销案例\" alt=\"婴缘坊微信营销案例\" height=\"441\" width=\"736\" />');
INSERT INTO `tp_case` VALUES ('17', '5', '波司登', '', './data/uploads/case/53128e0a7ce2d.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53128e00c5084.png\" title=\"波司登微信营销案例\" alt=\"波司登微信营销案例\" height=\"422\" width=\"747\" />');
INSERT INTO `tp_case` VALUES ('18', '5', '美兰晋风', '', './data/uploads/case/53128e332f57a.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53128e29a1a26.png\" title=\"美兰晋风微信营销案例\" alt=\"美兰晋风微信营销案例\" height=\"421\" width=\"737\" /><br />');
INSERT INTO `tp_case` VALUES ('19', '5', '北京大生酒业', '', './data/uploads/case/53128e4fdb5d7.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53128e47de03b.png\" title=\"北京大生酒业微信营销案例\" alt=\"北京大生酒业微信营销案例\" height=\"424\" width=\"746\" />');
INSERT INTO `tp_case` VALUES ('20', '6', '海底捞', '', './data/uploads/case/5312dcd8af7dc.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312908c023ee.png\" title=\"海底捞微信案例\" alt=\"海底捞微信案例\" height=\"427\" width=\"739\" />');
INSERT INTO `tp_case` VALUES ('21', '6', '麦兜点点', '', './data/uploads/case/5312dce52e044.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/531290a837d7b.png\" title=\"麦兜点点微信案例\" alt=\"麦兜点点微信案例\" height=\"417\" width=\"737\" />');
INSERT INTO `tp_case` VALUES ('22', '6', '南平小南国', '', './data/uploads/case/531290d2e5a50.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/531290ca1d40d.png\" title=\"南平小南国微信案例\" alt=\"南平小南国微信案例\" height=\"430\" width=\"739\" />');
INSERT INTO `tp_case` VALUES ('23', '6', '黔香阁', '', './data/uploads/case/531290f3d6acc.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/531290eac9f36.png\" title=\"黔香阁营销案例\" alt=\"黔香阁营销案例\" height=\"414\" width=\"739\" />');
INSERT INTO `tp_case` VALUES ('24', '6', '舌尖上的酸菜鱼', '', './data/uploads/case/53129149be605.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/531291432516a.png\" title=\"舌尖上的酸菜鱼\" alt=\"舌尖上的酸菜鱼\" height=\"420\" width=\"738\" />');
INSERT INTO `tp_case` VALUES ('25', '6', '泰和阁', '', './data/uploads/case/531291658551d.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312915d9ff0f.png\" title=\"泰和阁微信案例\" alt=\"泰和阁微信案例\" height=\"427\" width=\"748\" />');
INSERT INTO `tp_case` VALUES ('26', '7', '韩国艺匠', '', './data/uploads/case/531295c328ac7.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53129804ca179.png\" title=\"韩国艺匠微信营销\" alt=\"韩国艺匠微信营销\" height=\"424\" width=\"749\" />');
INSERT INTO `tp_case` VALUES ('27', '7', 'iweddingstudio', '', './data/uploads/case/531295e229193.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/531297afb7966.png\" title=\"iweddingstudio 案例\" alt=\"iweddingstudio 案例\" height=\"430\" width=\"744\" />');
INSERT INTO `tp_case` VALUES ('28', '7', '美十摄影', '', './data/uploads/case/531297792dd7b.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53129769364ca.png\" title=\"美十摄影微信案例\" alt=\"美十摄影微信案例\" height=\"421\" width=\"748\" />');
INSERT INTO `tp_case` VALUES ('29', '7', '星梦奇缘', '', './data/uploads/case/531298c710f64.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/531298bdab856.png\" title=\"星梦奇缘微信案例\" alt=\"星梦奇缘微信案例\" height=\"416\" width=\"738\" />');
INSERT INTO `tp_case` VALUES ('30', '7', '拍吧视觉', '', './data/uploads/case/531298eb11bf4.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/531298e2cc443.png\" title=\"拍吧视觉微信案例\" alt=\"拍吧视觉微信案例\" height=\"428\" width=\"745\" />');
INSERT INTO `tp_case` VALUES ('31', '7', '纽约VIP婚纱', '', './data/uploads/case/53129910d31c1.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312990b1bf5f.png\" title=\"纽约VIP婚纱\" alt=\"纽约VIP婚纱\" height=\"425\" width=\"754\" />');
INSERT INTO `tp_case` VALUES ('32', '9', '巴黎名豪大酒店', '', './data/uploads/case/53129f8c0f82d.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53129f8088e5c.png\" title=\"巴黎名豪大酒店微信案例\" alt=\"巴黎名豪大酒店微信案例\" height=\"427\" width=\"746\" />');
INSERT INTO `tp_case` VALUES ('33', '9', '柳林赛威快捷', '', './data/uploads/case/53129fd00aacf.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53129fca19f13.png\" title=\"柳林赛威快捷\" alt=\"柳林赛威快捷\" height=\"421\" width=\"738\" />');
INSERT INTO `tp_case` VALUES ('34', '9', '年代风尚', '', './data/uploads/case/53129ff35856b.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/53129fe884d36.png\" title=\"年代风尚微信案例\" alt=\"年代风尚微信案例\" height=\"421\" width=\"741\" />');
INSERT INTO `tp_case` VALUES ('35', '9', '五环大', '', './data/uploads/case/5312a01890b88.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312a00948e86.png\" title=\"五环大酒店微信案例\" alt=\"五环大酒店微信案例\" height=\"422\" width=\"739\" />');
INSERT INTO `tp_case` VALUES ('36', '9', '最佳财富西方', '', './data/uploads/case/5312a03b53054.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312a0343b65e.png\" title=\"最佳财富西方微信案例\" alt=\"最佳财富西方微信案例\" height=\"417\" width=\"738\" />');
INSERT INTO `tp_case` VALUES ('37', '9', '丽江懒阳阳客栈', '', './data/uploads/case/5312a0a60b3b1.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312a052afcaf.png\" title=\"丽江懒阳阳客栈微信案例\" alt=\"丽江懒阳阳客栈微信案例\" height=\"424\" width=\"734\" />');
INSERT INTO `tp_case` VALUES ('38', '10', '上海复大医院', '', './data/uploads/case/5312bc673e46b.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312bc5905e9b.png\" title=\"上海复大医院微信案例\" alt=\"上海复大医院微信案例\" height=\"433\" width=\"741\" />');
INSERT INTO `tp_case` VALUES ('39', '10', '美缔整形美容', '', './data/uploads/case/5312bc8f78cad.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312bc85bf89f.png\" title=\"美缔整形美容微信案例\" alt=\"美缔整形美容微信案例\" height=\"415\" width=\"742\" />');
INSERT INTO `tp_case` VALUES ('40', '10', '德泰恒', '', './data/uploads/case/5312bcb6c1cf1.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312bcaa59755.png\" title=\"德泰恒微信案例\" alt=\"德泰恒微信案例\" height=\"419\" width=\"742\" />');
INSERT INTO `tp_case` VALUES ('41', '10', '玛丽亚妇产医院', '', './data/uploads/case/5312bcdb04931.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312bcd330903.png\" title=\"玛丽亚妇产医院 微信案例\" alt=\"玛丽亚妇产医院 微信案例\" height=\"415\" width=\"739\" />');
INSERT INTO `tp_case` VALUES ('42', '10', '泰安丽人妇产医院', '', './data/uploads/case/5312bd0d8642f.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312bcfbdbb81.png\" title=\"泰安丽人妇产医院案例\" alt=\"泰安丽人妇产医院案例\" height=\"428\" width=\"742\" />');
INSERT INTO `tp_case` VALUES ('43', '10', '济南爱容整形', '', './data/uploads/case/5312bd8a7b6df.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312bd880a805.png\" alt=\"\" />');
INSERT INTO `tp_case` VALUES ('44', '12', '微生活-衡阳', '', './data/uploads/case/5312bf8da5805.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312bf8a9829a.png\" alt=\"\" />');
INSERT INTO `tp_case` VALUES ('45', '12', '通灵珠宝', '', './data/uploads/case/5312bfc4ca66c.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312bfbab3ac6.png\" title=\"通灵珠宝微信案例\" alt=\"通灵珠宝微信案例\" height=\"418\" width=\"734\" />');
INSERT INTO `tp_case` VALUES ('46', '12', '嘉州生活', '', './data/uploads/case/5312c00d70440.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c004bf4d8.png\" title=\"嘉州生活微信案例\" alt=\"嘉州生活微信案例\" height=\"420\" width=\"737\" />');
INSERT INTO `tp_case` VALUES ('47', '12', '大连微生活', '', './data/uploads/case/5312c052cd854.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c046be815.png\" title=\"大连微生活微信营销\" alt=\"大连微生活微信营销\" height=\"415\" width=\"735\" />');
INSERT INTO `tp_case` VALUES ('48', '12', '太仓南洋广场', '', './data/uploads/case/5312c06f3f32e.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c06a61f69.png\" title=\"太仓南洋广场\" alt=\"太仓南洋广场\" height=\"415\" width=\"735\" />');
INSERT INTO `tp_case` VALUES ('49', '12', '新疆公号导航', '', './data/uploads/case/5312c09cae366.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c094422fe.png\" title=\"新疆公号导航\" alt=\"新疆公号导航\" height=\"428\" width=\"742\" />');
INSERT INTO `tp_case` VALUES ('50', '13', 'BBOSS至尊', '', './data/uploads/case/5312c3067c324.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c2fadcb0a.png\" title=\"BBOSS至尊微信案例\" alt=\"BBOSS至尊微信案例\" height=\"419\" width=\"741\" />');
INSERT INTO `tp_case` VALUES ('51', '13', '丹东二人转大', '', './data/uploads/case/5312c32b953c6.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c3206d066.png\" title=\"丹东二人转大微信案例\" alt=\"丹东二人转大微信案例\" height=\"421\" width=\"734\" />');
INSERT INTO `tp_case` VALUES ('52', '13', '名流之星KTV', '', './data/uploads/case/5312c34ac37cf.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c342a5d2b.png\" title=\"名流之星KTV微信案例\" alt=\"名流之星KTV微信案例\" height=\"423\" width=\"737\" />');
INSERT INTO `tp_case` VALUES ('53', '13', '西安倾国倾城', '', './data/uploads/case/5312c37c65c31.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c373e3a6f.png\" title=\"西安倾国倾城微信案例\" alt=\"西安倾国倾城微信案例\" height=\"419\" width=\"736\" />');
INSERT INTO `tp_case` VALUES ('54', '13', '东方明珠娱乐会所', '', './data/uploads/case/5312c3a188770.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c39a26c24.png\" title=\"东方明珠娱乐会所微信案例\" alt=\"东方明珠娱乐会所微信案例\" height=\"426\" width=\"747\" />');
INSERT INTO `tp_case` VALUES ('55', '13', '金莎国际娱乐会所', '', './data/uploads/case/5312c3c0543eb.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c3b8f0fc7.png\" title=\"金莎国际娱乐会所微信案例\" alt=\"金莎国际娱乐会所微信案例\" height=\"425\" width=\"744\" />');
INSERT INTO `tp_case` VALUES ('56', '14', '科勒成都', '', './data/uploads/case/5312c57a95cf8.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c56e7397f.png\" title=\"科勒成都微信案例\" alt=\"科勒成都微信案例\" height=\"425\" width=\"739\" />');
INSERT INTO `tp_case` VALUES ('57', '14', '品川室内设计', '', './data/uploads/case/5312c59c8a80a.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c58fe1709.png\" title=\"品川室内设计微信案例\" alt=\"品川室内设计微信案例\" height=\"429\" width=\"742\" />');
INSERT INTO `tp_case` VALUES ('58', '14', '惠能地暖', '', './data/uploads/case/5312c65de795a.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c5ba63cb2.png\" title=\"惠能地暖微信案例\" alt=\"惠能地暖微信案例\" height=\"423\" width=\"734\" />');
INSERT INTO `tp_case` VALUES ('59', '14', '宁波浪琴屿', '', './data/uploads/case/5312c5ee3b66b.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c5e197554.png\" title=\"宁波浪琴屿微信案例\" alt=\"宁波浪琴屿微信案例\" height=\"422\" width=\"734\" />');
INSERT INTO `tp_case` VALUES ('60', '14', '欧派木门', '', './data/uploads/case/5312c61c3b2e2.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c60e2bb20.png\" title=\"欧派木门微信案例\" alt=\"欧派木门微信案例\" height=\"415\" width=\"736\" /><br />');
INSERT INTO `tp_case` VALUES ('61', '14', '广州三星装饰', '', './data/uploads/case/5312c63f05fc3.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c630a8bea.png\" title=\" 广州三星装饰微信案例\" alt=\" 广州三星装饰微信案例\" height=\"427\" width=\"748\" />');
INSERT INTO `tp_case` VALUES ('62', '16', '辰嫣国际微刊', '', './data/uploads/case/5312c88d94931.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c87cf3a1a.png\" title=\"辰嫣国际微刊微信案例\" alt=\"辰嫣国际微刊微信案例\" height=\"422\" width=\"733\" />');
INSERT INTO `tp_case` VALUES ('63', '16', '凤凰温泉', '', './data/uploads/case/5312c8ae28d70.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c8a5dfc85.png\" title=\"凤凰温泉微信案例\" alt=\"凤凰温泉微信案例\" height=\"424\" width=\"739\" />');
INSERT INTO `tp_case` VALUES ('64', '16', '慧之通', '', './data/uploads/case/5312c8d01cf57.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c8c7383ef.png\" title=\"慧之通微信案例\" alt=\"慧之通微信案例\" height=\"421\" width=\"739\" />');
INSERT INTO `tp_case` VALUES ('65', '16', '匠人造型', '', './data/uploads/case/5312c8f1c650c.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c8ea6ecc9.png\" title=\"匠人造型微信案例\" alt=\"匠人造型微信案例\" height=\"423\" width=\"732\" />');
INSERT INTO `tp_case` VALUES ('66', '16', '五和养生堂', '', './data/uploads/case/5312c90b7fe87.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c9070aac1.png\" title=\"五和养生堂\" alt=\"五和养生堂\" height=\"426\" width=\"740\" />');
INSERT INTO `tp_case` VALUES ('67', '16', '怡德御方养生', '', './data/uploads/case/5312c92c3284c.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312c92136994.png\" title=\"怡德御方养生\" alt=\"怡德御方养生\" height=\"418\" width=\"735\" />');
INSERT INTO `tp_case` VALUES ('68', '19', '安贝儿童座椅', '', './data/uploads/case/5312cb500a622.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312cb4275e48.png\" title=\"安贝儿童座椅微信案例\" alt=\"安贝儿童座椅微信案例\" height=\"429\" width=\"745\" />');
INSERT INTO `tp_case` VALUES ('69', '19', '拜耳水产', '', './data/uploads/case/5312cb75da99b.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312cb6e63a65.png\" title=\"拜耳水产微信案例\" alt=\"拜耳水产微信案例\" height=\"426\" width=\"743\" />');
INSERT INTO `tp_case` VALUES ('70', '19', '超凡计算机', '', './data/uploads/case/5312cba1131fb.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312cb97045a5.png\" title=\"超凡计算机微信案例\" alt=\"超凡计算机微信案例\" height=\"421\" width=\"738\" />');
INSERT INTO `tp_case` VALUES ('71', '19', '牛牛生态水产', '', './data/uploads/case/5312cbdac6135.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312cbd20e404.png\" title=\"牛牛生态水产微信案例\" alt=\"牛牛生态水产微信案例\" height=\"432\" width=\"746\" />');
INSERT INTO `tp_case` VALUES ('72', '19', 'YFAN伊梵', '', './data/uploads/case/5312cbfc9def1.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312cbf2000db.png\" title=\"YFAN伊梵微信案例\" alt=\"YFAN伊梵微信案例\" height=\"419\" width=\"746\" />');
INSERT INTO `tp_case` VALUES ('73', '19', '多乐士', '', './data/uploads/case/5312cc20632a9.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312cc12275d0.png\" title=\"多乐士微信案例\" alt=\"多乐士微信案例\" height=\"434\" width=\"744\" />');
INSERT INTO `tp_case` VALUES ('74', '23', '佳音英语', '', './data/uploads/case/5312ceaaae248.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312cea3d9c61.png\" title=\"佳音英语微信案例\" alt=\"佳音英语微信案例\" height=\"425\" width=\"744\" />');
INSERT INTO `tp_case` VALUES ('75', '23', '迈蔚树英语', '', './data/uploads/case/5312cecb3f708.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312cec10b6f1.png\" title=\"迈蔚树英语微信案例\" alt=\"迈蔚树英语微信案例\" height=\"422\" width=\"734\" />');
INSERT INTO `tp_case` VALUES ('76', '23', '廊坊第六小学', '', './data/uploads/case/5312cf1c7d797.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312cf1757159.png\" title=\"廊坊第六小学\" alt=\"廊坊第六小学\" height=\"426\" width=\"748\" />');
INSERT INTO `tp_case` VALUES ('77', '23', '愚公移山美术', '', './data/uploads/case/5312cf48b9b6d.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312cf413e9a7.png\" title=\"愚公移山美术微信案例\" alt=\"愚公移山美术微信案例\" height=\"428\" width=\"747\" />');
INSERT INTO `tp_case` VALUES ('78', '23', '阿杰发艺', '', './data/uploads/case/5312cf6d3905f.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312cf61ec91c.png\" title=\"阿杰发艺微信案例\" alt=\"阿杰发艺微信案例\" height=\"423\" width=\"758\" />');
INSERT INTO `tp_case` VALUES ('79', '23', '维恩教育', '', './data/uploads/case/5312cf89d8135.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312cf84cb36e.png\" title=\"维恩教育\" alt=\"维恩教育\" height=\"423\" width=\"737\" />');
INSERT INTO `tp_case` VALUES ('80', '26', '绿岛咖啡', '', './data/uploads/case/5312d168a6552.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312d15cacac7.png\" title=\"绿岛咖啡微信案例\" alt=\"绿岛咖啡微信案例\" height=\"419\" width=\"741\" />');
INSERT INTO `tp_case` VALUES ('81', '26', '云咖啡', '', './data/uploads/case/5312d18dea8dd.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312d18454703.png\" title=\"云咖啡微信案例\" alt=\"云咖啡微信案例\" height=\"428\" width=\"739\" />');
INSERT INTO `tp_case` VALUES ('82', '26', '上岛咖啡玉祥门', '', './data/uploads/case/5312d1b1600f3.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312d1a2d0b79.png\" title=\"上岛咖啡玉祥门 微信案例\" alt=\"上岛咖啡玉祥门 微信案例\" height=\"425\" width=\"737\" />');
INSERT INTO `tp_case` VALUES ('83', '26', '南洋风情咖啡', '', './data/uploads/case/5312d1d750d29.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312d1cf7ac8c.png\" title=\"南洋风情咖啡微信案例\" alt=\"南洋风情咖啡微信案例\" height=\"421\" width=\"743\" />');
INSERT INTO `tp_case` VALUES ('84', '26', '可那咖啡', '', './data/uploads/case/5312d1f7d478f.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312d1f027406.png\" title=\"可那咖啡微信案例\" alt=\"可那咖啡微信案例\" height=\"422\" width=\"737\" />');
INSERT INTO `tp_case` VALUES ('85', '26', 'angelwithus', '', './data/uploads/case/5312d21c6a808.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312d2125e3d6.png\" title=\"angelwithus微信案例\" alt=\"angelwithus微信案例\" height=\"419\" width=\"741\" />');
INSERT INTO `tp_case` VALUES ('86', '28', '林鼎护栏', '', './data/uploads/case/5312d37da1921.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312d37066738.png\" title=\"林鼎护栏微信案例\" alt=\"林鼎护栏微信案例\" height=\"427\" width=\"737\" />');
INSERT INTO `tp_case` VALUES ('87', '28', '济南途顺代驾', '', './data/uploads/case/5312d3991d4ee.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312d39208a03.png\" title=\"济南途顺代驾微信案例\" alt=\"济南途顺代驾微信案例\" height=\"425\" width=\"738\" />');
INSERT INTO `tp_case` VALUES ('88', '28', '沁阳韵达快递', '', './data/uploads/case/5312d3bff021c.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312d3b53d09f.png\" title=\"沁阳韵达快递微信案例\" alt=\"沁阳韵达快递微信案例\" height=\"423\" width=\"740\" /><br />');
INSERT INTO `tp_case` VALUES ('89', '28', '大成律师', '', './data/uploads/case/5312d3e4a87b7.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312d3dce091e.png\" title=\"大成律师微信案例\" alt=\"大成律师微信案例\" height=\"428\" width=\"740\" />');
INSERT INTO `tp_case` VALUES ('90', '28', '铁色高原电影', '', './data/uploads/case/5312d40aba0d2.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312d3fbf13cd.png\" title=\"铁色高原电影微信案例\" alt=\"铁色高原电影微信案例\" height=\"432\" width=\"740\" />');
INSERT INTO `tp_case` VALUES ('91', '28', '米粒影业', '', './data/uploads/case/5312d42b4b743.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312d4259c9ad.png\" title=\"米粒影业\" alt=\"米粒影业\" height=\"425\" width=\"732\" />');
INSERT INTO `tp_case` VALUES ('92', '27', '艾定义互动', '', './data/uploads/case/5312e40ab4942.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312e4051e0a6.png\" title=\"艾定义互动\" alt=\"艾定义互动\" height=\"443\" width=\"751\" />');
INSERT INTO `tp_case` VALUES ('93', '27', '武夷微盟', '', './data/uploads/case/5312e4343f997.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312e427737df.png\" title=\"武夷微盟微信案例\" alt=\"武夷微盟微信案例\" height=\"424\" width=\"740\" />');
INSERT INTO `tp_case` VALUES ('94', '27', '深圳盘古开天', '', './data/uploads/case/5312e45b4c4bb.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312e45092e08.png\" title=\"深圳盘古开天微信案例\" alt=\"深圳盘古开天微信案例\" height=\"424\" width=\"743\" />');
INSERT INTO `tp_case` VALUES ('95', '27', '云图信息科技', '', './data/uploads/case/5312e47f5d5a8.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312e4764a612.png\" title=\"云图信息科技微信营销案例\" alt=\"云图信息科技微信营销案例\" height=\"427\" width=\"763\" />');
INSERT INTO `tp_case` VALUES ('96', '27', '深圳永图网络', '', './data/uploads/case/5312e49dafd5a.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312e4957e3ce.png\" title=\"深圳永图网络微信营销案例\" alt=\"深圳永图网络微信营销案例\" height=\"439\" width=\"766\" />');
INSERT INTO `tp_case` VALUES ('97', '27', '德宏州朝阳信息', '', './data/uploads/case/5312e4c13f095.png', '1', null, '<img src=\"/data/ArticleImg/image/20140302/5312e4b906461.png\" title=\"德宏州朝阳信息微信营销案例\" alt=\"德宏州朝阳信息微信营销案例\" height=\"429\" width=\"750\" />');

-- ----------------------------
-- Table structure for `tp_case_cate`
-- ----------------------------
DROP TABLE IF EXISTS `tp_case_cate`;
CREATE TABLE `tp_case_cate` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `sorts` tinyint(1) NOT NULL,
  `img` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_case_cate
-- ----------------------------
INSERT INTO `tp_case_cate` VALUES ('1', '房产', 'http://v.phonegap100.com/', '10', '', '1');
INSERT INTO `tp_case_cate` VALUES ('4', '汽车', '', '10', '', '1');
INSERT INTO `tp_case_cate` VALUES ('5', '电商', '', '10', '', '1');
INSERT INTO `tp_case_cate` VALUES ('6', '餐饮', '', '1', '', '1');
INSERT INTO `tp_case_cate` VALUES ('7', '婚纱摄影', '', '10', '', '1');
INSERT INTO `tp_case_cate` VALUES ('9', '酒店', '', '10', '', '1');
INSERT INTO `tp_case_cate` VALUES ('10', '医疗', '', '10', '', '1');
INSERT INTO `tp_case_cate` VALUES ('12', '生活服务', '', '10', '', '1');
INSERT INTO `tp_case_cate` VALUES ('13', '娱乐', '', '10', '', '1');
INSERT INTO `tp_case_cate` VALUES ('14', '装潢装饰', '', '10', '', '1');
INSERT INTO `tp_case_cate` VALUES ('16', '养生美容健身', '', '10', '', '1');
INSERT INTO `tp_case_cate` VALUES ('19', '零售/百货', '', '10', '', '1');
INSERT INTO `tp_case_cate` VALUES ('21', '法律', '', '10', '', '0');
INSERT INTO `tp_case_cate` VALUES ('22', 'IT', '', '10', '', '0');
INSERT INTO `tp_case_cate` VALUES ('23', '教育', '', '10', '', '1');
INSERT INTO `tp_case_cate` VALUES ('24', '珠宝', '', '10', '', '0');
INSERT INTO `tp_case_cate` VALUES ('25', '艺术文化', '', '10', '', '0');
INSERT INTO `tp_case_cate` VALUES ('26', '酒水咖啡', '', '10', '', '1');
INSERT INTO `tp_case_cate` VALUES ('27', '企业微网站', '', '10', '', '1');
INSERT INTO `tp_case_cate` VALUES ('28', '其它', '', '10', '', '1');

-- ----------------------------
-- Table structure for `tp_classify`
-- ----------------------------
DROP TABLE IF EXISTS `tp_classify`;
CREATE TABLE `tp_classify` (
  `id` int(11) NOT NULL auto_increment,
  `fid` int(11) NOT NULL default '0',
  `name` varchar(60) NOT NULL,
  `info` varchar(90) NOT NULL COMMENT '分类描述',
  `sorts` varchar(6) NOT NULL COMMENT '显示顺序',
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `token` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_classify
-- ----------------------------
INSERT INTO `tp_classify` VALUES ('1', '0', '微网站', '微网站', '1', 'http://demo.ueat.cn/uploads/q/qmxpbf1390048289/7/7/7/6/thumb_52da76743ca71.png', '', '1', 'qmxpbf1390048289');
INSERT INTO `tp_classify` VALUES ('2', '0', '关于我们', '', '1', 'http://demo.ueat.cn/uploads/e/eurggv1390065711/b/d/9/f/thumb_52dab98e1e18a.jpg', '砸金蛋 1', '1', 'eurggv1390065711');
INSERT INTO `tp_classify` VALUES ('3', '0', '22222', '', '1', 'http://demo.ueat.cn/uploads/e/eurggv1390065711/b/d/9/f/thumb_52dab98e1e18a.jpg', '喜帖1', '1', 'eurggv1390065711');
INSERT INTO `tp_classify` VALUES ('4', '0', '33333', '', '1', 'http://demo.ueat.cn/uploads/e/eurggv1390065711/b/d/9/f/thumb_52dab98e1e18a.jpg', '全景 2', '1', 'eurggv1390065711');
INSERT INTO `tp_classify` VALUES ('5', '0', '44444', '', '1', 'http://demo.ueat.cn/uploads/e/eurggv1390065711/b/d/9/f/thumb_52dab98e1e18a.jpg', '', '1', 'eurggv1390065711');
INSERT INTO `tp_classify` VALUES ('6', '0', '新闻', '新闻描述', '1', 'http://demo.ueat.cn/uploads/k/knmdyy1390207240/3/e/2/a/thumb_52dce352f18ee.jpg', '', '1', 'knmdyy1390207240');
INSERT INTO `tp_classify` VALUES ('7', '0', '美女图片', '美女图片', '1', 'http://demo.ueat.cn/uploads/j/jgoken1390204555/5/5/6/e/thumb_52df30d5c3c96.jpg', '', '1', 'jgoken1390204555');
INSERT INTO `tp_classify` VALUES ('8', '0', '解疑答惑', '家长专区', '1', '', '', '1', 'feedrk1391692825');
INSERT INTO `tp_classify` VALUES ('9', '0', '学前教育', '学前教育', '2', '', '', '1', 'feedrk1391692825');
INSERT INTO `tp_classify` VALUES ('10', '0', '小学教育', '小学教育', '3', '', '', '1', 'feedrk1391692825');
INSERT INTO `tp_classify` VALUES ('11', '0', '初中教育', '初中教育', '4', '', '', '1', 'feedrk1391692825');
INSERT INTO `tp_classify` VALUES ('12', '0', '高中教育', '高中教育', '5', '', '', '1', 'feedrk1391692825');
INSERT INTO `tp_classify` VALUES ('13', '0', '解疑答惑', '学生专区', '6', '', '', '1', 'feedrk1391692825');
INSERT INTO `tp_classify` VALUES ('14', '0', '成长故事', '成长故事', '7', '', '', '1', 'feedrk1391692825');
INSERT INTO `tp_classify` VALUES ('15', '0', '初中生', '初中生', '8', '', '', '1', 'feedrk1391692825');
INSERT INTO `tp_classify` VALUES ('16', '0', '高中生', '高中生', '9', '', '', '1', 'feedrk1391692825');
INSERT INTO `tp_classify` VALUES ('17', '0', '启鸿简介', '启鸿简介', '10', '', '', '1', 'feedrk1391692825');
INSERT INTO `tp_classify` VALUES ('18', '0', '师资队伍', '师资队伍', '11', '', '', '1', 'feedrk1391692825');
INSERT INTO `tp_classify` VALUES ('19', '0', '家教老师', '家教老师', '12', '', '', '1', 'feedrk1391692825');
INSERT INTO `tp_classify` VALUES ('20', '0', '最新动态', '最新动态', '13', '', '', '1', 'feedrk1391692825');
INSERT INTO `tp_classify` VALUES ('21', '0', '联系我们', '联系我们', '14', '', '', '1', 'feedrk1391692825');
INSERT INTO `tp_classify` VALUES ('22', '0', '业务范围', '业务范围', '1', '', '', '1', 'vssbhv1391702832');
INSERT INTO `tp_classify` VALUES ('23', '0', '启鸿动态', '启鸿动态', '2', '', '', '1', 'vssbhv1391702832');
INSERT INTO `tp_classify` VALUES ('24', '0', '家政服务', '家政服务', '3', '', '', '1', 'vssbhv1391702832');
INSERT INTO `tp_classify` VALUES ('25', '0', '本地招聘', '本地招聘', '4', '', '', '1', 'vssbhv1391702832');
INSERT INTO `tp_classify` VALUES ('26', '0', '家居装修', '家居装修', '5', '', '', '1', 'vssbhv1391702832');
INSERT INTO `tp_classify` VALUES ('27', '0', '房产信息', '房产信息', '6', '', '', '1', 'vssbhv1391702832');
INSERT INTO `tp_classify` VALUES ('28', '0', '商务服务', '商务服务', '7', '', '', '1', 'vssbhv1391702832');
INSERT INTO `tp_classify` VALUES ('29', '0', '打折促销', '打折促销', '8', '', '', '1', 'vssbhv1391702832');
INSERT INTO `tp_classify` VALUES ('30', '0', '旅游景点', '旅游景点', '9', '', '', '1', 'vssbhv1391702832');
INSERT INTO `tp_classify` VALUES ('31', '0', '餐饮住宿', '餐饮住宿', '10', '', '', '1', 'vssbhv1391702832');
INSERT INTO `tp_classify` VALUES ('32', '0', '公交路线', '公交路线', '11', '', '', '1', 'vssbhv1391702832');
INSERT INTO `tp_classify` VALUES ('33', '0', 'phonegap中文网', '中国最大PhoneGap跨平台移动互联网开发门户网', '1', 'http://www.apiying.com/data/ArticleImg/image/20140322/532d980721266.jpg', 'http://www.phonegap100.com', '1', 'zpbqjb1391609865');
INSERT INTO `tp_classify` VALUES ('38', '0', '微信营销', '微信商家管理系统是国内首家免费的微信营销管理平台', '1', 'http://www.apiying.com/data/ArticleImg/image/20140322/532d98cbec113.jpg', '', '1', 'zpbqjb1391609865');
INSERT INTO `tp_classify` VALUES ('39', '0', '公司简介', '', '5', 'http://www.apiying.com/data/ArticleImg/image/20140222/530891bca7b55.jpg', '', '1', 'usyhhb1392205269');
INSERT INTO `tp_classify` VALUES ('40', '0', '主营业务', '', '3', 'http://www.apiying.com/data/ArticleImg/image/20140222/530893a4c63fd.jpg', '', '1', 'usyhhb1392205269');
INSERT INTO `tp_classify` VALUES ('41', '0', '成功案例', '', '2', 'http://www.apiying.com/data/ArticleImg/image/20140222/5308930a0e234.jpg', '', '1', 'usyhhb1392205269');
INSERT INTO `tp_classify` VALUES ('42', '0', '最新动态', '', '4', 'http://www.apiying.com/data/ArticleImg/image/20140222/5308929984ac3.jpg', '', '1', 'usyhhb1392205269');
INSERT INTO `tp_classify` VALUES ('55', '0', '公考信息', '', '11', 'http://www.apiying.com/data/ArticleImg/image/20140302/5312ab20b0522.jpg', '', '1', 'btmdkz1392007679');
INSERT INTO `tp_classify` VALUES ('45', '0', '资格考试', '', '1', '', '', '1', 'btmdkz1392007679');
INSERT INTO `tp_classify` VALUES ('46', '0', '等级考试', '', '3', '', '', '1', 'btmdkz1392007679');
INSERT INTO `tp_classify` VALUES ('47', '0', '驾校报名', '', '3', 'http://www.apiying.com/data/ArticleImg/image/20140302/5312a9b957fcf.jpg', '', '1', 'btmdkz1392007679');
INSERT INTO `tp_classify` VALUES ('48', '0', '校园外卖', '', '4', '', '', '1', 'btmdkz1392007679');
INSERT INTO `tp_classify` VALUES ('49', '0', '电脑维修', '', '5', 'http://www.apiying.com/data/ArticleImg/image/20140302/5312a633641b8.jpg', '', '1', 'btmdkz1392007679');
INSERT INTO `tp_classify` VALUES ('50', '0', '观光旅游', '', '6', '', '', '1', 'btmdkz1392007679');
INSERT INTO `tp_classify` VALUES ('51', '0', '号码查询', '', '7', '', '', '1', 'btmdkz1392007679');
INSERT INTO `tp_classify` VALUES ('52', '0', '娱乐休闲', '', '8', '', '', '1', 'btmdkz1392007679');
INSERT INTO `tp_classify` VALUES ('53', '0', '教师招聘', '', '10', 'http://www.apiying.com/data/ArticleImg/image/20140302/5312ac84552cc.jpg', '', '1', 'btmdkz1392007679');
INSERT INTO `tp_classify` VALUES ('54', '0', '企业招聘', '', '9', 'http://www.apiying.com/data/ArticleImg/image/20140302/5312abbe39e95.jpg', '', '1', 'btmdkz1392007679');
INSERT INTO `tp_classify` VALUES ('57', '0', '2', '222', '22', '', '', '1', 'rzakjq1393673210');
INSERT INTO `tp_classify` VALUES ('58', '0', '3', '3333', '3', '', '', '1', 'rzakjq1393673210');
INSERT INTO `tp_classify` VALUES ('59', '0', '4', '4444', '4', '', '', '1', 'rzakjq1393673210');
INSERT INTO `tp_classify` VALUES ('60', '0', '1', '111111111111', '1', '', 'http://t2.qpic.cn/mblogpic/54d764bc1aba277c84e6/460', '1', 'rzakjq1393673210');
INSERT INTO `tp_classify` VALUES ('61', '0', '扫微信 送大奖', '微信', '1', '', '', '1', 'egagky1394029884');
INSERT INTO `tp_classify` VALUES ('62', '0', '华联新闻', '发布华联最新企业动态', '1', '/data/ArticleImg/image/20140311/531e878d656d1.jpg', 'http://www.fyhl.cn/', '1', 'ymivkz1394500574');
INSERT INTO `tp_classify` VALUES ('63', '0', '特惠商品', '发布最新特价商品信息', '2', 'http://www.apiying.com/data/ArticleImg/image/20140311/531e8b60ac499.jpg', '', '1', 'ymivkz1394500574');
INSERT INTO `tp_classify` VALUES ('64', '0', '特惠活动', '不定期发布特惠活动信息', '3', 'http://www.apiying.com/data/ArticleImg/image/20140311/531e8b3a697b3.jpg', '', '1', 'ymivkz1394500574');
INSERT INTO `tp_classify` VALUES ('65', '0', '新浪微博', '', '4', '/data/ArticleImg/image/20140311/531e8c167433f.png', 'http://weibo.com/2936710594', '1', 'ymivkz1394500574');
INSERT INTO `tp_classify` VALUES ('66', '0', '官方QQ空间', '即时互动', '5', '/data/ArticleImg/image/20140311/531e8c9930bdb.png', 'http://user.qzone.qq.com/1781280988?ptlang=2052', '1', 'ymivkz1394500574');
INSERT INTO `tp_classify` VALUES ('67', '0', '产品中心', '', '5', 'http://www.apiying.com/data/ArticleImg/image/20140319/53295ab727d8f.jpg', '', '1', 'bjjxjc1395216010');
INSERT INTO `tp_classify` VALUES ('68', '0', '公司简介', '', '6', 'http://www.apiying.com/data/ArticleImg/image/20140319/53295aa302c49.png', '', '1', 'bjjxjc1395216010');
INSERT INTO `tp_classify` VALUES ('69', '0', '企业方向', '', '3', '/data/ArticleImg/image/20140319/53295ba539a3e.png', '', '1', 'bjjxjc1395216010');
INSERT INTO `tp_classify` VALUES ('70', '0', '最新动态', '', '4', 'http://www.apiying.com/data/ArticleImg/image/20140319/532960734486a.png', '', '1', 'bjjxjc1395216010');
INSERT INTO `tp_classify` VALUES ('71', '0', '联系我们', '', '1', '/data/ArticleImg/image/20140319/532960015a687.png', '', '1', 'bjjxjc1395216010');
INSERT INTO `tp_classify` VALUES ('72', '0', '招贤纳士', '', '2', '/data/ArticleImg/image/20140319/5329602e802e2.png', '', '1', 'bjjxjc1395216010');
INSERT INTO `tp_classify` VALUES ('76', '0', '珠乡杂谈', '', '2', '', 'http://bbs.hepunz.com/thread.php?fid=3', '1', 'qdxqhj1395665354');
INSERT INTO `tp_classify` VALUES ('75', '0', '今日合浦', '', '1', '', 'http://bbs.hepunz.com/thread.php?fid=2', '1', 'qdxqhj1395665354');
INSERT INTO `tp_classify` VALUES ('77', '0', '色影天下', '', '3', '', 'http://bbs.hepunz.com/thread.php?fid=6&search=img', '1', 'qdxqhj1395665354');
INSERT INTO `tp_classify` VALUES ('78', '0', '合浦美食', '', '4', '', 'http://bbs.hepunz.com/thread.php?fid=9', '1', 'qdxqhj1395665354');
INSERT INTO `tp_classify` VALUES ('87', '0', '工作招聘', '', '2', '', '', '1', 'wgsiap1395669220');
INSERT INTO `tp_classify` VALUES ('83', '0', '公益简报', '', '3', '', '', '1', 'wgsiap1395669220');
INSERT INTO `tp_classify` VALUES ('84', '0', '爱心宿舍', '', '3', 'http://user.qzone.qq.com/2870180354?ADUIN=369031433&ADSESSION=1395803899&ADTAG=CLIENT.QQ.5281_FriendTip.0&ADPUBNO=26292&ptlang=2052', '', '1', 'wgsiap1395669220');
INSERT INTO `tp_classify` VALUES ('85', '0', '校外兼职', '', '2', '', '', '1', 'wgsiap1395669220');
INSERT INTO `tp_classify` VALUES ('86', '0', '实习岗位', '', '2', '', '', '1', 'wgsiap1395669220');
INSERT INTO `tp_classify` VALUES ('88', '0', '我的饮食', '', '1', '', '', '1', 'wgsiap1395669220');
INSERT INTO `tp_classify` VALUES ('89', '0', '休闲娱乐', '', '1', '', '', '1', 'wgsiap1395669220');
INSERT INTO `tp_classify` VALUES ('90', '0', '商品园地', '', '1', '', '', '1', 'wgsiap1395669220');
INSERT INTO `tp_classify` VALUES ('91', '0', '青大新闻', '', '1', '', '', '1', 'wgsiap1395669220');
INSERT INTO `tp_classify` VALUES ('98', '0', '新闻中心', '新闻中心', '5', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332d8fa98545.jpg', '', '1', 'wdkszz1395625484');
INSERT INTO `tp_classify` VALUES ('97', '0', '关于新标', '关于新标', '6', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332d8bc064f5.jpg', '', '1', 'wdkszz1395625484');
INSERT INTO `tp_classify` VALUES ('96', '0', '社团介绍', '', '4', '', '', '1', 'wgsiap1395669220');
INSERT INTO `tp_classify` VALUES ('99', '0', '产品体验', '产品体验', '4', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332d9428c640.jpg', '', '1', 'wdkszz1395625484');
INSERT INTO `tp_classify` VALUES ('100', '0', '联系我们', '联系我们', '2', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332dbf84f30a.jpg', '', '1', 'wdkszz1395625484');
INSERT INTO `tp_classify` VALUES ('101', '0', '技术支持', '技术支持', '1', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332df6866964.jpg', '', '1', 'wdkszz1395625484');
INSERT INTO `tp_classify` VALUES ('102', '0', 'VIP会员', 'VIP会员', '3', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332d9cb917fd.jpg', '', '1', 'wdkszz1395625484');
INSERT INTO `tp_classify` VALUES ('103', '0', '关于我们', '关于我们', '6', '/data/ArticleImg/image/20140326/533275b89fe6a.jpg', '', '1', 'gfqlqk1395814571');
INSERT INTO `tp_classify` VALUES ('104', '0', '菜品系列', '逸山伍自转小火锅菜品系列', '4', '/data/ArticleImg/image/20140326/5332774534968.jpg', '', '1', 'gfqlqk1395814571');
INSERT INTO `tp_classify` VALUES ('105', '0', '优惠促销', '', '3', '/data/ArticleImg/image/20140326/533278a9cd62c.jpg', '', '1', 'gfqlqk1395814571');
INSERT INTO `tp_classify` VALUES ('106', '0', '联系我们', '', '2', '/data/ArticleImg/image/20140326/5332793990c19.jpg', '', '1', 'gfqlqk1395814571');
INSERT INTO `tp_classify` VALUES ('107', '0', '社团首页', '', '1', '', 'http://www.apiying.com/index.php?g=User&m=Home&a=set&token=wgsiap1395669220', '0', 'wgsiap1395669220');
INSERT INTO `tp_classify` VALUES ('108', '0', '公司新闻', '', '5', '/data/ArticleImg/image/20140326/5332f53e77fbb.jpg', '', '1', 'gfqlqk1395814571');
INSERT INTO `tp_classify` VALUES ('109', '0', '技术支持', '', '1', '/data/ArticleImg/image/20140326/5332f69953a45.jpg', '', '1', 'gfqlqk1395814571');
INSERT INTO `tp_classify` VALUES ('110', '0', '关于杨伙计', '杨伙计简介', '8', 'http://www.apiying.com/data/ArticleImg/image/20140331/5338dd5d43874.png', '', '1', 'msowdl1393998402');
INSERT INTO `tp_classify` VALUES ('111', '0', '最新动态', '最新动态', '6', 'http://www.apiying.com/data/ArticleImg/image/20140331/5338f3e28c542.png', '', '1', 'msowdl1393998402');
INSERT INTO `tp_classify` VALUES ('112', '0', '最新菜品', '最新菜品', '7', 'http://www.apiying.com/data/ArticleImg/image/20140331/5338dd754e5fd.png', '', '1', 'msowdl1393998402');
INSERT INTO `tp_classify` VALUES ('113', '0', '联系我们', '联系我们', '0', '/data/ArticleImg/image/20140331/5338dd51b6b29.png', '', '1', 'msowdl1393998402');
INSERT INTO `tp_classify` VALUES ('115', '0', '品牌形象', '品牌形象', '4', '', '', '1', 'msowdl1393998402');
INSERT INTO `tp_classify` VALUES ('116', '0', '人才招聘', '人才招聘', '1', '', '', '1', 'msowdl1393998402');
INSERT INTO `tp_classify` VALUES ('117', '0', '公司荣誉', '公司荣誉', '5', '', '', '1', 'msowdl1393998402');
INSERT INTO `tp_classify` VALUES ('119', '0', '健康饮食', '健康饮食', '2', '', '', '1', 'msowdl1393998402');
INSERT INTO `tp_classify` VALUES ('120', '0', '风雨历程', '风雨历程', '3', '', '', '1', 'msowdl1393998402');

-- ----------------------------
-- Table structure for `tp_company`
-- ----------------------------
DROP TABLE IF EXISTS `tp_company`;
CREATE TABLE `tp_company` (
  `id` int(10) NOT NULL auto_increment,
  `token` varchar(50) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `shortname` varchar(50) NOT NULL default '',
  `mp` varchar(11) NOT NULL default '',
  `tel` varchar(20) NOT NULL default '',
  `address` varchar(200) NOT NULL default '',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `intro` text NOT NULL,
  `catid` mediumint(3) NOT NULL default '0',
  `taxis` int(10) NOT NULL default '0',
  `isbranch` tinyint(1) NOT NULL default '0',
  `logourl` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_company
-- ----------------------------
INSERT INTO `tp_company` VALUES ('1', 'mtlymo1390370507', '111111', '111111', '18888888888', '1111111111', '1111', '11', '11', '', '0', '0', '0', '11');
INSERT INTO `tp_company` VALUES ('2', 'zpbqjb1391609865', 'phonegap', 'phonegap中文网是中国最大的跨平台移动互联网开发门户网', '15201686455', '', '北京市海淀区西二旗银创动力大厦', '39.819721', '116.501457', 'phonegap中文网是中国最大的跨平台移动互联网开发门户网', '0', '0', '0', 'http://www.phonegap100.com/static/image/common/logo.png');
INSERT INTO `tp_company` VALUES ('3', 'ymivkz1394500574', '阜阳华联集团股份有限公司', '阜阳华联', '13035080813', '05582199661', '安徽省阜阳市颍州区清河东路华联大厦580号', '32.895969', '115.818125', '&nbsp; &nbsp; &nbsp; <span style=\"line-height:2;\">阜阳华联集团股份有限公司系安徽华联控股集团旗下以商业零售为主的连锁企业，成立于1996年，发展至今已拥有十家分公司，180多家直营店，近500家“万村千乡”示范店，职工逾3000人，拥有集配送、储存、生鲜加工、办公于一体的60000平米的现代化物流中心，是安徽省最具规模和影响力的连锁企业。连续十三年跻身“中国连锁业百强”，2005年被省政府授予“安徽省重点流通企业”，国家商务部“万村千乡市场工程”优秀试点企业，2007年被国家商务部、人事部授予“全国商务系统先进集体”，2010年被省政府再次授予“安徽省重点流通企业”。2012年被授予“安徽省先进集体”荣誉称号。</span>', '0', '0', '0', '');

-- ----------------------------
-- Table structure for `tp_company_staff`
-- ----------------------------
DROP TABLE IF EXISTS `tp_company_staff`;
CREATE TABLE `tp_company_staff` (
  `id` int(10) NOT NULL auto_increment,
  `companyid` int(10) NOT NULL,
  `token` varchar(30) NOT NULL default '',
  `name` varchar(30) NOT NULL default '',
  `username` varchar(20) NOT NULL default '',
  `password` varchar(40) NOT NULL default '',
  `tel` varchar(11) NOT NULL default '',
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `companyid` (`companyid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_company_staff
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_diymen_class`
-- ----------------------------
DROP TABLE IF EXISTS `tp_diymen_class`;
CREATE TABLE `tp_diymen_class` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_diymen_class
-- ----------------------------
INSERT INTO `tp_diymen_class` VALUES ('1', 'feedrk1391692825', '0', '关于启鸿', '启鸿', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('4', 'feedrk1391692825', '1', '在线留言', '在线留言', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('3', 'feedrk1391692825', '1', '启鸿简介', '启鸿简介', '1', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('5', 'feedrk1391692825', '1', '家教老师', '家教老师', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('6', 'feedrk1391692825', '1', '最新动态', '最新动态', '1', '4', '');
INSERT INTO `tp_diymen_class` VALUES ('7', 'feedrk1391692825', '1', '联系我们', '联系我们', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('8', 'feedrk1391692825', '0', '家长专区', '家长专区', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('9', 'feedrk1391692825', '0', '学生专区', '学生专区', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('10', 'feedrk1391692825', '8', '解疑答惑', '解疑答惑', '1', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('11', 'feedrk1391692825', '8', '学前教育', '学前教育', '1', '4', '');
INSERT INTO `tp_diymen_class` VALUES ('12', 'feedrk1391692825', '8', '小学教育', '小学教育', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('13', 'feedrk1391692825', '8', '初中教育', '初中教育', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('14', 'feedrk1391692825', '8', '高中教育', '高中教育', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('15', 'feedrk1391692825', '9', '解疑答惑', '解疑答惑', '1', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('16', 'feedrk1391692825', '9', '心灵鸡汤', '心灵鸡汤', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('17', 'feedrk1391692825', '9', '学法指导', '学法指导', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('18', 'feedrk1391692825', '9', '名校简介', '名校简介', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('23', 'vssbhv1391702832', '22', '业务范围', '业务范围', '1', '4', '');
INSERT INTO `tp_diymen_class` VALUES ('41', 'zpbqjb1391609865', '0', '111', '111', '0', '0', '');
INSERT INTO `tp_diymen_class` VALUES ('22', 'vssbhv1391702832', '0', '关于启鸿', '关于启鸿', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('24', 'vssbhv1391702832', '22', '启鸿简介', '启鸿简介', '1', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('25', 'vssbhv1391702832', '22', '启鸿动态', '启鸿动态', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('26', 'vssbhv1391702832', '22', '意见建议', '意见建议', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('27', 'vssbhv1391702832', '22', '联系我们', '联系我们', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('28', 'vssbhv1391702832', '0', '本地服务', '本地服务', '0', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('29', 'vssbhv1391702832', '28', '本地招聘', '本地招聘', '1', '4', '');
INSERT INTO `tp_diymen_class` VALUES ('30', 'vssbhv1391702832', '28', '房产信息', '房产信息', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('31', 'vssbhv1391702832', '28', '商务服务', '商务服务', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('32', 'vssbhv1391702832', '28', '家政服务', '家政服务', '1', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('33', 'vssbhv1391702832', '28', '家居装修', '家居装修', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('34', 'vssbhv1391702832', '0', '查询服务', '查询服务', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('35', 'vssbhv1391702832', '34', '打折促销', '打折促销', '1', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('36', 'vssbhv1391702832', '34', '旅游景点', '旅游景点', '1', '4', '');
INSERT INTO `tp_diymen_class` VALUES ('37', 'vssbhv1391702832', '34', '餐饮住宿', '餐饮住宿', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('38', 'vssbhv1391702832', '34', '公交路线', '公交路线', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('39', 'vssbhv1391702832', '34', '号码归属', '号码归属', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('40', 'feedrk1391692825', '9', '学习资源', '学习资源', '1', '4', '');
INSERT INTO `tp_diymen_class` VALUES ('43', 'btmdkz1392007679', '0', '关于启鸿', '关于启鸿', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('44', 'btmdkz1392007679', '0', '校园生活', '校园生活', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('45', 'btmdkz1392007679', '0', '公共服务', '公共服务', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('46', 'btmdkz1392007679', '43', '平台介绍', '平台介绍', '1', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('47', 'btmdkz1392007679', '43', '启鸿动态', '启鸿动态', '1', '4', '');
INSERT INTO `tp_diymen_class` VALUES ('48', 'btmdkz1392007679', '43', '调查问卷', '调查问卷', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('49', 'btmdkz1392007679', '43', '意见建议', '意见建议', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('50', 'btmdkz1392007679', '43', '联系我们', '联系我们', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('51', 'btmdkz1392007679', '44', '求职招聘', '求职招聘 1', '1', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('52', 'btmdkz1392007679', '44', '资格考试', '资格考试', '1', '4', '');
INSERT INTO `tp_diymen_class` VALUES ('53', 'btmdkz1392007679', '45', '电脑维修', '公共服务电脑维修', '1', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('54', 'btmdkz1392007679', '45', '旅游景点', '旅游景点', '1', '4', '');
INSERT INTO `tp_diymen_class` VALUES ('55', 'btmdkz1392007679', '45', '号码查询', '号码查询', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('56', 'btmdkz1392007679', '45', '娱乐休闲', '娱乐休闲', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('57', 'btmdkz1392007679', '45', '路线查询', '路线查询', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('58', 'btmdkz1392007679', '44', '等级考试', '等级考试', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('59', 'btmdkz1392007679', '44', '驾校报名', '驾校报名', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('60', 'btmdkz1392007679', '44', '校园外卖', '校园外卖', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('61', 'usyhhb1392205269', '0', '关于启鸿', '关于启鸿', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('62', 'usyhhb1392205269', '61', '公司官网', 'home', '0', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('64', 'usyhhb1392205269', '61', '最新动态', '最新动态', '1', '4', '');
INSERT INTO `tp_diymen_class` VALUES ('65', 'usyhhb1392205269', '61', '联系我们', '联系我们', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('66', 'usyhhb1392205269', '61', '调查问卷', '调查问卷', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('67', 'usyhhb1392205269', '61', '意见建议', '意见建议', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('68', 'usyhhb1392205269', '0', '主营业务', '主营业务', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('69', 'usyhhb1392205269', '68', '微信营销', '微信营销', '1', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('70', 'usyhhb1392205269', '68', '网站建设', '网站建设', '1', '4', '');
INSERT INTO `tp_diymen_class` VALUES ('71', 'usyhhb1392205269', '68', '淘宝运营', '淘宝运营', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('72', 'usyhhb1392205269', '68', '公众平台', '公众平台', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('73', 'usyhhb1392205269', '0', '成功案例', '成功案例', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('74', 'usyhhb1392205269', '73', '微信营销', '成功案例微信营销', '1', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('75', 'usyhhb1392205269', '73', '网站建设', '成功案例网站建设', '0', '4', '');
INSERT INTO `tp_diymen_class` VALUES ('76', 'usyhhb1392205269', '73', '淘宝运营', '成功案例淘宝运营', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('77', 'usyhhb1392205269', '73', '公众平台', '成功案例公众平台', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('78', 'tiixha1392039987', '0', '关于启鸿', '关于启鸿', '1', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('80', 'tiixha1392039987', '0', '本地服务', '本地服务', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('81', 'tiixha1392039987', '0', '查询服务', '查询服务', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('82', 'tiixha1392039987', '78', '启鸿简介', '启鸿简介', '1', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('83', 'tiixha1392039987', '78', '业务范围', '业务范围', '1', '4', '');
INSERT INTO `tp_diymen_class` VALUES ('84', 'tiixha1392039987', '78', '启鸿动态', '业务范围', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('85', 'tiixha1392039987', '78', '意见建议', '意见建议', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('86', 'tiixha1392039987', '78', '联系我们', '联系我们 怎么联系你们 如何联系你们 你们的联系方式 你们的', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('87', 'tiixha1392039987', '80', '家政服务', '家政服务', '1', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('88', 'tiixha1392039987', '80', '本地招聘', '本地招聘', '1', '4', 'http://qhjiaoyu.net/forum-289-1.html');
INSERT INTO `tp_diymen_class` VALUES ('89', 'tiixha1392039987', '80', '家居装修', '家居装修', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('90', 'tiixha1392039987', '80', '房产信息', '房产信息', '1', '2', 'http://qhjiaoyu.net/forum-53-1.html');
INSERT INTO `tp_diymen_class` VALUES ('91', 'tiixha1392039987', '80', '商务服务', '商务服务', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('92', 'tiixha1392039987', '81', '打折促销', '打折促销', '1', '5', 'http://qhjiaoyu.net/forum-95-1.html');
INSERT INTO `tp_diymen_class` VALUES ('93', 'tiixha1392039987', '81', '休闲旅游', '休闲旅游', '1', '4', '');
INSERT INTO `tp_diymen_class` VALUES ('94', 'tiixha1392039987', '81', '餐饮食宿', '餐饮食宿', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('95', 'tiixha1392039987', '81', '公交路线', '公交路线', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('96', 'tiixha1392039987', '81', '号码归属', '号码归属', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('97', 'ymivkz1394500574', '0', '华联特惠', '特惠', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('98', 'ymivkz1394500574', '97', '惊爆商品', '惊爆', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('99', 'ymivkz1394500574', '97', '特惠活动', '活动', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('100', 'ymivkz1394500574', '97', '商品展示', '商品', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('101', 'ygmvgq1395557599', '0', '关于颐和', '1', '0', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('102', 'ygmvgq1395557599', '101', '联系我们', '2', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('103', 'wgsiap1395669220', '103', '关于我们', '关于我们', '0', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('104', 'wgsiap1395669220', '103', '最新活动', '最新活动', '0', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('106', 'wgsiap1395669220', '106', '关于社团', '首页', '1', '2', 'http://www.apiying.com/index.php?g=User&m=Diymen&a=index&token=wgsiap1395669220');
INSERT INTO `tp_diymen_class` VALUES ('107', 'wgsiap1395669220', '107', 'GUANYUSHE', 'STJJ', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('121', 'wgsiap1395669220', '121', '关于社团', '首页', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('112', 'wgsiap1395669220', '0', '自强园地', 'ZQYD', '1', '2', '');
INSERT INTO `tp_diymen_class` VALUES ('113', 'wgsiap1395669220', '0', '校园服务', '娱乐', '1', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('114', 'wgsiap1395669220', '112', '校外兼职', '校外兼职', '0', '0', '');
INSERT INTO `tp_diymen_class` VALUES ('115', 'wgsiap1395669220', '112', '实习岗位', '实习岗位', '0', '0', '');
INSERT INTO `tp_diymen_class` VALUES ('116', 'wgsiap1395669220', '112', '工作招聘', '工作招聘', '0', '0', '');
INSERT INTO `tp_diymen_class` VALUES ('117', 'wgsiap1395669220', '113', '我的饮食', '我的饮食', '0', '0', '');
INSERT INTO `tp_diymen_class` VALUES ('118', 'wgsiap1395669220', '113', '休闲娱乐', '休闲娱乐', '0', '0', '');
INSERT INTO `tp_diymen_class` VALUES ('119', 'wgsiap1395669220', '113', '商品园地', '商品园地', '0', '0', '');
INSERT INTO `tp_diymen_class` VALUES ('120', 'wgsiap1395669220', '113', '青大新闻', '青大新闻', '0', '0', '');
INSERT INTO `tp_diymen_class` VALUES ('126', 'wgsiap1395669220', '126', '关于社团', '首页', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('127', 'wgsiap1395669220', '0', '关于社团', '关于社团', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('123', 'wgsiap1395669220', '123', '社团首页', '社团首页', '0', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('124', 'wgsiap1395669220', '124', '关于社团', '首页', '1', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('128', 'wgsiap1395669220', '127', '社团介绍', '社团介绍', '0', '5', '');
INSERT INTO `tp_diymen_class` VALUES ('129', 'wgsiap1395669220', '127', '公益简报', '公益简报', '0', '3', '');
INSERT INTO `tp_diymen_class` VALUES ('131', 'wgsiap1395669220', '127', '爱心宿舍', '爱心宿舍', '0', '1', '');
INSERT INTO `tp_diymen_class` VALUES ('132', 'wgsiap1395669220', '127', '社团首页', '社团首页', '0', '6', '');
INSERT INTO `tp_diymen_class` VALUES ('133', 'vbbgps1396228640', '0', '主页', '主页', '1', '0', '');
INSERT INTO `tp_diymen_class` VALUES ('134', 'vbbgps1396228640', '0', '点菜', '点菜', '1', '1', '');

-- ----------------------------
-- Table structure for `tp_diymen_set`
-- ----------------------------
DROP TABLE IF EXISTS `tp_diymen_set`;
CREATE TABLE `tp_diymen_set` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `appid` varchar(18) NOT NULL,
  `appsecret` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_diymen_set
-- ----------------------------
INSERT INTO `tp_diymen_set` VALUES ('1', 'feedrk1391692825', 'wxe179781e3cc450a4', 'ec1262dcc133f64c832c78df73e277fa');
INSERT INTO `tp_diymen_set` VALUES ('2', 'vssbhv1391702832', 'wx48a30e2797161e55', '52139c931302f7f617612f25802a94cc');
INSERT INTO `tp_diymen_set` VALUES ('3', 'btmdkz1392007679', 'wx24c80abe3d08210c', '2dac2ea427e9a1f7771f4bd8e0fc9de2');
INSERT INTO `tp_diymen_set` VALUES ('4', 'tiixha1392039987', 'wx48a30e2797161e55', '52139c931302f7f617612f25802a94cc');
INSERT INTO `tp_diymen_set` VALUES ('5', 'usyhhb1392205269', 'wx3174b034e0e99968', '074bdf320e809545c5082459b4a60e65');
INSERT INTO `tp_diymen_set` VALUES ('6', 'bebwmx1393770649', 'wx18fb2b6204daa79d', '91b90b3e64a8185084fc747067c9a4bb');
INSERT INTO `tp_diymen_set` VALUES ('7', 'ymivkz1394500574', 'wx3fa313084d895fbe', 'f4aad60c55c06b29796ef24144dc515a');
INSERT INTO `tp_diymen_set` VALUES ('8', 'qdxqhj1395665354', '', '');
INSERT INTO `tp_diymen_set` VALUES ('9', 'wgsiap1395669220', 'wx1484485f7dfce205', '1f00e7c06e68b9a9f9a54c693c2a361d');
INSERT INTO `tp_diymen_set` VALUES ('10', 'vbbgps1396228640', 'wx40958edfc1c543b6', '6ebf1ea2eefd6d8a8326bf06c271f105');

-- ----------------------------
-- Table structure for `tp_dream`
-- ----------------------------
DROP TABLE IF EXISTS `tp_dream`;
CREATE TABLE `tp_dream` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(20) NOT NULL,
  `content` varchar(1024) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dream
-- ----------------------------
INSERT INTO `tp_dream` VALUES ('1', '梦见父母', '梦见自己成了幼儿与父母相处  幸运的事情即将发生。可以尝到美昧可口的咖啡、得到电影招待券等等。你将不觉莞尔一笑。梦见和父母快乐地有说有笑  家中将起波澜。对父母将感觉厌烦，会有离家出走的行为。你还未成年，不要因轻率急躁而遗恨终身，要多多自重。梦见父母离婚  朋友运不如意。你无心的一句话，将引起误解。如果置之不理，朋友将离你而去，要设法解释清楚才好。梦见受母亲疼爱  在爱情方面将有乐事。约会的地方最好尽量选择幽静的地方，诸如图书馆、博物馆、黄昏的公园等等。梦见被父亲大骂一顿  健康方面有不良征兆。尤其要注意的是意外事故，在上下车、横穿车道时要特别小心哪。梦见离开父母而成孤苦伶仃  爱情方面将有很大的幸运。如果有意中人，不必迟疑可以进攻，绝对不会被封杀出局。因为这是梦中注定的');
INSERT INTO `tp_dream` VALUES ('2', '梦见护士', ' 已婚女子梦见护士  不久会怀孕，得贵子。 少女梦见有一群美貌的护士  很快要出嫁。 少女梦见和护士争吵  婚事不顺利，迟迟不能出嫁。 病人梦见护士  痛苦很快要过去。');
INSERT INTO `tp_dream` VALUES ('3', '梦见老师', ' 梦见受老师称赞  在学业方面乌云密布。由于连日的熬夜，在课堂上竟开始打陀结果受到老师批评。这就是所谓反梦。 梦见受老师责骂  家人关系极佳。对双亲能克尽孝道，你将令人刮目相看。也许每个月的零用钱会大幅度增加呢。 梦见到老师家里拜访  人际关系的运势衰退的预兆。头顶上有一颗争执之星，要注意你的言行举止，防止争执，尤其脾气不可暴躁。 梦见正在上课  读书运渐入佳境。将有指点迷津的同学出现，以此为契机，你的读书欲将大增。也就是说，你将会有很大的干劲。要努力喔! 梦见遇见校长  这是上学恐惧症。不要一天到晚抱着书本，过分拘泥于成绩，有时也要放松心情，尽量参加其他活动。否则你的神经将很快衰弱。 梦见异性老师向你亲密攀谈  爱情运将下降，情人之间的感情开始变得索然无味，最好改变一下约会的方式');
INSERT INTO `tp_dream` VALUES ('4', '梦见男孩', '梦见男孩，是祥兆。女人梦见男孩，会生病。梦见漂亮的男孩，朋友会忘恩负义。梦见生男孩，生活会幸福、恬适。梦见男孩夭亡，大难将降临。女人梦见自己将要生一个男孩，意味着会过上幸福舒畅的生活');
INSERT INTO `tp_dream` VALUES ('5', '梦见皇后', ' 男人梦见皇后  会经济受损。 女人梦见皇后  丈夫会心情愉快。 囚犯梦见皇后  很快能恢复自由。 叛国者梦见皇后  不久会成为国家领导人的宠儿。 商人梦见皇后  出国做生意能发大财。 已婚女人梦见自己成了皇后  很快会与丈夫分离，或孩子生病，或者由于丈夫失业，左支右绌。 未婚女子梦见自己当了皇后  嫁到一个有名望富有的家庭。 男人梦见同皇后握手  会受到国家尊重，官运亨通。 男人梦见同皇后握手  会娶富人家的小姐为妻。 已婚女人梦见和皇后握手  会身居高位。 未婚女子梦见和皇后握手  想与意中人结为伴侣，但却会遭到父母的阻拦。 梦见和皇后争吵  能发大财');
INSERT INTO `tp_dream` VALUES ('6', '梦见朋友', ' 梦见大伙儿一起去旅行  最近，很可能发生快乐的事。如亲友参加电视猜谜得奖；老师临时有事，自习时间增加等等。 梦见与朋友一起挨老师责骂  考试运极度好转。考试前所看的复习题，全部出现在试卷中，必将获得近于满分的成绩。 梦见与朋友一起旷课到处游荡  在健康方面乌云密布。放学途中买东西吃，将食物中毒；咬紧牙关熬夜，眼睛将出毛病、只好去看医生，不料医生临时休业真是霉运当头! 梦见有朋友来玩  异性运上升。将有新的浪漫史产生。爱情战的武器，不外乎是电话。最幸运的黄金时段将是晚上八点到九点。 梦见与朋友一起又吃又喝  在金钱方面要多加小心。不要花无谓的钱，搞得囊空如洗。 梦见与朋友并排读书  进行新尝试的最好时机。参加社团、练技习艺，只要是日常想做的事，立刻开始行动吧。 梦见与朋友一起工作  人际关系好。没有钱的时候；有事情必须要别人帮忙时候，朋友一定会伸出援助的手。 梦见朋友与异性很要好  爱情运将停滞。与情人之间总是格格不入，波折迭起。选一处喝咖啡的地方，也争执不休。 梦见与朋友玩笑嬉戏  在异性方面将有问题出现。对性的诱惑千万要小心，要保持清醒与理智。 梦见一群好友反目而分裂  人际关系将不如意。无意间发觉最信赖的朋友在背后说你，因此受到莫大的打击。要治愈这心里的创伤，要一段很长的时间');
INSERT INTO `tp_dream` VALUES ('7', '梦见守财奴', ' 梦见一毛不拔的人  朋友会吵嘴。 梦见与吝啬鬼交朋友  要遭不幸。 男人梦见自己成了铁公鸡  一毛不拔，生意能赚大钱。 已婚女人梦见自己小气  婆婆家的处境会很令人担忧。 梦见和吝啬人吵架  预示要交新朋友。 梦见偷拿守财奴的东西  会身居高位。 梦见铁公鸡送钱给自己家  会被偷窃');
INSERT INTO `tp_dream` VALUES ('8', '梦见尼姑', ' 男人梦见女出家人  无数的灾难会临头。 女人梦见与出家人交谈  丈夫家的人能和睦相处，生活愉快。 少女梦见与女出家人发生争吵  是凶兆，亲人会受辱。');
INSERT INTO `tp_dream` VALUES ('9', '梦见小孩', ' 梦见抱起婴儿  财运相当顺利的象征。你的存款将大幅度增加，但绝对不可借给别人，因为要不回来的可能性很大。 梦见欺负小孩儿  人际关系有阴影。你的隐私将被周围的人发觉。必须小心加以防范，别忘了隔墙有耳! 梦见与儿童一起游戏  学校里将发生快乐的事。新近成为会员的后生小辈，竟是英俊无比的异性每天都盼望快点下课');
INSERT INTO `tp_dream` VALUES ('10', '梦见人群', ' 梦见许多穿着华贵服装的人聚集在一起  未婚者将会喜结良缘。 梦到穿脏衣服的人聚集在一起  做梦人的亲属会有人与世长辞');
INSERT INTO `tp_dream` VALUES ('11', '梦见疯子', ' 少女梦见与女出家人发生争吵  是凶兆，亲人会受辱。 姑娘梦见疯子  会嫁给一个富有、如意的男子。 跛子梦见疯子  会找到忠诚的仆人。 梦见妻子疯了  她会把家安排得井井有条');
INSERT INTO `tp_dream` VALUES ('12', '梦见兄弟姊妹', ' 梦见受兄或姊欺负而心有不甘  兄弟运蕴酿着波折。仅仅为了一支铅笔、或一块橡皮，就要起一场争执。这时，最好由父母出面做公道人。 梦见兄弟或妹妹将出去游玩  在人际关系中将有幸运来临。可能由于趣味相投，将结识新朋友。只要坦诚相待，必然可以成为心腹之交。 梦见兄弟吵架  比赛运衰减。围棋、象棋、电视娱乐比赛不管参加任何一种比赛，准输无疑。这种状态将持续半年，要有心理准备! 梦见与兄弟姊妹合力做些事情  学业方面将有进步。以往难缠的科目，也将全部都有好分数。有可能得到老师当众表扬，使你神采飞扬。 梦见与兄弟或姊妹远离  在异性方面将有幸运。可能接到某同学写的热情洋溢的情书。这时将如何应付?这是你个人的事。 梦见与兄弟姊妹同盖一床被子  雨过天睛，健康运上升。今后一个月，虽然有一点不如意，但过后将精力充沛，可以过一段无病无痛的日子');
INSERT INTO `tp_dream` VALUES ('13', '梦见军队', '梦见军队开来或军队处于立定姿势，这是好的征兆。梦见军队离去，意味着将遭不幸。梦见军队打败了，倒霉的日子将要到来。梦见军队胜利了，寓意着要交好运。');
INSERT INTO `tp_dream` VALUES ('14', '梦见清道夫', ' 梦见清洁夫  要遭厄运。 女人梦见清扫人  会忍受丈夫分离的痛苦。 梦见当了清道夫  前途无量。 商人梦见做清道夫的工作  生意会兴旺，能发大财。 梦见与清扫工吵架  会臭名远扬。 梦见和清洁工交朋友  会名声大噪，得财进宝');
INSERT INTO `tp_dream` VALUES ('15', '梦见祖父母', ' 梦见祖父母给你零用钱  将有极佳的金钱运。但仍有浪费的倾向，所以出去逛街购物时要有节制。 梦见祖父母责骂母亲  健康方面亮起红灯。虽有强健的身体，也不可过信自己的体力。 必须保持良好的生活规律，要经常运动，加上充分的营养及休息才可保持健康。 梦见帮祖父母捶背  技能方面将进步。这将是练习弹奏吉他的良机，每天加紧练习吧! 梦见祖父母躺在病床上  家中可能发生纠葛。你与双亲及兄弟强能发生争执，注意不要任性。');
INSERT INTO `tp_dream` VALUES ('16', '梦见婴儿', ' 孕妇梦见婴儿，则无象征意义。 梦见抱着婴儿，象征着梦者将会有所收获，不久之后将会得到对于来说很重要的东西。 梦见婴儿笑，象征着人际关系的良好，您能以诚待人，且身边会有很多。 梦见婴儿长牙，象征着计划的顺利实施，您能得到贵人的帮助，不久之后就会有好消息。 梦见婴儿说话，可能是在提醒您最近您会遇到麻烦，总有人从中做怪，也就是犯小人。 梦见婴儿死了，是不详之梦，表明自己计划和希望的破灭，您已经或者将要失去对自己来说很重要的东西。 梦见婴儿哭，表示当前有些压抑的情绪，使得自己心烦意乱，这时候最好静下心来，不要主动出击，做事低调些。');
INSERT INTO `tp_dream` VALUES ('17', '梦见野蛮人', '男人梦见野蛮人，小心啊女人梦见野蛮人，丈夫家里会发生吵架。梦见与野蛮人打斗，是不祥之兆，灾祸会降临。商人梦见会见未开化的人，不久要出国，能发大财。受指控的人梦见未开化的人，会被驱逐出境。旅游者梦见野蛮人，旅行会愉快');
INSERT INTO `tp_dream` VALUES ('18', '梦见邻居', '梦见邻人出现，有火难之灾。火灾固然要小心，也要注意开水、火柴等烫伤。但所梦见的如果是隔壁的邻居，就不会有危险，尽可放心。梦见与邻居同辈的异性，爱情将有新局面。表示你对爱情已有美好憧憬，一定会对某一个人产生爱情。');
INSERT INTO `tp_dream` VALUES ('19', '梦见王子公主', ' 一般梦中的王子、公主多代表着自己或兄弟姐妹。而梦中的国王、女王则代表你的双亲。 梦见王子或公主，则象征着这些日子，也许会与善意的人吵架');
INSERT INTO `tp_dream` VALUES ('20', '梦见小贩', ' 男人梦见小贩  会与朋友分道扬镳。 已婚女人梦见小贩  会与丈夫家的人分开另过，独自操持家务。 梦见与小贩交谈  是好的征兆，丈夫会勤俭持家。 女人梦见与小贩交谈  会有一个装饰豪华具有现代化的住宅、华贵的服装、舒适的生活，一切应有尽有。 梦见与小贩吵架  陌生人会骗走自己的财产。 梦见和小贩交朋友  生意会好转，发大财。 官员梦见自己成了小贩  会被降职，最后只好提出辞职。 商人梦见自己成了小贩  生意会萧条，有可能倒闭。 病人梦见自己成了小贩  要遭厄运，尽管请西医大夫和中医治疗，但病情仍不见好转。 大学教师梦见自己成了小贩  是祥兆，会扬名天下，世界许多国家会邀请他发表演说。失业者梦见自己成了小贩  会接到好几个机构的聘书，但是都难以胜任');
INSERT INTO `tp_dream` VALUES ('21', '梦见医生', ' 梦见医生  亲人会卧床不起。 病人和久病痊愈的人梦见医生  病情会加重，或突然病倒。 梦见与医生交谈，或向医生咨询  会身体健康，延年益寿。 病人梦见和医生谈话，或请教医生  不久病情会好转。 梦见与医生争吵，是不祥之兆  要遭受重大损失。 梦见自己当了医生或西医大夫  不久会被辞退，或生意受到冲击。 梦见去请医生  会与德高望众、受人民尊重的人建立友好关系。 梦见与医生交朋友  不用求人送礼，就能发财。 女人梦见丈夫当了医生  会患子宫病。 梦见侍候医护人员  生意会起伏不定，生活动荡不安');
INSERT INTO `tp_dream` VALUES ('22', '梦见丈夫', ' 梦见担心丈夫头发掉落变成秃顶，这是用梦境体现了对 丈夫 的无能、软弱的嫌恶和怨恨。 梦见丈夫有第三者,可能是你对你们的婚姻在潜意识中总觉得有压力。也许是你的丈夫很优秀，也许是你总是看低自己的魅力，所以你在内心深处总会有危机感，总有着隐隐约约的压力和担心。梦仅仅是现实在我们脑海中扭曲的反映，梦反映什么不重要，重要的是通过梦境我们可以更多地了解自己的内心，更好的改进自己心理状况。 梦见丈夫睡在别人的床上,有这样的梦,实质上说明的情况是你爱老公的程度比不了他爱你的程度. 另外,你已经很习惯有他的日子了,但有的时候,他说不定比你还喜欢吃醋.......呵呵.既然这样,梦见这个,就不是坏事,好好珍惜这份感情吧.');
INSERT INTO `tp_dream` VALUES ('23', '梦见烈士', ' 梦见烈士  会受到人们的尊重，不断进步。 梦见女烈士  要发大财。 梦见受到烈士的责骂  处境对自己极为不利。 梦见自己成了烈士  会灾难临头');
INSERT INTO `tp_dream` VALUES ('24', '梦见警察', ' 梦见警察站着  是危险的兆头。 梦见自己被逮捕  会成为政府官员所喜欢的人物。 惯犯梦见警察抓人  多次作案，能发大财。梦见与警察交谈  会被提升。 女人梦见与警察交谈  丈夫的保镖会受伤。 囚犯梦见与警察谈话  很快会被释放。 商人梦见与警察交谈  要提防竞争对手。 领导人梦见与警察交谈  政府和警察会非常尊重自己。 梦见与警察吵架  是凶兆，预示仇人和强盗在威胁着自己。 未婚男子梦见与警察争吵  会带着自己的情侣逃跑。 男人梦见请求援助  作梦人会幸福安全。 女人梦见求助于警察帮助  很快要出狱。 梦见挨警察的打  会贪污公款，损失惨重。 梦见自己当了警察  会威信扫地。梦见自己穿着警服  会受到刑事案件的牵连');
INSERT INTO `tp_dream` VALUES ('25', '梦见导师', ' 男人梦见自己的 导师 ，一切都会顺心如意。 女人梦见自己的 导师 ，要遭欺辱。梦见新的 导师 ，会遭受损失。 老叟梦见与自己的 导师 交谈，不久要与世长辞。 商人梦见和自己的 导师 谈话，吸收新的合股人，能发大财。 梦见与 导师 吵架，会家破人亡。 学生梦见和 导师 交谈，会因生活困难。中途辍学');
INSERT INTO `tp_dream` VALUES ('26', '梦见队伍', ' 梦见迎亲的队伍  家里要死人。 女人梦见迎亲队伍  丈夫家里要吵架。 已婚男人梦见参加迎亲队伍  会身居高位，人们都有求于自己。 已婚女人梦见参加迎亲队伍  不久会怀孕，能生一个漂亮的男孩。 未婚男女梦见迎亲队伍  会喜结良缘。 未婚男子梦见参加迎亲队伍  会与恋人各奔东西。 囚犯梦见加入迎亲队伍  很快会获得自由。 病人梦见参加迎亲队伍  病情会恶化。 梦见参加政治或宗教游行  会有好消息。 政治领导人梦见加入政治或宗教游行  会受到国家领导人的尊重。旅游者梦见参加政治或宗教游行  会发生车祸');
INSERT INTO `tp_dream` VALUES ('27', '梦见名人', ' 梦见接到喜欢的朋友来信  在异性关系上，将有快乐事发生。在朋友的生日派对中，被介绍认识几个异性，其中也许有上个喜欢你的人。爱情可能就此萌芽 梦见受著名的运动选手指导  健康方面将有不韦。尤其社团活动时，发生事故或受伤的可能性很大。 这个时候，最好避免练球练得太晚。 梦见与最喜欢的明星亲密相处  财运将大幅度好转。多余的支出减少，零用钱到了月底还有很多。借给朋友的钱，也一定可以收回。 梦见与外国电影明星交谈  朋友运上升的前兆。这时可以和几个要好的朋友计划郊游。这段快乐的时光将可以增强你与朋友之间的友谊。 梦见与首相握手  遭受意外事故的可能性极大。譬如向摇着尾巴走来的狗伸出友谊的手，却被咬等倒霉到了极点。 梦见与历史上的名人会见  亲友将遭受病难的预兆。要给予病痛缠身或体弱多病的朋友婉转的安慰');
INSERT INTO `tp_dream` VALUES ('28', '梦见同学', ' 梦见同性的同学反映你现在人际关系上出现了问题。 梦见异性同学则表示你对朋友有不满的态度，反映了你现在被孤立而寂寞的心态。 梦见与同学打架，人际关系运上升。你跟任何人都可以大胆而积极地交往，周围的人对你也必然坦诚相待，绝不会发生冲突');
INSERT INTO `tp_dream` VALUES ('29', '梦见英雄', ' 中年人梦见自己成了英雄  是身强力壮的兆头。 老年人梦见自己成英雄  会溘然而逝。应该尽早立遗嘱，分家产。 病人梦见自己成了英雄  病情会恶化，如果他的八字好，会得救');
INSERT INTO `tp_dream` VALUES ('30', '梦见上司', '梦见上司，现实生活中想发挥自己的能力但受到阻挠。梦到这个梦时还要注意工作上可能将会惹麻烦梦见上司不批准自已请求，预示工作或工作环境有小麻烦。梦见与上司同行就是与麻烦同行。梦见上司生病，预示麻烦会没有。梦见上司来访，表示缺乏自信。');
INSERT INTO `tp_dream` VALUES ('31', '梦见同事', '梦见和工作伙伴商讨事情，暗示计画可能受到阻挠或是会停滞不前。梦见商讨或交涉成功的话，表示你现实生活中将遭遇困难');
INSERT INTO `tp_dream` VALUES ('32', '梦见小偷', '原版周公解梦内与小偷相关的内容：赶贼入市不出凶；强贼入宅主家破；与贼同行大吉利；赶贼行见者大吉。现代释梦：梦见小偷，暗示你最近情绪不太稳定，财运有起落。但是商人梦见小偷，预示生意兴隆。梦见自己成了小偷，预示有财运，钱财上会有意想不到的收获。梦见发现小偷偷东西，表示你可能正一步步制订某项计划，接近某个目标。另外，梦见小偷，还可能表示你有不正当的性行为。梦见自己和小偷同行，预示你将发财。梦见你是个小偷并被警察追赶，预示你进行的事业将陷入困境，你开展的社交关系也将陷入僵局。梦见你追赶或抓获一个小偷，意味着你将最终在较量中赢得对手的尊重。梦见自己认识的某个人成了小偷，则表示潜意识中你不信任那个人，虽然在生活中，你可能并未家常到这一点。梦见有小偷到自己家入室行窃，提醒你近期一定要小心谨慎，家里可能有会遇到祸事。梦见小偷入室窥视，环视屋内，表示你对性的好奇心很重，有偷窥欲。如果小偷没有发现你就离开了，表示你曾有一段不为人知的秘密性关系。如果小偷发现了你并攻击你，则暗示你最近有强烈的欲望。');
INSERT INTO `tp_dream` VALUES ('33', '梦见孤儿', '梦中的孤儿，是人性脆弱一面的代表，往往表示你内心孤独渴望被关爱。如果梦见自己变成了孤儿，这是提醒做梦人必须要摆脱内心的依赖，独立自主，自力更生。如果梦见自己在照顾孤儿，预示你可能会得到他人的帮助。如果梦里看见街边的流浪儿，意味着工作上会有困难。梦见慰问孤儿，预示他人的忧虑将触动你的同情心，并将最终促使你牺牲掉个人的享乐。梦见与你有关的孤儿，预示你的生活将增添新的责任，并将由此导致你与某个朋友或某个爱好相同的人之间产生疏远。');
INSERT INTO `tp_dream` VALUES ('34', '梦见妻子', '梦见拥抱妻子，是不祥之兆，会与妻子分居。梦见与妻子拌嘴，夫妻恩爱，生活幸福、美满。囚犯梦见与妻吵架，很快能见到妻子。梦见和妻分离，会更加宠爱妻子。梦见找了一位好吵闹的妻子，生活会幸福、舒适。梦见妻子疯了，寓意着妻子会把家安排得井井有条。梦见妻子十分疲乏，会与妻子分离。丈夫梦见妻子年青了许多，预示家庭幸福、美满。丈夫梦见援助妻子，夫妻生活会很幸福美满。梦见受到妻子的表扬，妻子会行为不轨，令人厌恶。');
INSERT INTO `tp_dream` VALUES ('35', '梦见和尚', '梦见僧人或和尚，吉兆，会有好运。梦见僧侣念经，是死亡的暗示。梦到自己出家，表示重生或疾病可好转。遇高僧说教，表示将开拓人生大道。梦见出家人的画，生活富裕安逸。梦见听和尚或僧人说教，自己的事业会走上正轨。');
INSERT INTO `tp_dream` VALUES ('36', '梦见军人', '梦见自己成为军人，预示梦者生活会出现新的转机。梦见别人成为军人，意味着梦者事业征途上一切井然有序。梦见军人在站岗，意味着梦者在未来的工作中需要提高警惕，防止小人捣乱。梦见军人休假，表示梦者已完全处于一种安全和谐的环境之中。女人梦见军人，表示潜意识内对婚姻的担忧。');
INSERT INTO `tp_dream` VALUES ('37', '梦见病人', '梦见自己成了病人，预示计划被延迟，或你会得到别人的帮助。梦见别人是病人，表示你会有机会寻求朋友、长辈的帮助。梦见家里有麻疯病病人来访，意味着将会有人登门拜访贵府，向你进行宣传。梦见自己成为精病患者，将跨过障碍和难关，生活越来越安定、富裕的征兆。梦见病人逐渐恢复健康，暗示梦者进行中的事情或计划的事情一帆顺的祥梦。梦见病人在歌唱，这是家里发生等不吉利的事情的征兆。梦见患上传染病的人吃后痊愈，这是将脱离某种组织或团体的意思。梦见精神病病人查看自己的，这是患病或诸事不顺的征兆。梦见病人出院回家，这是暗示梦者祈求一切安好，身体健康的梦。梦见去探望某个病人，梦中的病人即将获得痊愈的征兆。');
INSERT INTO `tp_dream` VALUES ('38', '梦见婴儿', '梦见婴儿，一方面，暗示了你自己内心中脆弱、渴望被爱的一面；另一方面，则预示你的自我发展，生活进展中将会转运，得到新机会和好运，之前的辛勤有回报等等。梦见漂亮可爱的婴儿，预示你会有好运气。梦见非常难看的婴儿，则象征可能会有信任的人捣鬼欺骗你。梦见自己抱起婴儿，象征着梦者将会有所收获，不久之后将会得到对于自己来说很重要的东西。梦见婴儿笑，象征着人际关系的良好，您能以诚待人，且身边会有很多。梦见婴儿长牙，象征着计划的顺利实施，您能得到贵人的帮助，不久之后就会有好消息。梦见婴儿说话，可能是在提醒您最近您会遇到麻烦，总有人从中做怪，也就是犯小人.梦见婴儿死亡的梦境，是不详之梦，表明自己计划和希望的破灭，您已经或者将要失去对自己来说很重要的东西。梦见婴儿哭，表示当前有些压抑的情绪，使得自己心烦意乱，这时候最好静下心来，不要主动出击，做事低调些。梦见婴儿哭，并且导致梦者心烦意乱，则预示将有不愉快的事情发生，也可能是你最近身体欠佳。梦见刚出生的孩子就开始直立行走，预示你的工作成绩，将得到赞誉好评。梦见生病的婴儿，表示你在工作或恋爱中可能会遭受挫折。如果梦见小孩丢失，则表示你现在遇到的麻烦或者担心，将会消除，心绪将重获安定，走上逐渐发展的正轨。梦见刚出生的婴儿在大小便，预示可能会遇到不吉利的事，也可能你信赖的人，会令你陷入尴尬境地。已婚但还没有孩子的人来说，梦见婴儿，有时则可能仅仅是表示心中想要孩子的愿望。初为父母的人，梦见婴儿要窒息或在危险中，通常表示了对孩子的强烈关心。孕妇梦见婴儿，则无象征意义。梦见自己的孩子出生，是将要怀孕，或发财、有丰厚进项的预兆。梦见有陌生人抚摩婴儿，暗示你近期运气不佳，会遇到倒霉事儿。');
INSERT INTO `tp_dream` VALUES ('39', '梦见姐姐', '男人梦见自己的姐姐，是祥兆，能长寿；女人梦见未婚的姐姐，额外开销会突然增多。女人梦见已婚的姐姐，会与丈夫家的一个女性发生争吵。梦见给姐姐礼物，侵吞公款，会破财。梦见与姐姐吵嘴，会越来越富。梦见去姐姐的家，贵客会登门。梦见与姐姐交谈，会有好消息。梦见姐姐去世，她会长寿。梦见死去的姐姐，会有好运气，家庭和睦。');
INSERT INTO `tp_dream` VALUES ('40', '梦见陌生人', '梦见陌生人或者不认识的人是一种好的暗示，如果你梦到从未见过的人的话，这暗示着在最近的将来，你将有恋爱的机会。(但是婴儿则例外)梦见陌生小男孩，或许会有一见钟情发生，但可惜的是和他似乎无法顺利发展。梦见陌生小女孩，会有你喜欢的人已有恋人的传言。但单纯为误传的可能性很高，所以请仔细去确认两者事实上的关系。梦见陌生年轻男孩，会有花花公子型的男孩接近你。但是如果你答应的话，将来可能会后悔。梦见陌生年轻女孩，似乎会在街上巧遇喜欢的男孩。外出时，请打扮得漂亮一点。梦见陌生男性中年，经由朋友的介绍，似乎会有发展成美丽恋情的机遇。梦见陌生女性中年，会得到自己所喜欢的男孩的消息。若能把握机会展开攻势的话，会有好结果产生。梦见陌生男性老年，似乎会得到从未和他讲过话、意想不到的男孩的青睐。梦见陌生女性老年，和不怎么样的男孩的关系，似乎会引起谣传。要控制自己容易招惹误会的言行举止。梦见请求陌生人原谅，预示将经历悲伤，遭受挫折。梦见陌生人表扬自己，寓意着会受到侮辱。梦见陌生人皱眉，预示你可能会结交新朋友。梦见躺在陌生人的床上，夫妻将要离婚。');
INSERT INTO `tp_dream` VALUES ('41', '梦见舅舅', '梦见舅舅，会受到人们的尊重。女孩梦见舅舅，会陷入困境。犯人梦见舅舅，很快会获得自由');
INSERT INTO `tp_dream` VALUES ('42', '梦见裁缝', '裁缝代表了辛勤劳作与生活转机，是好的预示，梦见裁缝通常表示前一段的时间的努力会有所回报或者有好事即将发生。男人梦见裁缝，预示将发财致富，事业会上个新台阶。女人梦见裁缝，预示娘家或夫家会有大办婚礼这样的喜事。梦见自己成了裁缝，预示收入增加，经济条件转好。梦见请裁缝做新衬衣，预示家里可能将举行婚礼。梦见把裁缝叫到家里，预示子女将独立，长大成人，成家立业。梦见和裁缝交朋友，预示家里会增加额外的开销。梦见自己和裁缝吵架，预示经济上可能会承担损失。梦见与裁缝发生误会，表示你将对某项计划的结果感到不满与失望。梦见裁缝给你量尺寸，预示你将会因某事与他人发生争吵，从而使你们的关系趋于紧张。');
INSERT INTO `tp_dream` VALUES ('43', '梦见双胞胎', '梦见双胞胎，反映做梦人互相对立的个性以及矛盾的心理；梦见双胞胎在打架，表示内心中有强烈对立的自我。梦见双胞胎一起快乐地玩耍，表示你的内心中，虽然有不同的自我，但不同自我之间相处都很和谐。梦中的双胞胎身体瘦弱，表示你将亲临失望和痛苦的第一线。梦见四胞胎，则预示你可能要承受困难，但依然充满希望。男子梦见双胞胎，通常表示经过思虑和内心的斗争后，成家立业，事业成功。商人梦见双胞胎，预示最终会财源广进。病人梦见双胞胎，预示身体正慢慢恢复健康。');
INSERT INTO `tp_dream` VALUES ('44', '梦见寡妇', '梦见寡妇，通常预示你会有损失或内心悲伤。女人梦见寡妇，暗示自己对目前的生活状况表示担忧，对未来没有信心。男人梦见寡妇，表现了对女性的渴望，同时又想得到一位独立自主的女性青睐，能在事业上帮助自己。男子梦见和寡妇交谈，要小心有人造谣中伤你。梦见自己给寡妇钱，或帮助寡妇，预示你会有好运气，或者得到意外的回报。梦见和寡妇吵架，预示你会倒霉。如果梦见了披麻戴孝的寡妇，则象征你自己心中对死亡的恐惧。');
INSERT INTO `tp_dream` VALUES ('45', '梦见警察', '警察是具有典型男性特征的形象，有权威、规范、良心的含义。梦见警察站着，是危险的兆头。梦见与警察吵架，要多加小心，预示你会有强盗或仇人威胁你。梦见挨警察的打，预示你可能会发生营私舞弊，贪污渎职的事情，造成严重损失。梦见自己当了警察，或是当侦探去调查案件，预示你在人际关系方面将遇到挫折，可能会受到别人的造谣中伤，名誉受损，或威信扫地，陷入困境，要细致冷静地应付。梦见自己穿着警服，会受到刑事案件的牵连梦见被警察追捕，表示你可能有有些想法和冲动，在内心深处感觉是道德准则或社会规范所反对的，会受到责备，因此感到不安。这个时候的警察是超我的象征，也就是良心的化身。也有可能表示你内心中一直压抑的，少年时代对生活中那个独裁专制的父亲的怨恨。梦见和警察交谈，暗示你会得到重视和提升。梦见接受警察的盘问或问讯，提醒你要提防自己的身体健康，你可能会患病。尤其要注意饮食，对食物中毒、痢疾、便秘等消化疾病更要格外当心。梦见向警察求助，预示你会安全幸福，克服困难。梦见自己被警察抓住，预示工作将取得显着成绩，或是学习成绩进步惊人，会受到领导、上司、老师的重视，令人刮目相看。梦见犯了罪被警察抓住，读书运最好的时刻。在全班的成绩普遍低的情况下，只有你一个人是九十分以上的好成绩，必能一鸣惊人。未婚男子梦见与警察争吵，会带着自己的情侣逃跑。男人梦见请求援助，作梦人会幸福安全。女人梦见求助于警察帮助，很快要出狱。女人梦见与警察交谈，丈夫的保镖会受伤。妻子梦见和警察谈话，可能表示丈夫将遇到危险。商人梦见和警察谈话，警告你要小心提防竞争对手。官员梦见和警察谈话，预示会得到政府和警察的尊重。囚犯梦见与警察谈话，很快会被释放。惯犯梦见警察抓人，多次作案，能发大财。');
INSERT INTO `tp_dream` VALUES ('46', '梦见哑巴', '梦见自己成为哑巴，不祥之兆，要提防小人。梦见自己突然变成哑巴，想要张嘴却说不出话来，暗示可能有小人中伤你，你却找不出原因，让你举步艰难。梦见自己成为哑巴然后又好了，预示着自己最终战胜小人。');
INSERT INTO `tp_dream` VALUES ('47', '梦见明星', '名歌星出现于梦中时，则暗示与朋友有口角之争，人际关系亦将有麻烦产生。要多留意朋友嫉妒、吃醋的心理。');
INSERT INTO `tp_dream` VALUES ('48', '梦见弓箭手', '梦中的弓箭手，是恋爱与婚姻的代表。梦见弓弩手/弓箭手，预示你即将找到生命中的另一半，要好好珍惜。已婚人士梦见弓箭手，预示你的婚姻幸福美满，将与你的伴侣携手走过人生。');
INSERT INTO `tp_dream` VALUES ('49', '梦见孕妇', '预示着梦者所进行的事情非常顺利，而且金钱上会有好的运气。 　　未婚女人梦见孕妇，预示难以出嫁，或出嫁后婚姻会出现问题，如争吵分歧等，让家庭不和。');
INSERT INTO `tp_dream` VALUES ('50', '梦见妓女', '梦见自己是妓女，预示你将因自己表现恶劣，让正直的朋友看不起你。年轻女子梦见妓女，预示她会欺骗她心爱的人，让其相信自己是纯洁的，坦诚的。对于已婚女人，此梦过后，她将开始怀疑丈夫，因此不断地争吵。梦见与妓女相殴，梦主得情助势，门户昌荣气象之兆。技艺之人争长夺色。老者梦此，主有虚症，不祥。梦见与妓女为夫妻，大吉，梦此者夫妻昌吉也。未配者主得技艺美色之妻。如素爱烟花之人，为与妓女合心。梦见与妓女相别，吉，此梦阴事之非远离之象。凡事得理，疾病脱身。其占为浪子回头，花凋蝶散。');
INSERT INTO `tp_dream` VALUES ('51', '梦见已故的祖父母', '梦见已故的祖父带着农具去种地，父亲或家里的其他人会调动工作岗位或搬家。梦见已故的祖父赶着一头母牛来到院里或将牛栓在牛棚，预示即将迎来儿媳、家庭主妇或妻子，或者得到意外的财物。梦见已故的祖父抚摸孙子，在现实中里的孙子会患病。梦见已故的祖父背着孙子或领到屋外，预示近期内孙子会死亡。梦见已故的祖父母欲向自己说什么话，这是预示有事情将发生，需要倍加小心。梦见已故的祖父母再世后准备带着自己外出，这是警告你有可能由于意外的事故或疾病而死亡，又或者面临严重的忧患。');
INSERT INTO `tp_dream` VALUES ('52', '梦见坏人', '梦见坏人预示者你似乎正向往着危险的恋爱。例如想抢夺朋友的男友，或是想和有妇之夫的他度过危险偷情的一夜等等。如果你已有男朋友的话，梦见坏人预示着是否浮动的心正开始萌芽。');
INSERT INTO `tp_dream` VALUES ('53', '梦见犯人', '梦见与犯人交谈，要遭厄运，要提高警惕，避免灾祸。梦见与犯人交朋友，暗示你可能会结交品行不良的朋友，给你造成严重损失。梦见与囚犯吵架，烦恼和灾祸会过去，将要过上称心如意的日子。梦见犯人逃走，病患即将好转。犯人梦见获得大赦或无罪释放，家里的房屋有危险');
INSERT INTO `tp_dream` VALUES ('54', '梦见帅哥', '梦见一帅哥被我打了，这是你潜意识的作用，在现实上，你可能比较在意这样的帅哥，有想接近的冲动，但你把这种冲动压抑在内心深处它，然后在梦中把压抑释放了出来，成一个暴力动作。梦中知道对方是个帅哥，但模模糊糊地看不清样子，好幸福的感觉。代表你的内心深处已经厌倦了你男朋友。哎！解铃还需系铃人，是因为你的男朋友和你太少的接触，所以你会在梦里面梦不到他。你们要是天天都在一起做一些有意义的事。做一些比较开心的事。我想你晚上也能梦到他的。女人若梦见帅哥的话一般意味着以后可能会被人追求或代表着你希望有人来爱你，真诚对待你。');
INSERT INTO `tp_dream` VALUES ('55', '梦见日本人', '梦见日本人，预示能从敌人的魔爪中逃跑出来。未婚者梦见日本人，预兆您的爱情可成功。但双方不可我行我素。待业者梦见日本人，说明您的财运不顺，需待时机。');
INSERT INTO `tp_dream` VALUES ('56', '梦见处女', '梦见处女，预示你的事业将会福星高照。已婚女人梦见自己仍是处女，表示她会对自己曾经做过的某些事情感到羞愧和后悔，但悔过的心并不会给她带来好运。一个年轻女子梦见自己已不再是处女，预示她与男性之间行为的不失检点会损及自己的名誉。男人梦见和一个处女保持不正当关系，预示他不管如何努力也将无法完成原定的某项计划，别人的行为倒会给他带来很多麻烦；或预示他的理想会由于合作缺乏保障而无法实现。');
INSERT INTO `tp_dream` VALUES ('57', '梦见老情人', '很多人都会梦到老情人，(即过去的男女朋友或自己曾爱慕的对象)首先说明你在心中还留有他的位置，不管这个位置是好是坏，至少他还占着一点分量。梦见老情人，表示一些消极的态度，和令你困扰的人际关系。梦见和对方关系很差，代表你的人际关系会转好，还有你和对方的关系有可能以另一种形式出现。梦见和对方关系很好、相处得很开心，是反映了你现在寂寞的心态。梦见和对方结婚，则代表你和他的关系已经划清界线，你是完全决绝的了。已有伴侣的朋友梦见老情人，往往显示梦者对身边伴侣有所不满，而伴侣无意作出迁就。梦者在现实生活中已有异心，但未找到可以取代伴侣的人，因而令脑海产生找寻旧档案的讯息。一些从前曾经爱慕而无结果的爱情，成为暂代品。但这却不足以表示你们即将分手，相反等你醒来好好考虑一下现实情况，会更加珍惜身边人，为对方做出改变。经常梦见老情人，这时就该检讨与爱侣的感情，若让情况持续，梦者一旦在现实生活遇到投缘的异性，多会不能自制，出现三角关系。梦见老情人再次伤害或背叛你，让你在梦中痛不欲生，这或许则是在提醒你，不要在感情上再犯相同的愚蠢错误，小心审视身边伴侣。单身的朋友梦见老情人，或许你真的觉得寂寞了，很想渴望爱情的到来。而在没有具体想象对象的时候，老情人就出现在梦中。这时候你就该好好调整下自己的状态，时刻准备着，抓住任何爱情的机会哦。');
INSERT INTO `tp_dream` VALUES ('58', '梦见第三者', '梦见第三者，吉兆，预示着爱情会很甜蜜。');
INSERT INTO `tp_dream` VALUES ('59', '梦见白马王子', '女人梦见白马王子，说明心里极度缺乏爱的感觉，有滥交的可能性。少女梦见白马王子，即将要交到男朋友，但一定不是自己称心如意或者能过一辈子的那种。未婚女子梦见白马王子，将和男朋友分手，婚姻大事将会无限期拖延。已婚女子梦见白马王子，家庭关系要出现危机，和丈夫将有离婚的危险，有外遇的可能性大于百分之六十。');
INSERT INTO `tp_dream` VALUES ('60', '梦见仇人', '梦见仇人，预示你将取得成就，困难将过去，未来会有好运，值得期待。梦见和仇人交朋友，预示你将结交很多新朋友，帮助你获得成功。梦见和仇人争吵，则预示你会遭受损失。梦见仇人难过，预示你会打赢官司，或是战胜敌手。梦见收到了仇人死亡的消息，预示你会有宽容又忠实可靠的朋友。商人梦见仇人，预示你能打败对手占领市场。商人梦见仇人攻击自己，预示生意上会遇到挫折。女人梦见丈夫的情妇，预示你将赢得丈夫。');
INSERT INTO `tp_dream` VALUES ('61', '梦见美女', '梦见与美貌女子交往，为破财之兆。 　　梦见跟一个陌生的同龄美女长成了好朋友，说明交朋友，希望自己的快乐苦恼能和别人分享和承担，可能现实中缺少这种朋友关系，有什么事情都是自己扛。');
INSERT INTO `tp_dream` VALUES ('62', '梦见喜欢的人', '');
INSERT INTO `tp_dream` VALUES ('63', '梦见外星人', '梦见外星人就在自己眼前，预示你有好运气，可能会有意想不到的收获。梦见外星人可能暗示着生活被某种外来因素所左右，或者对自己所处的环境还不太了解。');
INSERT INTO `tp_dream` VALUES ('64', '梦见毛主席', '梦见毛主席，朋友运好转。与朋友将有顺利的交往；与双亲和兄弟之间的关系也将非常好。梦见和毛主席握手，表示健康良好，将会变得越来越健康。二，三天连续熬夜看手也无所谓，加油吧!未婚的人梦见和毛主席握手，您的恋情性急则不成，耐心则成功。未婚男女梦见毛主席，您的恋情问题会有，但要主动去解决，好运才会来。老人梦见毛主席预示出远门，佳，可获得利益。生意人梦见毛主席，说明您的财运可聚财。求学者梦见和毛主席握手，说明考试成绩一般。病人梦见和毛主席握手，说明这段时间您的运气：外表美观而内在空虚，所以要先充实内在，才有好运气。要提防小人诽谤。');
INSERT INTO `tp_dream` VALUES ('65', '梦见陆军 ', '梦见整齐的陆军队列向你开来或立在原地，暗示你有勇往直前积极进取的精神，并会踏踏实实，稳步追求事业的发展。梦见壮观的陆军队列，或挺拔的陆军战士，有时也可能仅仅表示你对军人阳刚气质的向往，或是过去有过参军的愿望。男人梦见陆军，预示事业要大步向前，稳定发展。女人梦见陆军，预示生活舒适，生活质量稳步提高。');
INSERT INTO `tp_dream` VALUES ('66', '梦见风骚女子', '梦见看到一位风骚的女子，表示你有狡猾的敌人需要你去征服。梦见你杀死一名风骚女子，意味着你的欲望会实现。年轻女性梦见风骚女人，梦到她的行径快要比得上风骚女子的行径了，意味着她需要男人的保护。');
INSERT INTO `tp_dream` VALUES ('67', '梦见久未见面的人', '梦见久未见面的人时，寓意着此人将会很快归来。');
INSERT INTO `tp_dream` VALUES ('68', '梦见工人', '通常来说梦中的男建筑工人，有父亲的意味，充满力量，搭建遮风避雨的房屋。梦见有一个建筑工或维修工修理你的房子，预示你将反思出你生活中的问题，并对它加以解决。梦中的房子象征自我。梦见一个工人在疏通管道，预示你将解决情感积郁的问题。梦见技工，或技工面对着一堆拆零的零件，象征自己面对着生活中一摊乱麻般的局面，并为要理清头绪，解决现状，感到异常苦恼。梦见井下作业的矿工，则有可能暗示你正在探索自己幽暗的内心深处。梦见管道工，则表示你对内心精神或情感的摸索。孕妇梦见管道工，还有可能是妇道医生的形象在梦里的显现。');
INSERT INTO `tp_dream` VALUES ('69', '梦见厨师', '梦见厨师在准备宴会，喜庆的日子将要到来。梦见厨师教你烹调，在金钱方面有暗影出现。 这时很容在路上或公共汽车上遗失钱财，小心不要带太多的钱出门。');
INSERT INTO `tp_dream` VALUES ('70', '梦见陆军', '梦见整齐的陆军队列向你开来或立在原地，暗示你有勇往直前积极进取的精神，并会踏踏实实，稳步追求事业的发展。梦见壮观的陆军队列，或挺拔的陆军战士，有时也可能仅仅表示你对军人阳刚气质的向往，或是过去有过参军的愿望。男人梦见陆军，预示事业要大步向前，稳定发展。女人梦见陆军，预示生活舒适，生活质量稳步提高。');
INSERT INTO `tp_dream` VALUES ('71', '梦见烧香的人', '梦见烧香的人，表示你的感情已经成熟，你的另一半也很优秀，很受到肯定，在不久之后你们就能共结礼堂。');
INSERT INTO `tp_dream` VALUES ('72', '梦见神秘人', '梦中你看见很神秘的人，则意味着你的运气会变好或变坏，而这也要看个人的长相是不是好看或难看，有没有畸形而定。');
INSERT INTO `tp_dream` VALUES ('73', '梦见亿万富豪', '梦见成为亿万富豪，则近日营业将会损失惨重。');
INSERT INTO `tp_dream` VALUES ('74', '梦见跛子', '梦见跛子，在遇到困境时你不会知道求助于朋友。梦见自己成了跛子，会遇到难以克服的困难。梦见爬墙时摔跛了腿，会取得成功。');
INSERT INTO `tp_dream` VALUES ('75', '梦见虐待狂', '虐待狂象征着被误导的生命力，也暗示着清醒状态下的受虐天性。梦见自己变成虐待狂，人际上将出现大的问题，须学会自我反顾。梦见自己被虐待狂虐待，暗示着梦者在现实心里上渴望被虐待。');
INSERT INTO `tp_dream` VALUES ('76', '梦见贵人', '梦见贵人表示你能够出人头地的机会很大，未来有一番作为。梦见领袖，则表示心灵上得到安详;如果梦见领袖在行事，则会受到赏识。一般人梦见自己在贵人面前，表示将会出人头地;但若梦中与贵人为对等地位，则有忧事将至。');
INSERT INTO `tp_dream` VALUES ('77', '梦见窃贼', '梦见窃贼进入梦境，表示梦者经历着个人氛围的损害。产生的原因可能在外部，可是造成了愈来愈大的内心恐惧和困难的感觉。梦见窃贼在搜你的身，你将遇到强劲的竞争对手，在和陌生人交往时要万分小心，否则你将被对手打垮。梦见家或公司被人室盗窃。你在社会上和事业上的名望会受到质疑，但你直面困难的勇气将保护你。此梦后，可能由于疏忽而发生事故。');
INSERT INTO `tp_dream` VALUES ('78', '梦见赤裸的男人', '梦见赤裸的男人，将会感到忧愁和悲伤。梦到男人浑身赤裸，在清清的水中游泳，预示将有许多人爱(羡)慕她；如果水很浑浊，仰慕者将因为嫉妒而恶意造谣。');
INSERT INTO `tp_dream` VALUES ('79', '梦见两性人', '梦见两性人或雌雄同体的生物表示梦者对自己的性别角色存在疑问或者不满意。此外，如果梦者希望对本身有进一步的了解，他就必须努力在自己理性的一面和感性的一面作出平衡，而这种心理状态会在他的梦中以两性人的形式表现出来。梦中出现的两性人表示一种完全的平衡。');
INSERT INTO `tp_dream` VALUES ('80', '梦见嫂子', '经常梦见我嫂子，有可能和植物神经功能紊乱有关。建议注意休息，避免精神紧张，放松心情，药物方面可以给与谷维素片口服治疗。梦见跟嫂子发生关系，亲情缺乏和渴望的表现。梦见怀孕的嫂子遇难，梦中的死亡多与新生有关。你的嫂子和她的宝宝会平安无事，不久之后你将会听到宝宝出世的消息。');
INSERT INTO `tp_dream` VALUES ('81', '梦见工人', '通常来说梦中的男建筑工人，有父亲的意味，充满力量，搭建遮风避雨的房屋。梦见有一个建筑工或维修工修理你的房子，预示你将反思出你生活中的问题，并对它加以解决。梦中的房子象征自我。梦见一个工作在疏通管道，预示你将解决情感积郁的问题。梦见技工，或技工面对着一堆拆零的零件，象征自己面对着生活中一摊乱麻般的局面，并为要理清头绪，解决现状，感到异常苦恼。梦见井下作业的矿工，则有可能暗示你正在探索自己幽暗的内心深处。梦见管道工，则表示你对内心精神或情感的摸索。孕妇梦见管道工，还有可能是妇道医生的形象在梦里的显现。');
INSERT INTO `tp_dream` VALUES ('82', '梦见国王', '国王是统帅全国，为民排忧解难的形象。梦见国王，预示你将有机会面对富贵荣耀，但同时也意味着你会有忧愁烦闷，承担责任，为此你将奋力与现实博斗，并需要保持充足的自信心。梦见自己和国王对话，预示你勇于承担责任，不畏惧矛盾或痛苦，最终必将功成名就。');
INSERT INTO `tp_dream` VALUES ('83', '梦见老太太', '梦见个老太太送小孩给我，非孕妇的梦中可能表过潜意识中想要个孩子的愿望。梦见和老太太结婚，会得到遗产。');
INSERT INTO `tp_dream` VALUES ('84', '梦见皇帝', '梦中的皇帝，按照心理分析的观点，象征父权。通常来说，男人梦见如在电视剧中的情景一般，在金碧辉煌的房间里，看见黄袍加身的皇帝，预示会加官晋爵，发财兴旺。梦见被皇帝召见，对官场中人预示要升官。除此之外，做这个梦还可能预示工作中可能会遇到风波，尤其是要注意涉及大宗财务支出方面的事情。梦见被皇帝责罚，象征家业昌盛，人丁兴旺，子孙满堂。梦见与帝王对话、交谈，则暗示你凭借长辈指点或贵人相助，将走上荣身之路，梦想总有一天能够实现，将来定会功成名就。梦见自己是皇帝，则是在提醒你做事要多听各方面的意见，顾全大局，切忌独断专行。女人梦见皇帝，预示生活幸福，衣食无忧。商人梦见皇帝，预示财源广进，生意兴隆。');
INSERT INTO `tp_dream` VALUES ('85', '梦见陌生男人', '梦见男性老年 似乎会得到从未和他讲过话、意想不到的男孩的青睐。');
INSERT INTO `tp_dream` VALUES ('86', '梦见老伯伯', '梦见一位老伯伯变成小孩子，要小心提防，比你年长的人会陷害你。');
INSERT INTO `tp_dream` VALUES ('87', '梦见小人', '梦见小人，预示身边有人正隐瞒一些对于你很重要的事情，可能会有不顺利的事情发生。也意味着要调动工作，财源会旺盛。女性梦见小人预兆有机会旅行，一路平安，有友相伴。待业者梦见小人主钱财方面：佳，但防投资错误。老人梦见小人则您的运气平平，安守本份，可保平安，否则会招致坏运。');
INSERT INTO `tp_dream` VALUES ('88', '梦见木匠', '梦见木匠，寓意创造奇迹，生活美好。梦见和木匠吵架，是提示你某项预算花销太大，要开源节流。梦见木匠盖新房子，表示你会在政绩、学术或艺术领域等方面取得杰出成绩。梦见自己家请木匠做工，并且木匠手艺高超，做工精致，表示你是个很会享受生活的人，日子安逸舒适。梦见木匠在干木工活，预示你将从事正当诚实的劳动，排斥自私的消遣和娱乐活动，踏踏实实地改变自己的生活。男人梦见木匠，预示不久会收到好消息。女人梦见木匠，会成为精明能干的持家能手。');
INSERT INTO `tp_dream` VALUES ('89', '梦见故人', '梦见故人，孩子要成亲。梦见故人死亡，朋友运下降。因为你的竞争意识太强，所以让别人敬而远之。尤其在考试之后，这种现象特别明显，实在有反省的必要。梦见故人哭，服刑期间会做苦力待业者梦见故人哭主财运：初运佳，但防后运衰退。梦见故人借钱，人际关系方面运气上升的可能性很大。你与亲友的交情将更加深厚，有什么困难，都可以与之商量，对方一定可以替你分忧已婚者梦见故人借钱要出远门，最好不要立刻出发，等待好时机吧!梦见故人被追打，努力拼搏能赚钱。同时，在异性方面也会有所收获。将会有一次新的交际，相逢的地方是朋友家。但这次交往是否会发展成为恋爱，要看以后的进展情况。老人梦见故人则近期运势运程，运气不通，诸事不如意，避免与人发生纠纷，及家庭不和。老人梦见故人被追打则您的运势，万事如意。如果不谦虚，反而骄傲横行，则容易招到祸害。病人梦见故人死亡则近期运程，困难多，万事不如意。有小人加害，须小心谨慎。但不要悲观，要退一步想，以待好运来。未婚的人梦见故人哭预兆您的爱情：成功。待业者梦见故人被追打说明您的财运佳。未婚男女梦见故人被追打解释：最近爱情方面耐心则成功。');
INSERT INTO `tp_dream` VALUES ('90', '梦见小朋友', '梦见一位很可爱、趣致的小朋友，你会收到年终的奖金、双薪。');

-- ----------------------------
-- Table structure for `tp_estate`
-- ----------------------------
DROP TABLE IF EXISTS `tp_estate`;
CREATE TABLE `tp_estate` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `token` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `matchtype` tinyint(11) NOT NULL,
  `cover` varchar(200) NOT NULL,
  `panorama_id` int(11) NOT NULL,
  `classify_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `banner` varchar(200) NOT NULL,
  `house_banner` varchar(200) NOT NULL,
  `place` varchar(11) NOT NULL,
  `lng` varchar(15) NOT NULL,
  `lat` varchar(15) NOT NULL,
  `estate_desc` text NOT NULL,
  `project_brief` text NOT NULL,
  `traffic_desc` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `token_2` (`token`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_estate
-- ----------------------------
INSERT INTO `tp_estate` VALUES ('2', 'knmdyy1390207240', '房产测试', '房产', '0', 'http://demo.ueat.cn/tpl/static/vhouse/pigcms01.jpg', '4', '6', '8', './tpl/static/vhouse/pigcms01.jpg', './tpl/static/vhouse/pigcms32.jpg', '北京', '104.109728', '37.519973', '<span style=\"font-family:微软雅黑;font-size:14px;font-weight:bold;line-height:21px;background-color:#FCFCFC;\">楼盘简介：</span>', '<span style=\"font-family:微软雅黑;font-size:14px;font-weight:bold;line-height:21px;background-color:#FCFCFC;\">项目简介：</span>', '<span style=\"font-family:微软雅黑;font-size:14px;font-weight:bold;line-height:21px;background-color:#FCFCFC;\">交通配套：</span>');

-- ----------------------------
-- Table structure for `tp_estate_album`
-- ----------------------------
DROP TABLE IF EXISTS `tp_estate_album`;
CREATE TABLE `tp_estate_album` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL,
  `poid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_estate_album
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_estate_expert`
-- ----------------------------
DROP TABLE IF EXISTS `tp_estate_expert`;
CREATE TABLE `tp_estate_expert` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `face` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_estate_expert
-- ----------------------------
INSERT INTO `tp_estate_expert` VALUES ('1', '0', '专家点评', '1', '刘德华', '产品经理', '', '专家介绍', '<span style=\"font-family:微软雅黑;font-size:14px;font-weight:bold;line-height:21px;background-color:#FCFCFC;\">点评内容：</span>');

-- ----------------------------
-- Table structure for `tp_estate_housetype`
-- ----------------------------
DROP TABLE IF EXISTS `tp_estate_housetype`;
CREATE TABLE `tp_estate_housetype` (
  `id` int(11) NOT NULL auto_increment,
  `panorama_id` int(10) NOT NULL default '0',
  `son_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `floor_num` varchar(20) NOT NULL,
  `area` varchar(50) NOT NULL,
  `fang` int(11) NOT NULL,
  `ting` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abid` varchar(200) NOT NULL,
  `type1` varchar(200) NOT NULL,
  `type2` varchar(200) NOT NULL,
  `type3` varchar(200) NOT NULL,
  `type4` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_estate_housetype
-- ----------------------------
INSERT INTO `tp_estate_housetype` VALUES ('1', '3', '1', 'knmdyy1390207240', '三居室', '2', '120平方', '6', '4', '1', '户型介绍', '', '', '', '', '');

-- ----------------------------
-- Table structure for `tp_estate_impress`
-- ----------------------------
DROP TABLE IF EXISTS `tp_estate_impress`;
CREATE TABLE `tp_estate_impress` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `is_show` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_estate_impress
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_estate_impress_add`
-- ----------------------------
DROP TABLE IF EXISTS `tp_estate_impress_add`;
CREATE TABLE `tp_estate_impress_add` (
  `id` int(11) NOT NULL auto_increment,
  `imp_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_estate_impress_add
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_estate_son`
-- ----------------------------
DROP TABLE IF EXISTS `tp_estate_son`;
CREATE TABLE `tp_estate_son` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_estate_son
-- ----------------------------
INSERT INTO `tp_estate_son` VALUES ('1', '2', 'knmdyy1390207240', '鲁信长春花园', '1', '鲁信长春花园是青岛市最大的小区');

-- ----------------------------
-- Table structure for `tp_files`
-- ----------------------------
DROP TABLE IF EXISTS `tp_files`;
CREATE TABLE `tp_files` (
  `id` int(10) NOT NULL auto_increment,
  `token` varchar(30) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `size` int(10) NOT NULL default '0',
  `type` varchar(20) NOT NULL default '',
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `type` (`type`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_files
-- ----------------------------
INSERT INTO `tp_files` VALUES ('1', 'qmxpbf1390048289', 'http://demo.ueat.cn/uploads/q/qmxpbf1390048289/1/8/f/3/thumb_52da75f47d147.jpg', '22672', 'jpg', '1390048756');
INSERT INTO `tp_files` VALUES ('2', 'qmxpbf1390048289', 'http://demo.ueat.cn/uploads/q/qmxpbf1390048289/f/1/d/d/thumb_52da760dd2dea.jpg', '133946', 'jpg', '1390048782');
INSERT INTO `tp_files` VALUES ('3', 'qmxpbf1390048289', 'http://demo.ueat.cn/uploads/q/qmxpbf1390048289/7/7/7/6/thumb_52da76743ca71.png', '13047', 'png', '1390048884');
INSERT INTO `tp_files` VALUES ('4', 'qmxpbf1390048289', 'http://demo.ueat.cn/uploads/q/qmxpbf1390048289/9/1/8/2/thumb_52da8c8c092bc.png', '13047', 'png', '1390054540');
INSERT INTO `tp_files` VALUES ('5', 'eurggv1390065711', 'http://demo.ueat.cn/uploads/e/eurggv1390065711/b/d/9/f/thumb_52dab98e1e18a.jpg', '16913', 'jpg', '1390066062');
INSERT INTO `tp_files` VALUES ('6', 'seeebp1390203728', 'http://demo.ueat.cn/uploads/s/seeebp1390203728/1/8/6/d/thumb_52dcd4e088f31.jpg', '99475', 'jpg', '1390204129');
INSERT INTO `tp_files` VALUES ('7', 'seeebp1390203728', 'http://demo.ueat.cn/uploads/s/seeebp1390203728/d/6/3/4/thumb_52dcd4f5d3aa8.jpg', '133946', 'jpg', '1390204150');
INSERT INTO `tp_files` VALUES ('8', 'seeebp1390203728', 'http://demo.ueat.cn/uploads/s/seeebp1390203728/9/1/4/8/thumb_52dcd6c06fe8f.jpg', '22672', 'jpg', '1390204608');
INSERT INTO `tp_files` VALUES ('9', 'knmdyy1390207240', 'http://demo.ueat.cn/uploads/k/knmdyy1390207240/3/e/2/a/thumb_52dce352f18ee.jpg', '22672', 'jpg', '1390207827');
INSERT INTO `tp_files` VALUES ('10', 'knmdyy1390207240', 'http://demo.ueat.cn/uploads/k/knmdyy1390207240/2/6/b/7/thumb_52dce36409b60.jpg', '133946', 'jpg', '1390207844');
INSERT INTO `tp_files` VALUES ('11', 'knmdyy1390207240', 'http://demo.ueat.cn/uploads/k/knmdyy1390207240/3/e/1/7/thumb_52dce7f5a6168.jpg', '40746', 'jpg', '1390209014');
INSERT INTO `tp_files` VALUES ('12', 'jgoken1390204555', 'http://demo.ueat.cn/uploads/j/jgoken1390204555/5/2/7/c/thumb_52ddd4208132c.jpg', '49765', 'jpg', '1390269472');
INSERT INTO `tp_files` VALUES ('13', 'jgoken1390204555', 'http://demo.ueat.cn/uploads/j/jgoken1390204555/5/5/6/e/thumb_52df30d5c3c96.jpg', '389464', 'jpg', '1390358742');
INSERT INTO `tp_files` VALUES ('14', 'mtlymo1390370507', 'http://demo.ueat.cn/uploads/m/mtlymo1390370507/6/a/0/9/thumb_52df6290248ae.jpg', '50394', 'jpg', '1390371472');

-- ----------------------------
-- Table structure for `tp_flash`
-- ----------------------------
DROP TABLE IF EXISTS `tp_flash`;
CREATE TABLE `tp_flash` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `info` varchar(90) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_flash
-- ----------------------------
INSERT INTO `tp_flash` VALUES ('1', 'eurggv1390065711', 'http://demo.ueat.cn/uploads/e/eurggv1390065711/b/d/9/f/thumb_52dab98e1e18a.jpg', '', '112122');
INSERT INTO `tp_flash` VALUES ('2', 'seeebp1390203728', 'http://demo.ueat.cn/uploads/s/seeebp1390203728/1/8/6/d/thumb_52dcd4e088f31.jpg', '', '同盟科技微官网');
INSERT INTO `tp_flash` VALUES ('3', 'knmdyy1390207240', 'http://demo.ueat.cn/uploads/k/knmdyy1390207240/3/e/1/7/thumb_52dce7f5a6168.jpg', '', '111');
INSERT INTO `tp_flash` VALUES ('4', 'usyhhb1392205269', 'http://www.apiying.com/data/ArticleImg/image/20140222/53088b4631b77.jpg', '', '公司总部位于青海青年创业园');
INSERT INTO `tp_flash` VALUES ('5', 'usyhhb1392205269', 'http://www.apiying.com/data/ArticleImg/image/20140222/53088b7842e91.jpg', '', '');
INSERT INTO `tp_flash` VALUES ('6', 'rzakjq1393673210', '', '', 'a');
INSERT INTO `tp_flash` VALUES ('7', 'rzakjq1393673210', '', '', 'b');
INSERT INTO `tp_flash` VALUES ('8', 'rzakjq1393673210', '', '', 'c');
INSERT INTO `tp_flash` VALUES ('12', 'btmdkz1392007679', 'http://www.apiying.com/data/ArticleImg/image/20140302/53129f889d329.jpg', '', '');
INSERT INTO `tp_flash` VALUES ('11', 'btmdkz1392007679', 'http://www.apiying.com/data/ArticleImg/image/20140302/53129f75284cf.jpg', '', '');
INSERT INTO `tp_flash` VALUES ('14', 'zpbqjb1391609865', 'http://www.apiying.com/data/ArticleImg/image/20140322/532d9af95238e.png', '', '上百种微信营销行业解决方案应有尽有');
INSERT INTO `tp_flash` VALUES ('15', 'zpbqjb1391609865', 'http://www.apiying.com/data/ArticleImg/image/20140322/532d9bc0a2141.png', '', '只要点点鼠标,就可以打造个性的微信网站');
INSERT INTO `tp_flash` VALUES ('16', 'bjjxjc1395216010', 'http://www.apiying.com/data/ArticleImg/image/20140319/532980e438b85.gif', 'http://www.esri.com/', '公司简介');
INSERT INTO `tp_flash` VALUES ('17', 'bjjxjc1395216010', 'http://www.apiying.com/data/ArticleImg/image/20140319/53295a15b2e08.jpg', '', '产品');
INSERT INTO `tp_flash` VALUES ('18', 'bjjxjc1395216010', 'http://www.apiying.com/data/ArticleImg/image/20140319/53298117449fa.png', '', '产品');
INSERT INTO `tp_flash` VALUES ('19', 'qdxqhj1395665354', 'http://bbs.hepunz.com/attachment/Mon_1403/6_3475_c783c490c639c9f.jpg?140', 'http://bbs.hepunz.com/read.php?tid=9228', '美丽三亚 浪漫天涯');
INSERT INTO `tp_flash` VALUES ('20', 'qdxqhj1395665354', 'http://bbs.hepunz.com/attachment/Mon_1403/2_6958_8b858c0eef75479.jpg?191', 'http://bbs.hepunz.com/read.php?tid=9314', '内东环路建设喜获进展，征地拆迁扫除最后障碍');
INSERT INTO `tp_flash` VALUES ('25', 'wgsiap1395669220', 'http://www.apiying.com/data/ArticleImg/image/20140326/53326035266e5.jpg', '', '');
INSERT INTO `tp_flash` VALUES ('22', 'wgsiap1395669220', 'http://www.apiying.com/data/ArticleImg/image/20140325/53310f47b5cc3.png', 'http://www.apiying.com/data/ArticleImg/image/20140325/53310f47b5cc3.png', '');
INSERT INTO `tp_flash` VALUES ('26', 'gfqlqk1395814571', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332761dd8b4c.jpg', '', '');
INSERT INTO `tp_flash` VALUES ('24', 'wgsiap1395669220', 'http://www.apiying.com/data/ArticleImg/image/20140326/53325f9db4fa7.jpg', '', '');
INSERT INTO `tp_flash` VALUES ('27', 'gfqlqk1395814571', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332764086f58.jpg', '', '');
INSERT INTO `tp_flash` VALUES ('28', 'gfqlqk1395814571', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332778144bec.jpg', '', '');
INSERT INTO `tp_flash` VALUES ('29', 'wdkszz1395625484', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332d6460bd42.jpg', '', '');
INSERT INTO `tp_flash` VALUES ('30', 'wdkszz1395625484', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332d6bb0cf98.jpg', '', '');
INSERT INTO `tp_flash` VALUES ('31', 'wdkszz1395625484', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332d70121db7.jpg', '', '');
INSERT INTO `tp_flash` VALUES ('32', 'msowdl1393998402', 'http://www.apiying.com/data/ArticleImg/image/20140331/5338ec5226313.jpg', '', '楊<伙计>餐饮连锁');

-- ----------------------------
-- Table structure for `tp_follow`
-- ----------------------------
DROP TABLE IF EXISTS `tp_follow`;
CREATE TABLE `tp_follow` (
  `id` int(11) NOT NULL auto_increment,
  `follow_form_id` varchar(100) NOT NULL,
  `follow_to_id` varchar(100) NOT NULL,
  `follow_time` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_follow
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_function`
-- ----------------------------
DROP TABLE IF EXISTS `tp_function`;
CREATE TABLE `tp_function` (
  `id` int(11) NOT NULL auto_increment,
  `gid` tinyint(3) NOT NULL,
  `usenum` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `funname` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `isserve` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_function
-- ----------------------------
INSERT INTO `tp_function` VALUES ('1', '1', '0', '天气查询', 'tianqi', '天气查询服务:例  城市名+天气', '1', '1');
INSERT INTO `tp_function` VALUES ('2', '1', '0', '糗事', 'qiushi', '糗事　直接发送糗事', '1', '1');
INSERT INTO `tp_function` VALUES ('3', '1', '0', '计算器', 'jishuan', '计算器使用方法　例：计算50-50　，计算100*100', '1', '1');
INSERT INTO `tp_function` VALUES ('4', '4', '0', '朗读', 'langdu', '朗读＋关键词　例：朗读多用户营销系统', '1', '1');
INSERT INTO `tp_function` VALUES ('5', '1', '0', '健康指数查询', 'jiankang', '健康指数查询　健康＋高，＋重　例：健康170,65', '1', '1');
INSERT INTO `tp_function` VALUES ('6', '1', '0', '快递查询', 'kuaidi', '快递＋快递名＋快递号　例：快递顺丰117215889174', '1', '1');
INSERT INTO `tp_function` VALUES ('7', '1', '0', '笑话', 'xiaohua', '笑话　直接发送笑话', '1', '1');
INSERT INTO `tp_function` VALUES ('9', '1', '0', '陪聊', 'peiliao', '聊天　直接输入聊天关键词即可', '1', '1');
INSERT INTO `tp_function` VALUES ('10', '1', '0', '聊天', 'liaotian', '聊天　直接输入聊天关键词即可', '1', '1');
INSERT INTO `tp_function` VALUES ('11', '3', '0', '周公解梦', 'mengjian', '周公解梦　梦见+关键词　例如:梦见父母', '1', '1');
INSERT INTO `tp_function` VALUES ('12', '2', '0', '语音翻译', 'yuyinfanyi', '翻译＋关键词 例：翻译你好', '1', '1');
INSERT INTO `tp_function` VALUES ('13', '2', '0', '火车查询', 'huoche', '火车查询　火车＋城市＋目的地　例火车上海南京', '1', '1');
INSERT INTO `tp_function` VALUES ('14', '2', '0', '公交查询', 'gongjiao', '公交＋城市＋公交编号　例：上海公交774', '1', '1');
INSERT INTO `tp_function` VALUES ('15', '2', '0', '身份证查询', 'shenfenzheng', '身份证＋号码　　例：身份证342423198803015568', '1', '1');
INSERT INTO `tp_function` VALUES ('16', '1', '0', '手机归属地查询', 'shouji', '手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13917778912', '1', '1');
INSERT INTO `tp_function` VALUES ('17', '3', '0', '音乐查询', 'yinle', '音乐＋音乐名  例：音乐爱你一万年', '1', '1');
INSERT INTO `tp_function` VALUES ('18', '1', '0', '附近周边信息查询', 'fujin', '附近周边信息查询(ＬＢＳ）', '1', '1');
INSERT INTO `tp_function` VALUES ('19', '4', '0', '幸运大转盘', 'choujiang', '输入抽奖　即可参加幸运大转盘抽奖活动', '2', '1');
INSERT INTO `tp_function` VALUES ('20', '3', '0', '淘宝店铺', 'taobao', '输入淘宝＋关键词　即可访问淘宝3g手机店铺', '2', '1');
INSERT INTO `tp_function` VALUES ('21', '4', '0', '会员资料管理', 'userinfo', '会员资料管理　输入会员　即可参与', '2', '1');
INSERT INTO `tp_function` VALUES ('22', '1', '0', '翻译', 'fanyi', '翻译＋关键词 例：翻译你好', '1', '1');
INSERT INTO `tp_function` VALUES ('23', '4', '0', '第三方接口', 'api', '第三方接口整合模块，请在管理平台下载接口文件并配置接口信息，', '1', '1');
INSERT INTO `tp_function` VALUES ('24', '1', '0', '姓名算命', 'suanming', '姓名算命 算命＋关键词　例：算命李白', '1', '1');
INSERT INTO `tp_function` VALUES ('25', '3', '0', '百度百科', 'baike', '百度百科　使用方法：百科＋关键词　例：百科北京', '2', '1');
INSERT INTO `tp_function` VALUES ('26', '2', '0', '彩票查询', 'caipiao', '回复内容:彩票+彩种即可查询彩票中奖信息,例：彩票双色球', '1', '1');
INSERT INTO `tp_function` VALUES ('27', '4', '0', '抽奖', 'choujiang', '抽奖,输入抽奖即可参加幸运大转盘', '1', '1');
INSERT INTO `tp_function` VALUES ('28', '4', '0', '刮刮卡', 'gua2', '刮刮卡抽奖活动', '1', '1');
INSERT INTO `tp_function` VALUES ('29', '1', '0', '3G首页', 'shouye', '输入首页,访问微3g 网站', '1', '1');
INSERT INTO `tp_function` VALUES ('30', '1', '0', 'DIY宣传页', 'adma', 'DIY宣传页,用于创建二维码宣传页权限开启', '1', '1');
INSERT INTO `tp_function` VALUES ('31', '4', '0', '会员卡', 'huiyuanka', '尊贵享受vip会员卡,回复会员卡即可领取会员卡', '1', '1');
INSERT INTO `tp_function` VALUES ('32', '4', '0', '优惠券', 'coupon', '尊贵享受优惠券,回复优惠券即可领取会员卡', '1', '1');
INSERT INTO `tp_function` VALUES ('33', '4', '0', '官网帐号审核', 'shenhe', '官网帐号审核', '1', '1');
INSERT INTO `tp_function` VALUES ('34', '1', '0', '歌词查询', 'geci', '歌词查询 回复歌词＋歌名即可查询一首歌曲的歌词,例：歌词醉清风', '1', '1');
INSERT INTO `tp_function` VALUES ('35', '2', '0', '域名whois查询', 'yuming', '域名whois查询　回复域名＋域名 可查询网站备案信息,域名whois注册时间等等\r\n 例：域名aiaideli.com', '1', '1');
INSERT INTO `tp_function` VALUES ('36', '4', '0', '通用预订系统', 'host_kev', '通用预订系统 可用于酒店预订，ktv订房，旅游预订等。', '2', '1');
INSERT INTO `tp_function` VALUES ('37', '4', '0', '留言', 'liuyan', '留言', '2', '1');
INSERT INTO `tp_function` VALUES ('38', '4', '0', '自定义表单', 'diyform', '自定义表单(用于报名，预约,留言)等', '1', '1');
INSERT INTO `tp_function` VALUES ('39', '2', '0', '无线网络订餐', 'dx', '无线网络订餐', '1', '1');
INSERT INTO `tp_function` VALUES ('40', '2', '0', '在线商城', 'shop', '在线商城,购买系统', '1', '1');
INSERT INTO `tp_function` VALUES ('41', '2', '0', '在线团购系统', 'etuan', '在线团购系统', '1', '1');
INSERT INTO `tp_function` VALUES ('42', '4', '0', '自定义菜单', 'diymen_set', '自定义菜单,一键生成轻app', '1', '1');
INSERT INTO `tp_function` VALUES ('43', '4', '0', '360全景', 'Panorama', '360全景', '2', '1');
INSERT INTO `tp_function` VALUES ('44', '4', '0', '微喜帖', 'Xitie', '添加关键词，回复，触发此功能', '2', '1');
INSERT INTO `tp_function` VALUES ('45', '4', '0', '砸金蛋', 'zadan', '砸金蛋，很火的营销工具', '2', '1');
INSERT INTO `tp_function` VALUES ('46', '4', '0', '微调研', 'weidiaoyan', '微调研，设置调查表等调研功能', '1', '1');

-- ----------------------------
-- Table structure for `tp_home`
-- ----------------------------
DROP TABLE IF EXISTS `tp_home`;
CREATE TABLE `tp_home` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL,
  `picurl` varchar(255) NOT NULL,
  `homeurl` varchar(255) NOT NULL default '',
  `info` varchar(120) NOT NULL,
  `plugmenucolor` varchar(10) NOT NULL default '',
  `copyright` varchar(200) NOT NULL default '',
  `advancetpl` tinyint(1) NOT NULL default '0',
  `apiurl` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_home
-- ----------------------------
INSERT INTO `tp_home` VALUES ('1', 'qmxpbf1390048289', '微网站演示', 'http://demo.ueat.cn/uploads/q/qmxpbf1390048289/1/8/f/3/thumb_52da75f47d147.jpg', 'http://demo.ueat.cn/uploads/q/qmxpbf1390048289/f/1/d/d/thumb_52da760dd2dea.jpg', '微网站演示', '', '', '0', '');
INSERT INTO `tp_home` VALUES ('2', 'eurggv1390065711', '微站', 'http://demo.ueat.cn/uploads/e/eurggv1390065711/b/d/9/f/thumb_52dab98e1e18a.jpg', 'http://demo.ueat.cn/uploads/e/eurggv1390065711/b/d/9/f/thumb_52dab98e1e18a.jpg', '欢迎进入', '#FF0000', '', '0', '');
INSERT INTO `tp_home` VALUES ('3', 'seeebp1390203728', '欢迎您试用同盟科技微官网', 'http://demo.ueat.cn/uploads/s/seeebp1390203728/1/8/6/d/thumb_52dcd4e088f31.jpg', 'http://demo.ueat.cn/uploads/s/seeebp1390203728/d/6/3/4/thumb_52dcd4f5d3aa8.jpg', '本程序仅售60元，欢迎测试哦！', '#62AD00', '', '0', '');
INSERT INTO `tp_home` VALUES ('4', 'knmdyy1390207240', '欢迎您试用同盟科技微官网', 'http://demo.ueat.cn/uploads/k/knmdyy1390207240/3/e/2/a/thumb_52dce352f18ee.jpg', 'http://demo.ueat.cn/uploads/k/knmdyy1390207240/2/6/b/7/thumb_52dce36409b60.jpg', '同盟科技微信系统', '#FF0000', '', '0', '');
INSERT INTO `tp_home` VALUES ('5', 'jgoken1390204555', '21221', '1231321', 'http://demo.ueat.cn/Uploads/image/20140123/52e0e37341b46.jpg', '122132', '#FF0000', '', '0', '');
INSERT INTO `tp_home` VALUES ('6', 'mtlymo1390370507', '首页', 'http://demo.ueat.cn/uploads/m/mtlymo1390370507/6/a/0/9/thumb_52df6290248ae.jpg', '', '不变', '', '', '0', '');
INSERT INTO `tp_home` VALUES ('7', 'zpbqjb1391609865', '微信商家营销管理系统（phoengap中文网）旗下网站', 'http://www.apiying.com/data/ArticleImg/image/20140322/532d925ab2eb2.jpg', '', '微信商家营销管理系统（apiying.com）是一款免费的中小企业微信营销商家管理系统，您只要简单的配置就可以完成 自定义回复，微信网站，微信房产，微信商城，微信团购，微信优惠券，微信订餐，微信营销等复杂的功能。', '', '', '0', '');
INSERT INTO `tp_home` VALUES ('8', 'usyhhb1392205269', '西宁启鸿信息技术有限公司官网', 'http://www.apiying.com/data/ArticleImg/image/20140222/530888f2db83c.jpg', '', '西宁启鸿信息技术有限公司是一家从事微信营销、开发、推广、运营，网站建设的互联网型公司。\r\n    联系人：刘兆云  13997137252\r\n    电话：0971-4322069 4322070', '#143BFF', '', '0', '');
INSERT INTO `tp_home` VALUES ('9', 'btmdkz1392007679', '启鸿校园生活平台微官网', 'http://www.apiying.com/data/ArticleImg/image/20140302/5312ad75361b6.jpg', '', '启鸿校园生活，属于于西宁启鸿信息技术有限公司。立足青海大学校园、服务青海大学校园生活，提供电话号码、资格考试、招聘信息、等级考试等各类公众信息查询服务。', '', '', '0', '');
INSERT INTO `tp_home` VALUES ('10', 'rzakjq1393673210', '首页', 'http://t3.qpic.cn/mblogpic/cc5e7679aca2917f2d58/460', 'http://t2.qpic.cn/mblogpic/9139086326ecfb9392fa/460', '点击进入 王小贱“贱”人馆 微网首页', '#B30000', '© 2001-2013 王小贱 版权所有', '0', '');
INSERT INTO `tp_home` VALUES ('11', 'bebwmx1393770649', '欢迎关注米图工作室', 'http://www.apiying.com/data/ArticleImg/image/20140302/53134216aaddc.jpeg', '', '欢迎关注米图工作室', '#FF0000', '© 2001-2013 米图设计 版权所有', '0', '');
INSERT INTO `tp_home` VALUES ('12', 'kkxebf1393860973', '青海名土特产官方微网站', 'http://www.apiying.com/data/ArticleImg/image/20140303/5314a3590e05b.jpg', '', '青海名土特产官方微网站', '', '', '0', '');
INSERT INTO `tp_home` VALUES ('13', 'ymivkz1394500574', '首页', 'http://www.apiying.com/data/ArticleImg/image/20140311/531e67bcd5e1b.jpg', 'http://www.apiying.com/data/ArticleImg/image/20140311/531e8a9a7e4f4.jpg', 'mo-玫瑰您好，这里是阜阳华联集团微信公众平台。\r\n阜阳华联集团成立于1996年，发展至今已成为安徽省最具规模和影响力的连锁企业。回复以下数字： 1：最新特惠商品信息；\r\n2：最新阜阳华联资讯；\r\n3：阜阳华联特惠活动。想了解更多信息，请点', '', '', '0', '');
INSERT INTO `tp_home` VALUES ('14', 'algrak1394810875', '1', 'http://www.apiying.com/data/ArticleImg/image/20140314/5323262ae964e.png', 'http://www.apiying.com/data/ArticleImg/image/20140314/53232595a9aeb.jpg', '微视界，整装待发！', '', '', '0', '');
INSERT INTO `tp_home` VALUES ('15', 'bjjxjc1395216010', 'esri研发中心欢迎您', 'http://www.apiying.com/data/ArticleImg/image/20140319/532952a8dfd1c.jpg', '', 'esri是全球顶尖的gis平台软件及服务提供商，同时也是世界第五大私营计算机软件公司。esri在中国的研发中心位于北京，隶属于esri美国总部软件研发部，是在美国本土之外成立的第一个研发中心，也是全球gis厂商中首个在中国成立的研发中心。', '', '', '0', '');
INSERT INTO `tp_home` VALUES ('16', 'qdxqhj1395665354', '南珠网', 'http://www.apiying.com/data/ArticleImg/image/20140324/5330322217839.jpg', 'http://www.apiying.com/data/ArticleImg/image/20140324/533030e89bb46.png', '欢迎来到南珠网，美丽珠乡，我的家园，上南珠网就够了！', '#FF0000', '', '0', '');
INSERT INTO `tp_home` VALUES ('17', 'wgsiap1395669220', '新长城青海大学自强社首页', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332606e53687.jpg', '', '新长城青海大学自强社是青海大学校内影响大、实力强，在校具有500人左右的大型学生社团，包括公益事业、勤工助学项目及校内外信息推送的大型平台。', '', '', '0', '');
INSERT INTO `tp_home` VALUES ('18', 'gfqlqk1395814571', '逸山伍自转小火锅官网首页', 'http://www.apiying.com/data/ArticleImg/image/20140326/533279d7961bb.jpg', '', '追求时尚、传承经典、多元交融、尽善尽美。把最新鲜、最健康、最创意的美食奉献给顾客。\r\n    倾力打造回转小火锅新形象，做中国时尚小火锅第一品牌，弘扬中华餐饮文化，打造中国时尚小火锅顶级品牌，让中国时尚小火锅走向世界。', '#FF0000', '', '0', '');
INSERT INTO `tp_home` VALUES ('19', 'wdkszz1395625484', '新标门窗衣柜定制专家微官网', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332d774ba131.jpg', '', '广州市新标家居有限公司（原新标门业）于1999年在经济发达的中国广州成立。历经十余载的发展，新标在广州建立起了占地面积50000㎡的现代化的时尚定制家居生产基地，率先引进了先进的科研技术、进口先进的生产设备以及现代化经营理念和国际化的检验标', '#FF0000', '', '0', '');
INSERT INTO `tp_home` VALUES ('20', 'msowdl1393998402', '微网', 'http://www.apiying.com/data/ArticleImg/image/20140331/5338d21e48181.jpg', 'http://www.apiying.com/data/ArticleImg/image/20140331/5338df95515e1.jpg', '湖南杨伙计餐饮连锁有限公司成立于2004年，前身为“杨伙计烤全羊”。公司成立初期，规模较小,，通过八年的打拼，杨伙计成为岳阳城里最著名的特色专店。', '#26C5FF', '© 2001-2014 湖南杨伙计餐饮 版权所有', '0', '');

-- ----------------------------
-- Table structure for `tp_home_background`
-- ----------------------------
DROP TABLE IF EXISTS `tp_home_background`;
CREATE TABLE `tp_home_background` (
  `id` int(10) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL default '',
  `picurl` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `taxis` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_home_background
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_host`
-- ----------------------------
DROP TABLE IF EXISTS `tp_host`;
CREATE TABLE `tp_host` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `tel2` varchar(13) NOT NULL,
  `ppicurl` varchar(250) NOT NULL,
  `headpic` varchar(250) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `picurl` varchar(255) NOT NULL,
  `url` varchar(50) NOT NULL,
  `info` text NOT NULL,
  `info2` text NOT NULL,
  `creattime` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_host
-- ----------------------------
INSERT INTO `tp_host` VALUES ('1', 'sbhydc1392964286', '商家', '顺心便利小店', '', '18754132531', '18754132531', 'http://www.apiying.com/data/ArticleImg/image/20140221/5307155423866.jpg', './tpl/User/default/common/images/cart_info/online.jpg', '顺心便利小店，点击看本店信息', '0', 'http://www.apiying.com/data/ArticleImg/image/20140221/5307155423866.jpg', './tpl/User/default/common/images/cart_info/online.', '本小店会将商品配送到家哦~~~', '订单满30元起送（外送费2元），50元以上免费送货', '1392973284');
INSERT INTO `tp_host` VALUES ('2', 'zpbqjb1391609865', '订单', '北京海天有限公司', '', '152000000', '154000000', 'http://www.apiying.com/data/ArticleImg/image/20140316/53258af228b23.jpg', './tpl/User/default/common/images/cart_info/online.jpg', '', '0', '', '', '北京海天有限公司', '北京海天有限公司', '1394969340');

-- ----------------------------
-- Table structure for `tp_host_list_add`
-- ----------------------------
DROP TABLE IF EXISTS `tp_host_list_add`;
CREATE TABLE `tp_host_list_add` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `hid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `typeinfo` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `yhprice` decimal(10,2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picurl` varchar(255) NOT NULL,
  `url` varchar(100) NOT NULL,
  `info` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_host_list_add
-- ----------------------------
INSERT INTO `tp_host_list_add` VALUES ('1', '2', 'zpbqjb1391609865', '标准房', '大床', '200.00', '100.00', '', '', '', '床  洗衣机');

-- ----------------------------
-- Table structure for `tp_host_order`
-- ----------------------------
DROP TABLE IF EXISTS `tp_host_order`;
CREATE TABLE `tp_host_order` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `book_people` varchar(50) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `check_in` int(11) NOT NULL,
  `check_out` int(11) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `book_time` int(11) NOT NULL,
  `book_num` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL COMMENT ' ',
  `order_status` int(11) NOT NULL COMMENT ' ',
  `hid` int(11) NOT NULL,
  `remarks` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_host_order
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_img`
-- ----------------------------
DROP TABLE IF EXISTS `tp_img`;
CREATE TABLE `tp_img` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `type` varchar(1) NOT NULL COMMENT '关键词匹配类型',
  `text` text NOT NULL COMMENT '简介',
  `classid` int(11) NOT NULL,
  `classname` varchar(60) NOT NULL,
  `pic` char(255) NOT NULL COMMENT '封面图片',
  `showpic` varchar(1) NOT NULL COMMENT '图片是否显示封面',
  `info` text NOT NULL COMMENT '图文详细内容',
  `url` char(255) NOT NULL COMMENT '图文外链地址',
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  `title` varchar(60) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `classid` (`classid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_img
-- ----------------------------
INSERT INTO `tp_img` VALUES ('34', '6', 'htzhanglong', '营销', '2', '微信无疑是当下移动互联网领域最火的应用，没有之一。关于微信营销也一直是众多砖家热衷讨论的话题，而 微信营销培训 市场更是异常火爆，各种砖家、各种大师、各路大牛纷纷为你传授微信营销的实战案例。', '38', '微信营销', 'http://www.apiying.com/data/ArticleImg/image/20140322/532d9d474a9b2.jpg', '1', '<p>\r\n	<span style=\"font-size:14px;\">微信无疑是当下移动互联网领域最火的应用，没有之一。关于微信营销也一直是众多砖家热衷讨论的话题，而</span><a target=\"_blank\" href=\"http://www.kuqin.com/shuoit/20130905/335011.html\"><span style=\"font-size:14px;\">微信营销培训</span></a><span style=\"font-size:14px;\">市\r\n场更是异常火爆，各种砖家、各种大师、各路大牛纷纷为你传授微信营销的“实战案例”。说实话，我一直不明白移动互联网是新生事物，关于移动互联网营销方式\r\n各大互联网巨头都在苦苦探索，微信更是这个新生事物里的新生儿，怎么那么快就有这么多砖家来分享“实战案例”，这么快就有了那么多惊人的营销技巧?</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">上周在i黑马看到的一篇关于揭秘微信营销的背后忽悠手段的文章《微信营销“大师们”的忽悠经!》，觉得挺不错的。作为互联网从业人员，炒作向来都是\r\n不可避免的，但对于这类忽悠、盲目崇拜，与王林大师的宣传忽悠有何区别?在这个大数据时代下的我们，一个讲求以数据说话的时代，真的应该破除迷信和盲目跟\r\n风。一起来欣赏大作：</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">【导读】一个美睫师通过微信朋友圈做到月流水二三十万?这是前几天网上广为流传的一个信息，而一波又一波的微信营销’大师们’将微信营销’吹’的神乎其神，动辄成千上万的培训费用，天花乱坠的演讲。作者@黄嘉榔 为你剖析暴富神话背后不为人知的忽悠经。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">营销领域不知何时刮起一股微信朋友圈营销的风波，各路的人马都出来阐述自己的观点(包括本人)，那么微信朋友圈营销价值如何?是否如成功案例一样触\r\n手可及，还是一场泡沫。微信朋友圈到底是什么人的朋友圈?是社交人群or“大师们”or企业们;微信朋友圈营销到底真正的面目是如何，本文将为您解密，微\r\n信朋友圈营销“大师们”的营销。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">前几天一个微信朋友圈月流水二三十万的美睫师Nancy的案例，一下子激起一大批围在微信中的人群，开始各种的尝试微信朋友圈营销是否如案例般那么\r\n厉害，而顺应的各种培训也落地。微信的培训课程有些高达几千，前段时间揭露的微信培训行业里面的弯弯曲曲，让很多人都明白了其中暴富背后不为人知的忽悠\r\n经。这种事情很正常，在微博时代过来的人都清楚当时微博培训又是多么的鼎盛，而微信似乎又在重复其中的路子，是否有效果?本人可以肯定的说有;那么是否有\r\n想象的效果，本人肯定的说不能;是否能够救活我的企业，是否能够促进我企业周转，我质疑的说：难。个体的成功不能抹杀大众成功的可能，而也不能把它强加于\r\n大众身上，否则必然重走微博的路子，而这腾讯是不会允许，所以从这种方向上面腾讯会严格把关，微信营销是一时的营销，是昙花一现，当然如果定位不同，也可\r\n以说为一种营销的话，那就不是昙花一现而是长久存在，并且是腾讯无限欢迎与坚持的。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">一群微信营销的“大师们”被揭露了，而一群微信朋友圈的“大师们”也露头，前者被曝光以及被质疑源于微信的最新版本导致了所谓的微信营销开始变成一\r\n堆无用的东西，而衍生出来的微信朋友圈营销有顺应落地接替微信公众平台的路子了，至今本人也觉得有点不可思议，微信朋友圈营销就是为了取代公众帐号营销的\r\n泡沫，而这又造成一个泡沫，本人也只能说，微信朋友圈营销，其实就是“大师们”的营销的产物，一个泡沫，一个在不久将会无用的泡沫。为什么这么说，我们从\r\n三个角度来分析吧：平台所有者、用户、大师们。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">平台所有者：腾讯</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">微信是腾讯的一个产物，所以整个平台都是腾讯说了算，但是有很多人也会认为微信会跟微博一样，会妥协，会认同，那么这样子的观点会害了你，首先腾讯\r\n很少会从用户着想，提升用户体验，根本的目的也是为了赚钱;二是微信跟微博不同，微博是媒体属性强的社交平台，而微信则不是，用比喻来说的话，微博相当于\r\n以前风光无限的央视，而微信就像以前地方电视台，一个是影响全国的频道，一个是地方频道，你说想要将一个信息发布到地方频道要影响全国的话，需要多少的努\r\n力以及发酵还有合作啊，所以微博与微信亦然，对于平台者而言，前者很难改变，而后者则轻而易举，看看最近微信的风波、微信各种的改动，他们会听取我们的意\r\n见吗?会听从营销者的意见吗?答案很明显。第三、微信明确了打击营销份子，那么在每一种曝光的方法以及手段后，必然会造成腾讯无情的封杀，而对于很多人而\r\n言，是一笔很大的损失，所以如果有把握最快最短的时间赚到想要的话，那可以快速的做，如果是要等时间发酵的话，那么还是一边做，一边观摩，不要把命都放上\r\n去了，这也是作者我身为一个网络营销人士的建议。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">微信朋友圈营销未知危险巨大，没有承担后果的能力就不要轻信所谓的忽悠;而且对于参加的培训的人而言，如果你当时有想法，那么你等几天，看看你的想法是否还在，如果在那么就做，不然你就是被所谓的成功学、所谓的培训环境给催眠了，切记切记，记住微博培训是怎么过来的。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">用户：核心</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">平台的核心是用户，那么对于用户而言，其实无论你是做营销还是不做营销，其实就是一个删除好友的动作而言，本人就没有放大用户抱怨或者怎么样怎么样\r\n的，你说用户只是平台的使用者，现在还能离开微信吗?如果不能，那么用户除了抱怨，以及删除外，还能有什么动作吗?好好考虑这个问题。那么营销者泛滥的朋\r\n友圈，到头来反而会成为用户筛选真正朋友的时候，如果一位朋友被植入你是做广告的想法那么以后对你的关注就会更少，甚至会影响这段友谊，不要看所谓的微信\r\n朋友圈案例，他们要么是用小号做，那样就不会有信任危机;要么就是微信本身就是用来加用户的，所以对于真正的朋友也不会有什么信任危机，前者是不知道，后\r\n者是不再里面，所以要想做，就仔细考虑清楚，就像本人现在很讨厌微信朋友圈里面的心灵鸡汤，今天才删了两个好友，以前一直不舍得，忍耐期限到了，就无情可\r\n言了。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">大师们：朋友圈营销的创始人</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">一群大师做起了朋友圈营销的生意，无疑是很新奇很有趣，但是背后折射出的问题，为什么就没有给很多从黑暗微博培训时代过来的人以及了解过的人一个提\r\n醒了，一群大师们都是披着很亮丽的服装而已，剥开它其实就是普通的衣服。朋友圈营销功能是有，但是不会有现在所吹捧的那么厉害，这点我是承认，反向思维思\r\n考下，为什么微信朋友圈营销是大师们的杰作了，有下面几点：</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">(一)实战经验 暴富手段</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">相信很多人都知道要说什么最赚钱，在互联网里面无疑是培训，一个培训就是一个有无效果的一种手段，微博时代如此，微信时代如此，而既然有人能够发现\r\n这些营销手段或者方式为什么不自己去操作产品，反而来教导更多的人来进入其中，归根到底就是他们就是思想上的巨人，行动上的矮人，哦，这个观点会被喷的，\r\n嗯，改下就下，既然能够富裕为什么拉上你，人性是自私，必须承认。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">可能有人会说，我有个几万的微信公众帐号，有微信号码我也做过营销，那么外面的人是否看清他们所谓的成绩的背后是怎么样的啦，有很多所谓的微信大\r\n号，不是产品的料子，也有很多根本就是人家是看他个人品牌，反而不是看产品起来，所以要区分，个人品牌能够做起，不代表产品可以啊。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">(二)案例都是抄袭</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">一旦一个微信朋友圈案例成功，就会被无数的人复制运用来各种场合来变成自己的东西，说自己如何如何啊，所以这些大师们就很会懂得包装，但是不会否认\r\n去参加培训确实是认识不少东西，但是也必须承认参加培训过后是一点帮助都没有，比如参加培训说要微信如何做如何做，要多少人，到头来那些人估计也都是假或\r\n者都是同类人群。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">(三)大量的文章覆盖造势</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">微信朋友圈营销是怎么被造势起来，估计很多人都有大概的轮廓，我就不说，所以要推一个东西在如今互联网时代必然要做的是大量的媒体文章的覆盖去影响很多人，影响他们去说话、去评论、去质疑，只有这样子才会收到关注，而本人此篇文章也是助纣为虐了，说笑吧。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">文章覆盖了然后就出来争论，然后才把案例拿出来了，不可否认案例都是经过包装，都有可能是真，那么除此之外了，还有了，他们不会告诉你怎么做，只给读的人灌输一个想法：微信朋友圈营销很好，这样子他们才会有利于开展下步的行动计划，懂的人想想吧。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">一群人的杰作而已，微信朋友圈确实尤其营销的价值，但是没有想象中那么大，别被势头给欺骗，不然会成为既微博之后有一波大师们的囊中之物。一位从事网络营销的人士说的话，我也在做朋友圈测试，效果肯定有，本人的观点都是出自真实想法以及经验所谈，无论喜欢无否。</span> \r\n</p>', '', '1395498329', '1395498437', '3', 'zpbqjb1391609865', '揭秘微信营销背后被忽悠的营销培训');
INSERT INTO `tp_img` VALUES ('8', '7', '行者无缰', '最新动态', '2', '启鸿公司董事长刘兆云先生响应《西海都市报》家庭微心愿帮两家庭圆梦', '42', '最新动态', 'http://www.apiying.com/data/ArticleImg/image/20140222/53088701686be.jpg', '1', '<span style=\"font-size:16px;\">&nbsp; &nbsp; 2014年2月17日，西宁启鸿信息技术有限公司董事长刘兆云先生，在青海本地最大的官方报纸《西海都市报》上得知有一单亲家庭的孩子需要一个书桌，有一“三无”老人需要一台洗衣机。</span><br />\r\n<span style=\"font-size:18px;\">&nbsp; &nbsp; 刘兆云先生立即致电《西海都市报》的相关负责人，明确表态要资助这两位家庭。</span><span style=\"font-size:18px;\"></span><br />\r\n<span style=\"font-size:18px;\">&nbsp; &nbsp; 在得到《西海都市报》官方准充后，刘兆云先生于2014年2月28日协同《西海都市报》“家庭微心愿”版块负责人李月娟老师，把洗衣机、书桌、凳子一并送到这两个家庭，帮助两个家庭实现了他们的微心愿。</span><br />\r\n<span style=\"font-size:18px;\">&nbsp; &nbsp;&nbsp;刘兆云先生回忆说，他在中小学的时候，一直都是有好心人资助，最终才得以完成学业，对这份浓厚的感情，刘先生念念不忘，并决定每年都把公司全部收益的10%用于公益事业。</span><br />\r\n<span style=\"font-size:16px;\"></span><span style=\"font-size:18px;\">&nbsp; &nbsp; 《西海都市报》在第一时间，对该新闻进行了报道。</span><br />', '', '1393067780', '1393082864', '11', 'usyhhb1392205269', '启鸿公司董事长刘兆云先生帮两家庭圆梦');
INSERT INTO `tp_img` VALUES ('9', '7', '行者无缰', '最新动态', '2', '启鸿公司董事长刘兆云参观青海青年创业园', '42', '最新动态', 'http://www.apiying.com/data/ArticleImg/image/20140222/530887a1b4615.jpg', '1', '<p style=\"color:#666666;font-family:宋体, Arial, Lucida, Verdana, Helvetica, sans-serif;background-color:#F4F4F4;\">\r\n	<span style=\"font-size:18px;\">&nbsp; &nbsp; 受《西海都市报》、青海青年创业园的邀请，2014年2月20日西宁启鸿信息技术有限公司董事长刘兆云与其他9名创业学习青年一同去了青海青年创业园。</span> \r\n</p>\r\n<p style=\"color:#666666;font-family:宋体, Arial, Lucida, Verdana, Helvetica, sans-serif;background-color:#F4F4F4;\">\r\n	<span style=\"font-size:18px;\">&nbsp; &nbsp; 在青海青年创业园里，刘先生感觉自己受益颇多，特别是当谈到跟自己所从事的互联网行业时，刘先生更是“刹不住车”。看到那么多的青海创业青年在一起，激扬青春、放飞梦想，刘先生很是高兴。</span> \r\n</p>\r\n<p style=\"color:#666666;font-family:宋体, Arial, Lucida, Verdana, Helvetica, sans-serif;background-color:#F4F4F4;\">\r\n	<span style=\"font-size:18px;\">&nbsp; &nbsp; 参观结束后，刘先生再次提到了他的梦想，5-10年的时间里，刘先生要建立自己公司的大厦，让更多的有理想、有抱负的青年加入，共同谱写无悔的青春“赞歌”。</span> \r\n</p>\r\n<p style=\"color:#666666;font-family:宋体, Arial, Lucida, Verdana, Helvetica, sans-serif;background-color:#F4F4F4;\">\r\n	<span style=\"font-size:18px;\"><img src=\"http://www.qhgxlt.net/pic/weixin/qhxxjs/gongsidongtai/meiti.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>', '', '1393067939', '1393084258', '11', 'usyhhb1392205269', '启鸿公司董事长刘兆云参观青海青年创业园');
INSERT INTO `tp_img` VALUES ('10', '7', '行者无缰', '主营业务', '2', '西宁启鸿信息技术有限公司主营业务', '39', '公司简介', 'http://www.apiying.com/data/ArticleImg/image/20140222/53089730763c8.jpg', '1', '<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;line-height:1.5;\">1、微信营销</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">2、微信运营</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">3、微信开发</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">4、微信推广</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">5、网站建设</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">6、淘宝运营</span> \r\n</p>', '', '1393072006', '1393082550', '0', 'usyhhb1392205269', '公司主营业务');
INSERT INTO `tp_img` VALUES ('12', '7', '行者无缰', '成功案例网站建设', '2', '西宁启鸿信息技术有限公司网站建设案例', '41', '成功案例', 'http://www.apiying.com/data/ArticleImg/image/20140222/5308a934d4b4d.jpg', '1', '<p>\r\n	<span style=\"font-size:18px;\">1、青海金帝顺滑雪场：</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"> <a href=\"http://www.qhhxc.com\" target=\"_blank\"><span style=\"font-size:18px;\">http://www.qhhxc.com</span></a></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">2、西宁博翔培训学校：</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"> <a href=\"http://www.qhpx100.com\" target=\"_blank\"><span style=\"font-size:18px;\">http://www.qhpx100.com</span></a></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">3、西宁久佰伴礼品回收：</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"> <a href=\"http://www.qhhuishou.com\" target=\"_blank\"><span style=\"font-size:18px;\">http://www.qhhuishou.com</span></a></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">4、启鸿公司官网：</span>\r\n</p>\r\n<p>\r\n	<span><span style=\"line-height:24.545454025268555px;\"><a href=\"http://www.qhit.com.cn\" target=\"_blank\"><span style=\"font-size:18px;\">http://www.qhit.com.cn</span></a></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">5、启鸿公司学习网：</span> \r\n</p>\r\n<p>\r\n	<span><a href=\"http://www.qh100learning.com\" target=\"_blank\"><span style=\"font-size:18px;\">http://www.qh100learning.com</span></a></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">6、青海高校论坛：</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><a href=\"http://www.qhgxlt.net\" target=\"_blank\"><span style=\"font-size:18px;\">http://www.qhgxlt.net</span></a></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><span style=\"line-height:24.545454025268555px;font-size:18px;\">7、希恩e购商城：</span></span> \r\n</p>\r\n<p>\r\n	<span><span style=\"line-height:24.545454025268555px;\"><a href=\"http://www.cn-egou.com\" target=\"_blank\"><span style=\"font-size:18px;\">http://www.cn-egou.com</span></a></span></span> \r\n</p>', '', '1393076717', '1393079519', '11', 'usyhhb1392205269', '网站建设案例');
INSERT INTO `tp_img` VALUES ('11', '7', '行者无缰', '电话号码 联系方式 如何联系你们', '2', '', '39', '公司简介', 'http://www.apiying.com/data/ArticleImg/image/20140222/5308a0bf9840d.jpg', '1', '<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><strong>联系人：刘经理</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><strong>联系电话：0971-4322069 4322070</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><strong>手机号码：13997137252</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><strong>QQ号码： &nbsp;800027868</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><strong>电子邮箱：800027868@b.qq.com</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><strong>公司地址：西宁市城西区西川南路8号</strong></span> \r\n</p>', '', '1393074439', '1393082660', '0', 'usyhhb1392205269', '联系我们');
INSERT INTO `tp_img` VALUES ('13', '7', '行者无缰', '青海金帝顺滑雪场', '2', '西宁启鸿信息技术有限公司承建青海金帝顺滑雪场官网', '41', '成功案例', 'http://www.apiying.com/data/ArticleImg/image/20140222/5308b60c10996.jpg', '1', '<p>\r\n	<span style=\"font-size:18px;\">&nbsp; &nbsp; 青海省内最大的滑雪场，位于青海省西宁市大通县鹞子沟东峡镇风景区，公司投资3.2亿元，拟分三期建成。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">&nbsp; &nbsp; 青海金帝顺滑雪场官方网站由西宁启鸿信息技术有限公司承建并维护。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">&nbsp; &nbsp; 点击下面图片，可进入青海金帝顺滑雪场官网。</span> \r\n</p>\r\n<p>\r\n	<a href=\"http://www.xnhxc.com\" target=\"_blank\"><img src=\"/data/ArticleImg/image/20140222/5308b732aad9f.jpg\" alt=\"\" /></a> \r\n</p>', '', '1393080126', '1393080814', '0', 'usyhhb1392205269', '青海金帝顺滑雪场官网');
INSERT INTO `tp_img` VALUES ('14', '7', '行者无缰', '成功案例网站建设', '2', '西宁启鸿信息技术公司官方网站', '41', '成功案例', 'http://www.apiying.com/data/ArticleImg/image/20140222/5308b92b23523.jpg', '1', '<p>\r\n	<span style=\"font-size:18px;\"><strong> 西宁启鸿信息技术有限公司官网</strong></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><strong>网址：http://www.qhit.com.cn</strong></span>\r\n</p>\r\n<p>\r\n	<img src=\"/data/ArticleImg/image/20140222/5308b904b45e2.jpg\" alt=\"\" /> \r\n</p>', '', '1393080630', '1393081233', '9', 'usyhhb1392205269', '启鸿信息技术公司官网');
INSERT INTO `tp_img` VALUES ('15', '7', '行者无缰', '成功案例网站建设', '2', '西宁博翔文化培训学习官方网站由西启鸿信息技术有限公司承建', '41', '成功案例', 'http://www.apiying.com/data/ArticleImg/image/20140222/5308ba9093e42.jpg', '1', '<p>\r\n	<strong><span style=\"font-size:18px;\"> 西宁博翔文化培训学习官方网站由西启鸿信息技术有限公司承建</span></strong> \r\n</p>\r\n<p>\r\n	<strong><span style=\"font-size:18px;\"> 网址：http://www.qhpx100.com</span></strong> \r\n</p>\r\n<p>\r\n	<img src=\"/data/ArticleImg/image/20140222/5308baed38159.jpg\" alt=\"\" /> \r\n</p>', '', '1393081084', '1393082091', '9', 'usyhhb1392205269', '西宁博翔培训学校官网');
INSERT INTO `tp_img` VALUES ('16', '7', '行者无缰', '成功案例网站建设', '2', '西宁久佰伴烟酒礼品回收公司官网，由西宁启鸿信息技术有限公司承建', '41', '成功案例', 'http://www.apiying.com/data/ArticleImg/image/20140222/5308be46edff6.jpg', '1', '<p>\r\n	西宁久佰伴烟酒礼品回收公司官网，由西宁启鸿信息技术有限公司承建\r\n</p>\r\n<p>\r\n	网址：http://www.qhhuishou.com\r\n</p>\r\n<p>\r\n	<img src=\"/data/ArticleImg/image/20140222/5308bd20dbca4.jpg\" alt=\"\" /><br />\r\n\r\n</p>', '', '1393081929', '1393081929', '9', 'usyhhb1392205269', '西宁久佰伴礼品回收官网');
INSERT INTO `tp_img` VALUES ('17', '7', '行者无缰', '成功案例网站建设', '2', '西宁启鸿信息技术有限公司员工成长平台', '41', '成功案例', 'http://www.apiying.com/data/ArticleImg/image/20140222/5308bf9d588f3.jpg', '1', '<p>\r\n	西宁启鸿信息技术有限公司员工成长平台\r\n</p>\r\n<p>\r\n	网址：http://www.qh100learning.com\r\n</p>\r\n<p>\r\n	<img src=\"/data/ArticleImg/image/20140222/5308bfe9b9479.jpg\" alt=\"\" />\r\n</p>', '', '1393082394', '1393082394', '9', 'usyhhb1392205269', '启鸿公司学习网');
INSERT INTO `tp_img` VALUES ('18', '7', '行者无缰', '公司主营业务', '2', '西宁启鸿信息技术有限公司主营业务简介', '40', '主营业务', 'http://www.apiying.com/data/ArticleImg/image/20140222/5308c27750386.jpg', '1', '<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:24px;\">1、微信营销</span> \r\n</p>\r\n<span style=\"font-size:24px;\">2、微信运营</span><br />\r\n<span style=\"font-size:24px;\"> 3、微信开发</span><br />\r\n<span style=\"font-size:24px;\"> 4、微信推广</span><br />\r\n<span style=\"font-size:24px;\"> 5、网站建设</span><br />\r\n<span style=\"font-size:24px;\"> 6、淘宝运营</span><br />\r\n<span style=\"font-size:24px;\"></span><br />', '', '1393083059', '1393083113', '0', 'usyhhb1392205269', '西宁启鸿信息技术公司主营业务');
INSERT INTO `tp_img` VALUES ('20', '7', '行者无缰', '最新动态 公司新闻', '2', '西宁启鸿信息技术公司入驻青海青年创业园', '42', '最新动态', 'http://www.apiying.comdata/ArticleImg/image/20140226/530d6283aa1b3.jpg', '1', '<span style=\"font-size:16px;font-family:SimSun;\">&nbsp; &nbsp; 2014年2月25日下午，启鸿公司董事长刘兆云及公司人事部主任蒲江滔一同到青海青年创业园参观。</span><br />\r\n<span style=\"font-size:16px;font-family:SimSun;\">&nbsp; &nbsp; 在跟青海青年创业园徐斌老师的沟通后，青海青年创业园盛情邀请启鸿公司入园孵化。当天下午15时，启鸿公司董事长刘兆云与青海青年创业园徐斌老师正式签署入园合同并提交了相关证明资料。</span><br />\r\n<span style=\"font-size:16px;font-family:SimSun;\">&nbsp; &nbsp; 本次入园孵化，青海青年创业园将对启鸿公司给予政策、资金方面的扶持，加上启鸿公司原有的业务基础及技术实力，相信入园后，启鸿公司将迸发出前所未有的活力。</span><br />', '', '1393386032', '1393386486', '5', 'usyhhb1392205269', '西宁启鸿信息技术公司入驻青海青年创业园');
INSERT INTO `tp_img` VALUES ('21', '7', '行者无缰', '天津市公务员 天津公务员 天津公考', '2', '2014年天津市公务员考试公告', '55', '公考信息', 'http://www.apiying.com/data/ArticleImg/image/20140302/53129f52934ff.jpg', '1', '<p align=\"center\" style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	中共天津市委组织部、天津市人力资源和社会保障局、天津市公务员局\r\n</p>\r\n<p align=\"center\" style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n2014年度天津市公开招考公务员公告\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n为满足我市各级机关补充公务员的需要，根据公务员法和公务员录用的有关规定，市委组织部、市人力资源和社会保障局、市公务员局将组织实施2014年度本市各级机关公开招考担任主任科员以下及其他相当职务层次非领导职务公务员和参照公务员法管理机关（单位）工作人员工作。本次招考公务员1244名，参照公务员法管理机关（单位）工作人员385名。现将有关事项公告如下：\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n一、招考对象及招考条件\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n（一）招考对象。符合职位要求的全日制普通高等院校应届毕业生和社会人员。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n（二）报考人员应当具备以下条件：\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n（1）具有中华人民共和国国籍；\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n（2）18周岁以上、35周岁以下（1978年2月25日至1996年2月25日期间出生），2014年应届硕士研究生和博士研究生（非在职）、海监总队高级船员职位的报考者年龄可放宽到40周岁以下（1973年2月25日以后出生）；\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n（3）拥护中华人民共和国宪法；\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n（4）具有良好的品行；\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n（5）具有正常履行职责的身体条件；\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n（6）具有符合职位要求的工作能力；\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n（7）具有大专以上文化程度；\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n（8）社会人员需具有天津市常住户口，非津生源应届毕业生需具有全日制普通高等院校大学本科及以上学历、学士及以上学位；\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n（9）具备市公务员主管部门规定的拟任职位所要求的其他资格条件。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n曾因犯罪受过刑事处罚的，曾被开除公职的，在各级公务员招考中被认定有舞弊等严重违反录用纪律行为的人员，现役军人，试用期内的公务员和参照公务员法管理机关（单位）工作人员，公务员和参照公务员法管理机关（单位）工作人员被辞退未满5年的，公务员和参照公务员法管理机关（单位）工作人员服务年限未满5年（含试用期）且所在单位不同意报考的，在读的非应届毕业生，以及法律规定不得录用为公务员的其他情形的人员不得报考。报考人员不得报考录用后即构成回避关系的招考职位。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n二、招考职位查询\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n各招录机关具体的招考人数、职位、资格条件等详见《2014年度天津市公开招考公务员报考指南》。报考人员从2014年2月19日开始，通过天津市人力资源和社会保障局网站（www.tj.hrss.gov.cn）和天津人事考试网（www.tjkpzx.com）查询。对《招考简章》中的专业、学历、学位、资格条件、基层工作经历以及备注的内容等信息需要咨询时，请报考人员直接与招录机关联系。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n三、报名和缴费的方式、时间及相关事项\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n考试报名和缴费均在网上进行。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n网&nbsp;&nbsp;&nbsp; 址：<a href=\"http://www.chinagwy.org/html/gdzk/tianjing/201402/gwybm.tjpnet.gov.cn\" target=\"_blank\">gwybm.tjpnet.gov.cn</a>。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n报名时间为2014年2月25日8:00至3月3日18:00。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n缴费时间为2014年2月25日8:00至3月5日18:00。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n报考人员只能选择一个部门（单位）中的一个职位进行报名，报考人员提交的报考申请材料应当真实、准确，提供虚假报考申请材料的，一经查实，即取消报考资格。对伪造、变造有关证件、材料、信息，骗取考试资格的，将按照有关规定予以处理。报考人员可在提交报名申请48小时内查询资格审查结果，通过审查的报考人员在规定时间内缴费确认。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n每个职位的报考人数与招考计划数之比低于3:1的不能开考，市公务员主管部门相应调整或取消该职位的招考计划。报考上述职位的人员可在规定时间内改报其他职位。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n改报时间为2014年3月7日9：00至16：00。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n根据国家和我市的有关政策，对享受国家最低生活保障金的城镇家庭和农村绝对贫困家庭的报考人员，减免考务费用。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n四、考试科目、时间\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n考试包括笔试和面试。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n笔试科目为《行政职业能力测验》和《申论》。面试为结构化面谈和专业科目考试。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n笔试时间：2014年3月16日。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n上午：09：00～11：00&nbsp; 行政职业能力测验\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n下午：14：00～16：30&nbsp; 申论\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n笔试准考证下载时间：2014年3月12日8：00至3月15日18：00。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n报考人员应按照准考证上确定的时间和地点参加考试。参加考试时，必须同时携带准考证和二代身份证（与报名时一致），缺少任一证件的报考人员不得参加考试。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n3月27日，报考人员可到本人所报考单位或登录报名网址查询笔试成绩及相关信息。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n笔试结束后，按笔试成绩由高分到低分排序，根据各职位招考计划数与参加面试人选1：3的比例，确定各职位进入面试的人选名单。招考职位进入面试的人数达不到1：3比例时，按照该职位进入面试的实际人数进行面试。面试前，进入面试的人选需持报考资格证书原件等材料到招录机关进行资格复审。凡有关材料主要信息不实的，取消该报考人员参加面试的资格。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n招考职位要求进行体能测评的需在面试之前进行体能测评，具体时间另行通知。按照笔试成绩由高分到低分排序，根据各职位招考计划数与参加体能测评人选1：4的比例确定参加体能测评人选名单。招考职位参加体能测评的人数达不到1：4比例时，按照该职位实际人数组织体能测评。体能测评不合格及未按照规定的时间地点参加体能测评的人员，不能进入面试。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n面试时间：市级机关2014年4月12日至4月13日；\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n区县机关2014年4月19日至4月20日。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n市各级检察机关所属职位，实行集中分类组织面试，面试时间为：2014年4月12日至4月13日。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n面试考务费缴纳及准考证下载时间：2014年4月8日8：00至4月10日16：00。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n面试采取结构化面谈形式，及格线为60分，达不到及格线的不予录用。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n市公务员主管部门根据各招录机关事先申报的专业科目考试设置情况，实施专业科目考试。报考人员不按规定的时间地点参加专业科目考试的，视为自动放弃面试资格。招录机关根据实际需要，对进入面试的报考人员进行心理素质测评，结果不计入面试成绩，仅供参考，报考人员不按规定的时间地点参加心理素质测评，视为自动放弃面试资格。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n五、体检和考察\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n面试结束后，按考试成绩由高分到低分排序，按各职位招考人数与进入体检人员之比为1:1的比例，确定参加体检人员的名单。考试成绩的计算方法为：\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n考试成绩=公共科目笔试成绩÷2×50%+面试成绩×50%。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n其中，进行专业科目考试的，面试成绩由结构化面谈成绩和专业科目考试成绩按百分制6:4的比例合成。不进行专业科目考试的，结构化面谈成绩即为面试成绩。笔试成绩和面试成绩各保留1位小数，总成绩保留2位小数。若报考人员总成绩出现并列，造成进入体检人数超出职位录用计划数的情况，按照笔试成绩高者优先的原则确定进入体检人员。如仍出现并列情况，则一同确定为参加体检人选。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n体检和考察工作按公务员录用有关规定执行。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n六、公示\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n对拟录用的人员，市公务员主管部门将在天津市人力资源和社会保障局网站统一进行公示。公示内容包括招录机关名称、拟录用人员姓名、性别、报名序号等，公示期为7天。同时公布监督举报电话，接受社会监督。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n报考人员要树立诚信考试光荣、违纪舞弊可耻的理念。在公务员录用考试过程中，报考人员有违纪违规行为的，按《公务员录用考试违纪违规行为处理办法（试行）》（人社部发[2009]126号）处理，并记入本人诚信档案。对于进入体检、考察、公示阶段无正当理由放弃的，被录用为公务员后无正当理由逾期不报到的，以及隐匿身份“试考”的行为，记入考生本人诚信档案。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n特别提示：\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n公务员录用考试不指定辅导用书，不举办也不委托任何机构举办辅导培训班。考试范围以《2014年度天津市公开招考公务员公共科目考试大纲》为准。社会上以任何名义举办的辅导班、辅导网站或发行的出版物、上网卡等，均与本次考试无关，敬请广大报考人员提高警惕。\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n考务咨询电话：12333\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n网站咨询电话：23314295\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n</p>\r\n政策咨询电话：83606214、83609410\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n监督电话：23030853\r\n</p>\r\n<p style=\"font-size:14.399999618530273px;background-color:#FFFFFF;font-family:宋体, Arial, Tahoma, Helvetica, sans-serif;\">\r\n	<br />\r\n</p>\r\n扫一扫，加微信关注，查询更多实用信息。微信号：qhxysh <img src=\"http://b130.photo.store.qq.com/psb?/V11Dte0f1VvFvm/ZA2O6AtmI6CRS*CGAfEAeYWITFJ.Ct7GwRbHVIJkFXQ!/b/dLWSgk2IGwAA&bo=lgCWAAAAAAABACc!&t=5&su=071725809&rf=2-9\" alt=\"图片\" style=\"width:150px;height:150px;\" /> 亲，如果你感觉这个平台能帮上你的朋友，记得要分享这篇文章哦。\r\n<p>\r\n	<br />\r\n</p>', '', '1393508055', '1393729366', '1', 'btmdkz1392007679', '2014年天津市公务员考试公告');
INSERT INTO `tp_img` VALUES ('22', '7', '行者无缰', '青大电脑维修 青海大学电脑维修 青大修电脑 青海大学维修电脑 青大维修电脑', '2', '联系人：姚壮\r\n联系电话：18297197686', '49', '电脑维修', 'http://www.apiying.com/data/ArticleImg/image/20140302/5312acd9e8d00.jpg', '1', '<p>\r\n	<span style=\"font-size:18px;\"><strong>联系人：姚壮</strong></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><strong>联系电话：18297197686</strong></span>\r\n</p>', '', '1393732897', '1393733122', '2', 'btmdkz1392007679', '青海大学电脑维修');
INSERT INTO `tp_img` VALUES ('23', '38', 'mopome', '', '2', '扫微信送大礼', '61', '扫微信 送大奖', 'http://www.apiying.com/data/ArticleImg/image/20140305/531736bcd462f.jpg', '1', '<p style=\"text-align:center;\">\r\n	展会资讯\r\n</p>\r\n<p>\r\n	展位位置：琶洲展馆B区C29\r\n</p>\r\n<p>\r\n	展会时间：2014年3月9日 ~ 2014年3月11日\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	扫微信送大奖\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	微信唯一最小数字疯抢活动第一季\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	&nbsp; 一等将：SPA养颜仪（价值50000元）\r\n</p>\r\n<p style=\"text-indent:8px;\">\r\n	二等奖：智能皮肤分析仪（价值4999元）\r\n</p>\r\n<p style=\"text-indent:8px;\">\r\n	三等奖：足疗仪（价值2680元）\r\n</p>\r\n<p>\r\n	活动内容：活动期间，微信用户必须先将此文分享到朋友圈，没有转发的视为无效用户。并回复1-9999之间的任意整数参与活动，若用户提交的数字最小且唯一，则该微信用户获得本期疯抢大奖。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	活动规则：\r\n</p>\r\n<p>\r\n	1、美博会期间，每天抽奖一次。\r\n</p>\r\n<p>\r\n	2.每期活动期间，用户转发此文到朋友圈，并提交1-9999之间任意整数给【凯尔斯微信】参与活动，同时满足以下两个条件的用户获赠本期奖励。\r\n</p>\r\n<p>\r\n	3.您写的整数数字（有小数点的数字不是整数哦）在所有微信用户提交的数字中是唯一的（即您写的数字没有和任何别人的数字重复）。\r\n</p>\r\n<p>\r\n	4.在满足上述“唯一性”的数字中，您写的数字是最小的。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/AnABBDLEbZ1Q86k8ysDefG6ia4d1uM4P2l0LDvDDoyR9bePY7icibERsU8NHCuhlicO1qrgz0fB3dBEuaCfjE4ehwg/0\" />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	3D微雕：精雕细琢每一寸肌肤\r\n</p>\r\n<p>\r\n	\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	磨掉老化角质 激活倒塌纤维\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	补充细胞氧气 焕发肌肤活力\r\n</p>\r\n<p>\r\n	\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 为了更精准高效地解决肌肤问题，在研发先进护理技术方面永不止步的凯尔斯，在引入最新的科技研发成果和总结护理效果的市场反馈信息的基础上，隆重推出了美白微雕课程——3D美肌精致微雕护理，帮您解决并预防这些肌肤问题。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	凯尔斯：为什么称2014年为3D元年？\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-indent:32px;\">\r\n	北京凯尔斯科技开发有限公司，成立于1999年，是集设计、研发、制作、销售、解决方案于一身的大型美容仪器集团，耕耘15年，见证15年。\r\n</p>\r\n<p style=\"text-indent:32px;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-indent:32px;\">\r\n	2013年，与美国Doers公司深度合作、集合最前沿医疗美容技术成果的顶级塑脸抗衰仪器--- “3D微雕”研制成功！3D微雕技术，是一项通过无痛无创治疗即可快速实现面部轮廓雕塑、紧肤祛皱、美肤再生效果的美容技术，雕出骨感美，刻出小V脸，打造完美容颜，定制逆生长年轻态。凯尔斯“3D微雕”，集呼吸共震、超导自适应射频、三维激光柔性切割3种技术于一身，相辅相成，雕塑线条、紧肤回弹、美肤再生一步到位，是2014年非手术微整形全球顶尖科技的代表之一。36分钟创造奇迹，360度雕塑容颜，风靡美国，席卷中国，立竿见影的效果深受众多国际明星青睐，在美容院线掀起追捧热潮。\r\n</p>\r\n<p style=\"text-indent:32px;\">\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/AnABBDLEbZ1Q86k8ysDefG6ia4d1uM4P2N0ibUkiaI2kjpa275ywAPjbtyic8iaiaDuwb17kEqibHoOnIqxYg79h4cSPQ/0\" />\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;\r\n</p>\r\n<p style=\"text-indent:32px;\">\r\n	2014年，凯尔斯汇集集团精英，致力于“3D微雕”在中国的推广，力求以顶尖的技术、人性化的产品，把“美”带给中国客户；以顶尖的技术、高品质的产品、专业的服务，使众多合作伙伴，成为传播“美”的使者，为合作伙伴带来业绩上的成功和品牌境界的提升，互利共赢，共同打造美业传奇。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/AnABBDLEbZ1Q86k8ysDefG6ia4d1uM4P2rRnCgElKsxKOqiaQNnowoPuKu5yXjFv0yZZdIdFkh5e9qnKeTHFJRAw/0\" />\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-indent:32px;\">\r\n	2014年，是美容行业将产生飓风的一年，是所有人都将记住的一年：2014年---3D元年！\r\n</p>\r\n<p style=\"text-indent:32px;\">\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	公司地址：北京市大兴区旧宫镇南环路41号\r\n</p>\r\n<p>\r\n	电话：4000071266 8610-87965353\r\n</p>\r\n<p>\r\n	传真：8610-67869445\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	销售部：kiers@kiers.com.cn\r\n</p>\r\n<p>\r\n	国际部：cnkiers@kiers.com.cn\r\n</p>\r\n<p>\r\n	人事部：hr@kiers.com.cn\r\n</p>\r\n<p style=\"text-indent:32px;\">\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	敬请关注北京凯尔斯科技微信公众号：\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 北京凯尔斯，精彩不断！\r\n</p>\r\n<p>\r\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/AnABBDLEbZ1Q86k8ysDefG6ia4d1uM4P2MclByEZsmIgVPzM2vupqWgPibR7YfYFEpoomianZGyQSfL2m3FhuZm1w/0\" />\r\n</p>\r\n<p class=\"page-toolbar\">\r\n	<a class=\"page-imform\" href=\"javascript:report_article();\"></a>\r\n</p>', '', '1394030327', '1394030327', '0', 'egagky1394029884', '扫微信送大礼');
INSERT INTO `tp_img` VALUES ('24', '47', '1939364109@qq.com', '1', '1', '', '63', '特惠商品', 'http://www.apiying.com/data/ArticleImg/image/20140311/531e89325a58e.jpg', '1', '<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 活动时间：2014年3月5日——3月14日&nbsp;\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/grZhHPNXEnaOahiaibHQ1S4WOnswoEbMCq58LTm55tPQZRZXFxZNKVRpXMz8rodhUFIEOE4fFNbpc9SVPWzxeL2A/0\" style=\"height:auto !important;\" />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/grZhHPNXEnaOahiaibHQ1S4WOnswoEbMCqDL30r2TW4zgRmelrrdsJMahIQFOpJwMUH22OteicPiaxyicQrrX7JBZkQ/0\" style=\"height:auto !important;\" />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/grZhHPNXEnaOahiaibHQ1S4WOnswoEbMCqGJGsXibiatHZc5hdc9dQ6K1xsotAnNQUic30CUC5nFJ6H6ibGjwc6UyM2A/0\" style=\"height:auto !important;\" />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/grZhHPNXEnaOahiaibHQ1S4WOnswoEbMCqXUuibkBn2HSJCalEh9ljh1F7ibHsib97249IiabJT9KQxlT9cnsV0RKibWA/0\" style=\"height:auto !important;\" />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/grZhHPNXEnaOahiaibHQ1S4WOnswoEbMCqW9icrzY0Nvx6Xc6GEWZ50RvXib8urSk6AfWIpAjUQ55M1MXlicMgqQKZQ/0\" style=\"height:auto !important;\" />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/grZhHPNXEnaOahiaibHQ1S4WOnswoEbMCqlymJicuXn35psibtc3YpcFATW4B5NibAZqib2GnIIIVmfMyCF0c8MrORRg/0\" style=\"height:auto !important;\" />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/grZhHPNXEnaOahiaibHQ1S4WOnswoEbMCqKRRfal9ds5tUdNq3secmb6d60CVqx2P6kvboJzgMr0BXJ738GdUQiaQ/0\" style=\"height:auto !important;\" />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/grZhHPNXEnaOahiaibHQ1S4WOnswoEbMCqteax8StwDZ428QqI3AdibiaHQIeWrcibCRUurfOFUr9iaefU7icPGWUibKicQ/0\" style=\"height:auto !important;\" />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/grZhHPNXEnaOahiaibHQ1S4WOnswoEbMCqLLIqgruaTDqL63HLibf1uMtKks9kjDYsfYqmNhSBE64nM9TKj0qXfyQ/0\" style=\"height:auto !important;\" />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/grZhHPNXEnaOahiaibHQ1S4WOnswoEbMCqm8zLxYI1licPK88lVfHwESITRQI2I1Q7fBmfeliaF0sjggjFQYL4qs3g/0\" style=\"height:auto !important;\" />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	&nbsp;（更多特惠商品，详见各直营门店店内海报）\r\n</p>', '', '1394510206', '1394510206', '0', 'ymivkz1394500574', '最新特惠商品信息');
INSERT INTO `tp_img` VALUES ('25', '47', '1939364109@qq.com', '2', '2', '', '62', '华联新闻', 'http://www.apiying.com/data/ArticleImg/image/20140311/531e89d684a26.jpg', '1', '<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;text-indent:32px;\">\r\n	胸前佩戴着大红花，脸上绽放着笑容，2014年2月17日下午，阜阳华联集团十七位员工最受人瞩目。因工作表现优异，他们被评为了阜阳华联一月份优秀员工，受到了公司的隆重表彰，不但获得了物质奖励，当天晚上还有幸与公司董事长和总经理共进晚餐。<img src=\"http://mmbiz.qpic.cn/mmbiz/grZhHPNXEnalq1B0NlD3dRmEtetQDibNNyj7Csic1wtZibSMDwTygy5IXj9GmGdU5nwYdhFbjfaJpHMGAia9lgOFgg/0\" style=\"height:auto !important;\" />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;text-indent:32px;\">\r\n	另外，在此次店长扩大会议上，恒安集团相关负责人对现场员工，做了一次轻松有趣的知识培训，常务副总经理樊晓丽对阜阳华联2014春节经营状况，运用详实的数据进行了细致解读。\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;text-indent:32px;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;text-indent:32px;\">\r\n	随后，生鲜业务部肖世贵向同事们分享了肉类完成预算的经验。南站店1月销售预算超额最高，销售超额24万，毛利额超额1.8万，店长刘俊也向现场员工分享了经营管理经验，业务部储维娜也讲述了自己的工作体会。优秀店长李侠也总结了自己的工作心得。\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;text-indent:32px;\">\r\n	&nbsp;<img src=\"http://mmbiz.qpic.cn/mmbiz/grZhHPNXEnalq1B0NlD3dRmEtetQDibNNkJMA7ATzBwia06smDvgJMCKO5D9O8f8KRKn3icC9ibWNzPhQbLbqpic8Mw/0\" style=\"height:auto !important;\" />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;text-indent:32px;\">\r\n	2013年，阜阳华联共十六家门店在防损工作上表现突出，公司总经理助理李莉现场为他们颁发了奖状。最后，公司总经理张雷亲自为十七位优秀员工颁奖，并合影留念。\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;text-indent:32px;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; 公司希望各门店员工要以优秀员工为榜样，勤奋工作，敢于超越，争取也获得优秀员工称号。优秀员工也不要骄傲，一定要再接再厉，以身作则，以获得工作上更大的成绩。祝福我们的员工，感谢我们的员工。\r\n</p>', '', '1394510311', '1394510311', '0', 'ymivkz1394500574', '阜阳华联资讯');
INSERT INTO `tp_img` VALUES ('26', '47', '1939364109@qq.com', '3', '2', '', '64', '特惠活动', 'http://www.apiying.com/data/ArticleImg/image/20140311/531e8a2fcb456.jpg', '1', '<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;亲们，送影票啦！！还记得小华的300张电影票嘛，说好的都送给你们的，小华要兑现承诺了哦！怎么送呢，即日起，凡是在“华联易购”一次性购物满39元，即可获得阜阳大地影院电影票一张！满58元市区三环内免费送货上门哦(支持自提)!还有奥，近期小华将组建一个30人的观影团哦！\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp;\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp; 小华喊你来参加阜阳华联观影团\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	活动时间：2014年3月8日——3月14日\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	活动规则：\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp; 点击微信右下角，进入微社区！在微社区发帖，写下你想对小华说的话或者你想看的电影名字（近期阜阳大地影院上映影片），即可获得抽奖的机会！小华将抽取30名幸运粉丝，组建阜阳华联首期观影团。\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/grZhHPNXEnZ7PribHWlLuUEw3NdJS2pKCm76yek9xQ3SucwbY0FtyUfDCZfOtaKDk5TfiaicHPemwRvj8vrd9SQpw/0\" style=\"height:auto !important;\" />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/grZhHPNXEnZ7PribHWlLuUEw3NdJS2pKC8t44RricJwic78sC4TzYBicIAkfjXsowR3ML2U18UPm9eavZZrBXSvbBw/0\" style=\"height:auto !important;\" /><br />\r\n\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	● 加关注\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	&nbsp;1.&nbsp;扫描微信二维码：<img src=\"http://mmbiz.qpic.cn/mmbiz/grZhHPNXEnZ7PribHWlLuUEw3NdJS2pKCP0qYkUrOBbQDrtNIl0H6xNyOvognqbfmNwc3NHMuKp9Cp6x30K7DicA/0\" style=\"height:auto !important;\" />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:宋体;font-size:15.555556297302246px;background-color:#FFFFFF;\">\r\n	2.&nbsp;通过微信名【阜阳华联便民】或者微信号【fyhl0558】直接添加。\r\n</p>', '', '1394510413', '1394510413', '0', 'ymivkz1394500574', '特惠活动');
INSERT INTO `tp_img` VALUES ('27', '15', 'xiongting1717', 'Esri 公司简介 esri 研发中心', '1', '', '68', '公司简介', 'http://www.apiying.com/data/ArticleImg/image/20140319/532958680244e.png', '1', '&nbsp; &nbsp; &nbsp; esri是全球顶尖的gis平台软件及服务提供商，同时也是世界第五大私营计算机软件公司。esri在中国的研发中心位于<br />\r\n北京，隶属于esri美国总部软件研发部，是在美国本土之外成立的第一个研发中心，也是全球gis厂商中首个在中国成立的研发中心。不同于esri在欧洲和中东的研发机构只开发特定领域的软件产品，esri在中国的研发中心将参与esri全体系产品的研发工作，主要关注地理信息技术在云计算、移动和三维等方向的发展。<br />\r\n我们相信gis能触及和造福到各行各业、千家万户，我们以最大的热情投入到利用技术来改善生活、保护我们的家园，我们勇于走未径之路、乐于开疆拓土，我们不墨守成规、我们爱护特立独行，我们的团队因创新而闪耀。<br />\r\n我们渴望来自你的信念、激情、创新精神和想象力，我们期望以你的智慧、能力和经验来促进整个esri全球协同研发团队的进步。我们欢迎你立足于软件技术发展的前沿，参与贡献每一个新产品的发布，结识紧跟技术进步的精英，同时拓展你的职业生涯，实现一番跨越全球的自我发展。', '', '1395218598', '1395233358', '3', 'bjjxjc1395216010', '公司简介');
INSERT INTO `tp_img` VALUES ('28', '15', 'xiongting1717', '产品 demo', '1', '', '67', '产品中心', 'http://www.apiying.com/data/ArticleImg/image/20140319/5329852723dc5.jpg', '1', 'ArcGIS WebApp Builder......................', '', '1395230010', '1395232031', '5', 'bjjxjc1395216010', 'ArcGIS WebApp Builder');
INSERT INTO `tp_img` VALUES ('29', '15', 'xiongting1717', '产品 demo', '1', '', '67', '产品中心', 'http://www.apiying.com/data/ArticleImg/image/20140319/53298832a6aca.png', '1', 'CityEngine...............', '', '1395230814', '1395232015', '5', 'bjjxjc1395216010', 'CityEngine');
INSERT INTO `tp_img` VALUES ('30', '15', 'xiongting1717', '动态 进展', '1', '', '70', '最新动态', 'http://www.apiying.com/data/ArticleImg/image/20140319/53298b27d0d1c.jpg', '1', '最新动态正在整理当中，敬请期待.....', '', '1395231582', '1395232003', '0', 'bjjxjc1395216010', '最新动态');
INSERT INTO `tp_img` VALUES ('31', '15', 'xiongting1717', '方向 研究领域 领域', '1', '', '69', '企业方向', 'http://www.apiying.com/data/ArticleImg/image/20140319/53298bbcb38d7.png', '1', '3d、移动、云计算（arcgis online）', '', '1395231765', '1395231765', '0', 'bjjxjc1395216010', '近期企业方向');
INSERT INTO `tp_img` VALUES ('32', '15', 'xiongting1717', '招聘 实习', '1', '', '72', '招贤纳士', 'http://www.apiying.com/data/ArticleImg/image/20140319/53298c3e6737c.png', '1', '【招聘背景】<br />\r\n研发中心发展太快，马上要搬到可以容纳更多人员的新办公室，所以也急需更多对 gis 有热情，对技术有执着，对设计有感觉的开发者、设计师参与到下一代 arcgis 的开发中来。<br />\r\n【全职】<br />\r\n学历要求、技能要求就不写了，你只需要了解研发中心的主要研究方向有三个：3d、移动、云计算（arcgis online），只要你觉得有兴趣做这些方向，有自信能胜任研发工作和设计工作，那就欢迎你投个简历，过来看一看我们的环境，交流一下对arcgis的畅想和你理想中的工作。<br />\r\n【 实习】<br />\r\n我们也希望在学生群体中发掘、培养一些人才，所以研发中心现在启动了长效的实习机制。不管什么时候，如果希望从实际工作中得到经验、希望尝试一些 gis 领域的新技术、新想法，随时欢迎过来实习。<br />', '', '1395231840', '1395231840', '0', 'bjjxjc1395216010', '招贤纳士');
INSERT INTO `tp_img` VALUES ('33', '15', 'xiongting1717', '联系 咨询', '1', '', '71', '联系我们', 'http://www.apiying.com/data/ArticleImg/image/20140319/53298c8b9e457.png', '1', '<p>\r\n	Esri研发中心欢迎您！\r\n</p>\r\n<p>\r\n	地址：北京朝阳区曙光西里甲5号院凤凰置地广场<span>A</span>座<span>19</span>层<span>1901</span>\r\n</p>\r\n<p>\r\n	电话: &nbsp;10-5730-2700\r\n</p>\r\n<p>\r\n	传真：10-5975-6105\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '1395231937', '1395495291', '2', 'bjjxjc1395216010', '联系我们');
INSERT INTO `tp_img` VALUES ('35', '6', 'htzhanglong', '微信营销的思考', '2', '微信营销已经不再是个新鲜的名词，其热度堪比当年微博营销之初，但是我仍相信知道概念的人多，但懂得如何用的其实很少。在分享今天的内容前，先看看我最近遇到的3件事情', '38', '微信营销', 'http://www.apiying.com/data/ArticleImg/image/20140322/532d9e3833607.png', '1', '<p>\r\n	<a href=\"http://www.kuqin.com/shuoit/weixinmarketing/\" target=\"_blank\">微信营销</a>已经不再是个新鲜的名词，其热度堪比当年微博营销之初，但是我仍相信知道概念的人多，但懂得如何用的其实很少。在分享今天的内容前，先看看我最近遇到的3件事情：\r\n</p>\r\n<p>\r\n	1、前不久大学老班长来访，虽说他只是路过，我总得招呼一顿，去哪里吃？这对于一向不太会吃的我是一件难事，我求助一吃货朋友推荐，不一会她给我发来<a href=\"http://www.kuqin.com/shuoit/weixin/\" target=\"_blank\">微信</a>，xxx餐厅的 微信名片。我加玩关注后，继续问吃货朋友它那里有店，她让我输入我的地理位置即可获得最近的一家店地址。\r\n</p>\r\n<p>\r\n	2、每次在临近办公楼的路口都会遇很多人散发快餐店的传单，大部分人不会接，有些接了之后很快扔进垃圾桶，极少数会带进办公室并记住。对于商家来说印制传单将是一比成本，而且有些纸张很好，成本更高。而消费者并没有在意。\r\n</p>\r\n<p>\r\n	3、有天下午一小姑娘到办公室给我们每人发一张他们小店的传单，给我时我顺口问了一句，你们有微信吗？她笑望着我说没有，我说你们要是开通微信日后效果也许会比发现在发传单会好很多，因为我们实在记不住也放不下这么多家餐厅的传单。\r\n</p>\r\n<p>\r\n	其实上面的情景我想肯定很多人都遇到过或见过类似情况。我们仔细想想会得到什么，或者说会有哪些思考？\r\n</p>\r\n<p>\r\n	1、以前我们找地方吃，也许是先上大众点评查找地方，然后再去百度地图搜索路线，却后选择一个最合适的店（也许是距离也许是优惠等）。但是现在我也\r\n许会去微信，看他们有木有优惠（微生活会员优惠特权），我只需输入我的地理位置即可获得离我最近的店，同时将地址转发给朋友，实在太方便了。\r\n</p>\r\n<p>\r\n	2、有时候我们选择新的营销方式正是因为它比以往的方式更快捷方便亦或是省钱，我们无需在烈日炎炎下辛苦的发传单，我们可以多花些时间提高质量和服务。\r\n</p>\r\n<p>\r\n	2、作为一个白领午饭吃什么实在是一件很痛苦的事情，我们希望周围有很多可供选择的餐厅，但是我们又实在记不住那么多，而且心疼日积月累缴费移动的话费，我能打开手机容易的找到那家我喜欢的小店该多好。\r\n</p>\r\n<p>\r\n	微信营销火了，那是一帮炒作人的把戏，但是对于企业而言究竟有没有借助微信产生价值自己很清楚。常常有人问我微信到底有什么用，它跟微博有啥区别？\r\n我说，微博是一个偏媒体属性注重传播的平台，微信是一个偏工具属性注重沟通互动的平台。微信更多的是扮演一个对话/沟通/服务/管理的工具。对于餐饮行业\r\n而言，微信是一个实用的“活菜单活地图”，免费的scrm管理系统和一个免费的群发信息平台。我们来看看一家名叫深井大叔的港式茶餐厅如何利用微信开展营\r\n销。\r\n</p>\r\n<p>\r\n	n 微信公众账号变身为一个移动版的便携式“活菜单”\r\n</p>\r\n<p>\r\n	文章开头我们看到了费时费力发放的传单也许转手间被扔进了垃圾桶，亦或者你的菜单早已经淹没在那一大叠形形色色的传单中，可是如果你能留在用户微信\r\n通讯录中当他有需求的时候能够轻易找到你，那么你的目的就达到了。如图，通讯录公众账号，然后回复“3”即可获得深井大叔top10的的菜品。倘若你不知\r\n道具体想吃什么，也可输入关键词，如输入“饿饭”系统会自动推荐最受欢迎的饿饭。对于消费者而言无需在伤透脑筋寻找菜单或者电话号码，直接利用为即可点\r\n单。\r\n</p>\r\n<p>\r\n	微信公众账号变身免费的信息群发平台和SCRM管理系统\r\n</p>\r\n<p>\r\n	曾经微博时代无数人梦想着新浪可以开放向粉丝群发私信，但是至今仍未实现，而微信群发消息这一功能不仅是让无数企业欣喜若狂更是直接断了以往的\r\nSMS（短信营销）后路。主动关注企业微信账号的粉丝在一定程度上是许可接受企业信息的。此时企业尽可开展内容营销魅力。你可推荐最新的产品/服务，优惠\r\n活动或知识性的内容，不断提高内容的价值感，但需要在频率和内容采编上稍微注意，不宜有扰民之嫌。例如深井大叔的“9折菜品优惠，省钱大作战”就受到粉丝\r\n们的欢迎，如图，刚推出不久就有超过1400次的粉丝互动。\r\n</p>\r\n<p>\r\n	除了优惠信息的推送之外，借助微信开发模式，通过微库工具还可以实现在线预订下单，服务咨询等scrm管理中更多的功能。\r\n</p>\r\n<p>\r\n	n <a href=\"http://www.kuqin.com/shuoit/mpweixin/\" target=\"_blank\">微信公众平台</a>变身移动活地图，LBS新亮点。\r\n</p>\r\n<p>\r\n	曾经lbs是为众多企业争抢用的营销方式，但最后似乎也不温不火，而如今借助微信它又有更新的玩法了。正如文章开头所言，朋友发给我名片之后，我关\r\n注该企业账号，输入地址即可获得最近的地址店铺地址。这对于餐饮企业来说，你再也不用担心消费者记不住你有多少分店，哪一家离他们最近，现在你只需要输入\r\n自己的位置，就近推荐离你最近的一家店。同时你可以在微信上将地址转给朋友们，省去了再查地图工作，实在太方便了。\r\n</p>\r\n<p>\r\n	n 微信公众平台变身为娱乐互动的最佳营销平台。\r\n</p>\r\n<p>\r\n	我们了说了微信重在沟通对话互动，它不应该成为一个冷冰冰信息发布机器，它也不是一个只会提供使用价值的平台，它应该作为一个将消费者与企业连接起\r\n来的好玩平台，它帮助企业与消费者建立的不仅仅是物理链接更有情感链接。所以艺龙旅行做了“一站到底”，星巴克整出个“自然醒”，杜蕾斯闹出个“小杜杜喊\r\n你起床”。所以企业应该充分利用微信的互动性强化与粉丝的关系，与他们展开趣味互动对话。例如，深井大叔的互动答题赢优惠券活动（如下图），题虽简单，但\r\n是都与自身相关，强化粉丝对于自己的了解。深井大叔还有一个活动就是，输入yy即可随机为你推荐一首歌曲，缓解你点餐后等待的无聊。所以一个企业微信账号\r\n并不是一味的推广告，而是要学会给粉丝带来价值和快乐，把他们当做朋友来看待。\r\n</p>\r\n<p>\r\n	微信营销确实是一种对企业要求更高，并且有一定技术门槛的营销方式。仅仅依靠公众平台中的编辑模式企业只能享有有限的功能和营销价值，而我们看到星\r\n巴克、杜蕾斯、艺龙以及本文中的案例的成功皆是通过开发者模式，技术的手段实现更多的营销功能，比如lbs、听音乐、互动答题等，所以对于更多的中小企业\r\n要玩好微信,除了具备基本的运营能力更需要借助外部的技术来提高自己的营销价值，正如文中深井大叔依托传驰网络的微库系统实现的诸多营销功能。每一个行业\r\n中企业对于新工具的使用诉求都不尽相同，更需要结合自身的营销目的合理利用，而不是盲从，希望本文中提及的餐饮行业方法能够给与同行更多思考。\r\n</p>\r\n<p>\r\n	后记：许多人常常问我如何看待微信与微博营销的未来，以至于他们好决定当前该如何在微博与微信中选择。我的答案\r\n常常是2句话，一是企业营销真的不需要赶时髦，把握趋势中最适合自己的即可，二是要问问自己的企业现在是更需要微信还是微博营销？我们不要为了去做出一个\r\n选择就拿两个不是同一属性的平台还做无谓的比较。对企业而言它们只是工具而已，总有人不适合总有人适合，总有人用好总有人用不好。但是企业一定要结合自己\r\n的特点来利用它们。微信的强关系更有利于引发用户产生购买交易的行为，而微博的弱关系更有利于用户之间相互传播，但是无论哪种工具企业都需要花时间花精力\r\n去研究去应用，对于那些既不愿投入时间又不远花钱的企业终究会面临失败与淘汰。\r\n</p>', '', '1395498522', '1395498553', '3', 'zpbqjb1391609865', '3种现象引发对一个茶餐厅微信营销的思考');
INSERT INTO `tp_img` VALUES ('39', '74', '新长城自强社', '校外兼职', '2', '西宁启鸿信息技术有限责任公司长期招聘：\r\n1、市场业务员：主要负责网站及微信的推广的业务，待遇丰厚，有意者电联：18997423103（刘经理）\r\n2、市场派单员：主要与市区图文打印店协商，协商内容包含在图文店贴一张公司单页并且将公司相关礼品送与该图文店，即可获得5元提成，无上限，有意者电联：18997423103（刘经理）', '85', '校外兼职', 'http://www.apiying.com/data/ArticleImg/image/20140325/533113add758c.jpg', '1', '西宁启鸿信息技术有限责任公司长期招聘：<br />\r\n1、市场业务员：主要负责网站及微信的推广的业务，待遇丰厚，有意者电联：18997423103（刘经理）<br />\r\n2、市场派单员：主要与市区图文打印店协商，协商内容包含在图文店贴一张公司单页并且将公司相关礼品送与该图文店，即可获得5元提成，无上限，有意者电联：18997423103（刘经理）<br />', '', '1395725234', '1395824909', '33', 'wgsiap1395669220', '校外兼职');
INSERT INTO `tp_img` VALUES ('42', '74', '新长城自强社', '社团介绍', '2', '在校团委以及校学生处领导和老师们的正确指导下，新长城青海大学自强社成立了。', '96', '社团介绍', 'http://www.apiying.com/data/ArticleImg/image/20140326/53325fc317b56.jpeg', '1', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在校团委以及校学生处领导和老师们的正确指导下，新长城青海大学自强社成立了。\r\n<p>\r\n	自强社原名自强协会，成立于2009年9月4日，至今已有5个年头了，自强社秉承着“传递社会关爱，锻造自强之才”的宗旨在青海大学从一个不起眼的小社团发展到现在，当然离不开各界自强人的奋斗、执着和努力，现在自强社已发展成为青海大学一个涉及公益事业、勤工助学项目的大型学生社团，但是我们的路还有很远，我们一直在路上。\r\n</p>\r\n<p>\r\n	自强社下属七大中心：\r\n</p>\r\n<p>\r\n	<img alt=\"\" src=\"/data/ArticleImg/image/20140326/53329bda074bf.jpg\" /><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 举办过的活动：\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、公文写作培训；2、善行100志愿者；3、爱心宿舍活动；4、国际大学生节之社团内部狂欢；5、PPT大赛；6、义务支教；7、最美的太阳之下乡活动；8、公司面试模拟大赛；9、兼职的寻找及提供给他人；10、社庆；11、跑完全程大型培训活动；12、青大好声音（举办到两届了）\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>', '', '1395805945', '1395826012', '15', 'wgsiap1395669220', '自强社');
INSERT INTO `tp_img` VALUES ('43', '75', '逸山伍自转小火锅', '你们地址地址 你们在哪', '2', '逸山伍自转小火锅店铺地址', '106', '联系我们', 'http://www.apiying.com/data/ArticleImg/image/20140326/533282a4e413d.jpg', '1', '<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong><span style=\"font-size:18px;\">您好：我们店铺地址：青海西宁城中区北大街26号（商贸大厦旁）</span></strong> \r\n</p>', '', '1395819174', '1395819249', '7', 'gfqlqk1395814571', '店铺地址');
INSERT INTO `tp_img` VALUES ('44', '75', '逸山伍自转小火锅', '联系电话 你们电话号码多少 如何联系你们', '2', '逸山伍自转小火锅官网联系电话', '106', '联系我们', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332839388002.jpg', '1', '<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><strong>您好，我们电话：13897188995（王总）</strong></span>\r\n</p>', '', '1395819327', '1395819530', '7', 'gfqlqk1395814571', '联系电话');
INSERT INTO `tp_img` VALUES ('45', '74', '新长城自强社', '爱心宿舍', '2', '', '84', '爱心宿舍', '', '1', '<img border=\"0\" alt=\"\" src=\"http://www.apiying.com/tpl/static/kindeditor/plugins/emoticons/images/0.gif\" />该系统录入数据中，给您带来不便，请谅解！', '', '1395823357', '1395824312', '14', 'wgsiap1395669220', '爱心宿舍查询系统');
INSERT INTO `tp_img` VALUES ('46', '74', '新长城自强社', '工作招聘', '2', '', '87', '工作招聘', '', '1', '该系统录入数据中，给您带来不便，请谅解！', '', '1395823463', '1395824299', '11', 'wgsiap1395669220', '工作招聘');
INSERT INTO `tp_img` VALUES ('47', '74', '新长城自强社', '实习岗位', '2', '', '86', '实习岗位', '', '1', '该系统正在完善中，给您带来不便，请您谅解', '', '1395823543', '1395824289', '11', 'wgsiap1395669220', '实习岗位');
INSERT INTO `tp_img` VALUES ('48', '74', '新长城自强社', '我的饮食', '2', '', '88', '我的饮食', '', '1', '<img border=\"0\" alt=\"\" src=\"http://www.apiying.com/tpl/static/kindeditor/plugins/emoticons/images/2.gif\" />该系统在清明节后开放，主要包含青大学生食堂、长悦食堂以及园丁餐厅的最新菜品及优惠活动。', '', '1395823661', '1395824273', '13', 'wgsiap1395669220', '我的饮食');
INSERT INTO `tp_img` VALUES ('49', '74', '新长城自强社', '休闲娱乐', '2', '', '89', '休闲娱乐', '', '1', '<img border=\"0\" alt=\"\" src=\"http://www.apiying.com/tpl/static/kindeditor/plugins/emoticons/images/13.gif\" />该系统在清明节后开放，主要包含青大校内娱乐项目，敬请期待！', '', '1395823731', '1395824264', '8', 'wgsiap1395669220', '休闲娱乐');
INSERT INTO `tp_img` VALUES ('51', '74', '新长城自强社', '商品园地', '2', '', '90', '商品园地', '', '1', '该系统在清明节后正式开放！', '', '1395823819', '1395824235', '12', 'wgsiap1395669220', '商品园地');
INSERT INTO `tp_img` VALUES ('52', '74', '新长城自强社', '青大新闻', '2', '', '91', '青大新闻', '', '1', '该系统在清明节后正式开放，主要包含青大内发生的事情，很小，很学生的一个学生平台。', '', '1395823872', '1395824177', '12', 'wgsiap1395669220', '青大新闻');
INSERT INTO `tp_img` VALUES ('54', '74', '新长城自强社', '公益简报', '2', '', '83', '公益简报', '', '1', '该系统主要刊登青大校内一些公益活动的信息，清明节后正式上线，敬请期待！', '', '1395824844', '1395824844', '5', 'wgsiap1395669220', '公益简报');
INSERT INTO `tp_img` VALUES ('53', '74', '新长城自强社', '社团首页', '2', '', '107', '社团首页', '', '1', '<a href=\"http://www.apiying.com/index.php?g=User&m=Home&a=set&token=wgsiap1395669220\" target=\"_blank\">http://www.apiying.com/index.php?g=User&amp;m=Home&amp;a=set&amp;token=wgsiap1395669220</a>', '', '1395824522', '1395824522', '4', 'wgsiap1395669220', '新长城青海大学自强社首页');
INSERT INTO `tp_img` VALUES ('55', '69', 'xbmcyg', '企业介绍', '2', '新标门窗衣柜介绍', '97', '关于新标', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332d89ed2ed5.jpg', '1', '<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;广州市新标家居有限公司（原新标门业）于1999年在经济发达的中国广州成立。历经十余载的发展，新标在广州建立起了占地面积50000㎡的现代化的时尚定制家居生产基地，率先引进了先进的科研技术、进口先进的生产设备以及现代化经营理念和国际化的检验标准流程，形成了科学的现代化管理控制体系，实现了定制门、窗、衣柜时尚风格一体化的家居解决方案。2012年正式更名为广州市新标家居有限公司，启动泛家居运营策略，目前拥有员工500多名，年产能突破1500万㎡，是国内定制家居品牌领导者之一。<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2008年，新标家居建立起“SIMBOR新标”品牌运营策略，开始以品牌为导向的市场营销模式，并坚持不渝地走品牌化营销路线。2011年，巨资签约香港巨星古天乐为品牌代言人，启动“百城千店”工程计划， “SIMBOR新标”在夯实品牌建设基础上扩张销售网络，致力于打造“行业最畅销”时尚风格一体化定制家居品牌。&nbsp;&nbsp; <br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“SIMBOR新标”秉承“质量第一，服务至上”的企业宗旨，时刻坚守“高标准、精细化、零缺陷”的质量标准，严格生产工艺流程，确保产品品质满足客户的需求。坚持“坦诚 务实 高效 开拓”的经营理念，倡导“快乐工作，快乐生活”的人文生活理念，为千万家庭提供风格家居一体化解决方案。\r\n</p>', '', '1395841193', '1395841193', '0', 'wdkszz1395625484', '企业介绍');
INSERT INTO `tp_img` VALUES ('56', '69', 'xbmcyg', '董事长寄语', '2', '新标门窗衣柜董事长寄语', '97', '关于新标', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332dc9b4f423.jpg', '1', '<strong><span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;在全国经济一体化，信息时代即将来临的今天，将迎来一个充满机遇与挑战的新世界。新标将以海纳百川的胸襟，百折不挠的气魄，致力于公司的改革，走好国内外市场，融入全球化的供应系统，重质量、讲信誉，以人为本是我们成长的基石，从呱呱坠地到蹒跚学步，从成长到走向全国，我们历尽艰辛，每一步迈向成功的步伐，无论是多么微小，我们都为自身在创造中所实现的价值而欢欣鼓舞，客户的每滴赞誉和微笑都会给我们带来无限欢乐!</span></strong><br />\r\n<p>\r\n	<strong><span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp; 顾客的满意就是我们奋斗的目标，我们将不断进取，努力改善企业的软硬件设施，增强企业的核心竞争力，不懈追求一流技术，卓越品质，完善服务，营造人性化的管理环境，创造新标特色的企业文化和经营理念，竭诚为您服务。</span></strong>\r\n</p>\r\n<br />\r\n<p>\r\n	<strong><span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp; SIMBOR新标网站的建立，拉近了你我的距离，您的需要，是我们的追求，您的关爱，是我们的动力，把您的手与我们的手握在一起，共创未来!</span></strong>\r\n</p>\r\n<br />\r\n<p>\r\n	<strong><span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp; 最后，我热忱欢迎朋友们来公司考察、洽谈！</span></strong>\r\n</p>\r\n<img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/sort/month_1208/201208131359585970.jpg\" /> \r\n<ul>\r\n	<li>\r\n		黄东江\r\n	</li>\r\n	<li>\r\n		中国著名企业家\r\n	</li>\r\n	<li>\r\n		中国装饰行业联合会理事\r\n	</li>\r\n	<li>\r\n		广东省门业协会副会长\r\n	</li>\r\n	<li>\r\n		新标家居董事长兼总经理\r\n	</li>\r\n</ul>', '', '1395842178', '1395842246', '0', 'wdkszz1395625484', '董事长寄语');
INSERT INTO `tp_img` VALUES ('57', '69', 'xbmcyg', '技术支持  哪家公司给你们做的', '2', '技术支持—西宁启鸿信息技术有限公司', '101', '技术支持', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332e01fab963.jpg', '1', '<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">本平台由西宁启鸿信息技术有限公司提供技术支持。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">技术热线：0971-4322069&nbsp; 4322070</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">手机：13997137252（刘经理）</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">客服QQ：800027868</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">公司地址：西宁市城北生物园村经四路26号青海青年创业园</span> \r\n</p>', '', '1395843105', '1395845025', '2', 'wdkszz1395625484', '技术支持—西宁启鸿信息技术有限公司');
INSERT INTO `tp_img` VALUES ('58', '69', 'xbmcyg', '企业文化', '2', '新标企业文化', '97', '关于新标', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332e0b92af1b.jpg', '1', '\r\n	<p style=\"text-align:left;\">\r\n		&nbsp;第一、企业理念\r\n	</p>\r\n	<p>\r\n		&nbsp;\r\n	</p>\r\n	<p>\r\n		☆品牌愿景——成为中国家居定制行业最畅销品牌&nbsp;\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “打造市场最畅销品牌”的愿景定位，既根植于新标十多年专注家居行业，也立足于现状，寄望于良好的市场发展前景，指向令人振奋的美好未来。\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新标人领跑家居定制一体化，敢为人先，并善于整合资源，乘势发展。以品质为驱动力，擅长于差异化市场竞争，使企业成为结构合理、制度先进、管理科学、具有较强核心竞争力的现代化企业。矢志成为行业品质典范，深受消费者喜爱的风格化家居定制产品，塑造成市场最畅销的家居品牌！\r\n	</p>\r\n	<p>\r\n		&nbsp;\r\n	</p>\r\n	<p>\r\n		<br />\r\n☆企业使命—— 创造时尚家居定制新标准\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “打造百年品牌”是新标门业的使命和承诺，这不仅让全体企业员工充满使命感和成就感，更让包括客户、供应商、社会、环境在内的新标各个关系体备受鼓舞和获益。这将不断地鞭策着新标对产品工艺的精益求精，强化对产品研发与设计的引导力，让新标品牌成为品质、创新、智领的代名词，进而成就百年品牌，打造深受社会尊重的百年品牌企业。\r\n	</p>\r\n	<p>\r\n		&nbsp;\r\n	</p>\r\n	<p>\r\n		☆企业核心价值观—— 创新竞争 品质共赢 团结高效&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “责任”不仅包括企业对员工的责任，还包括对消费者、经销商、供应商、社会和环境的责任，这要求企业必须超越把利润作为唯一目标的传统理念，强调要在生产过程中对人的价值的关注，强调对消费者、对环境、对社会的责任。“付出”是达成共赢的前提条件，当企业对各种关系体的存在、发展和进步承担责任，培育进步土壤时，各种关系体也在全力呵护和支持企业的发展壮大，为新标成就百年品牌奉献智慧。\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 作为追求百年品牌的新标倡导共赢理念，共赢不仅指员工和企业，而且包括客户、供应商、社会、自然等各个关系体，共创共享，共谋发展；共赢理念也在促进新标的各种关系体在激情的拼搏中，成就一种相互信任，同舟共济，共创共享的关系，进而促进新标这艘家居定制巨轮驶向成功的彼岸。\r\n	</p>\r\n	<p>\r\n		&nbsp;\r\n	</p>\r\n	<p>\r\n		☆经营理念—— 坦诚 务实 高效 开拓\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新标门业秉承一贯的坦诚、务实行事理念，进行以客户为尊的经营活动，进而脚踏实地地组织研发、生产、销售、宣传、服务等工作，加强经营管理，完善服务体系，确保企业处于高效运作状态。同时，新标对产品工艺的精益求精，对产品研发与设计引导力孜孜不倦，积极渗透到前人未涉领域，勇于开拓，智领行业发展。\r\n	</p>\r\n	<p>\r\n		&nbsp;\r\n	</p>\r\n	<p>\r\n		☆质量理念—— 高标准 精细化 零缺陷\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 精雕细琢的工艺，坚如磐石的品质，让新标十多年一直处于稳健高速的发展状态，新标人明白，企业之发展，一切源于客户的信赖，而新标正是严格恪守了高标准，精细化，零缺陷的质量理念，才获得客户的信赖。在该质量理念的引导下，新标产品不仅要符合国际标准，而且要逐步提升到国际先进标准，进而使得“SIMBOR新标”产品为消费者所认同、青睐和喜爱，最终把新标打造成最畅销品牌。\r\n	</p>\r\n	<p>\r\n		&nbsp;\r\n	</p>\r\n	<p>\r\n		☆营销理念——差异化 创标杆 强品牌\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新标公司从创业之始就注重品牌运营，注意凝聚并提炼企业的核心竞争力，并在明确品牌的定位和目标群的基础上，围绕品牌的建立和持续发展进行营销活动，赋予品牌生命力，铸造强有力的品牌------SIMBOR新标\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “差异化 创标杆 强品牌”的营销理念，正是在造“SIMBOR新标”品牌的宗旨和旗帜下，对具体行业领域进行具体分析，果断采取差异化的营销策略，把细分专业市场做透做深，在各个细分专业市场获取优势地位。“差异化”为“创标杆”奠定基础，新标人积极渗透到前人未涉领域，勇于探索，敢为人先，进而缔造行业新标杆。在新标杆树立之时，针对不同的市场采取相应的策略，不分昼夜地进行点对点攻坚，成就强势品牌。\r\n	</p>\r\n	<p>\r\n		&nbsp;\r\n	</p>\r\n	<p>\r\n		☆服务理念—— 以客为尊&nbsp; 热情诚恳\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “以客为尊”，集中说明新标的服务目标一切以客户需求为出发点，满足甚至超越客户的服务价值。在经济全球化，竞争日益加剧的时代，服务创造价值，服务带来效益已成为共识，基于此新标人恪守“热情诚恳”的客户服务态度，让客户时刻尊享到新标的品质服务。\r\n	</p>\r\n	<p>\r\n		&nbsp;\r\n	</p>\r\n	<p>\r\n		☆人才理念——厚德重技 内部优先\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新标人来自五湖四海，共谋百年品牌，在打造百年品牌的征途上，奉行“厚德重技内部优先”的人才理念。 在以技术、能力去衡量人才、选拔人才之时，亦以品德去加以规范，建立一支德才兼备，高效运作的团队。新标倡导责任，共赢理念，坚持不懈地塑造员工的归属感，为员工建立和培养晋升的平台，因此每逢人才选拔，新标在厚德重技的指导下，实行“内部优先”的原则，优先培养和提拔内部人才，构建具有强烈归属感的团队。\r\n	</p>\r\n	<p>\r\n		&nbsp;\r\n	</p>\r\n	<p>\r\n		&nbsp;☆学习理念—— 学无止境 学以致用\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 发展中的新标，深刻体验到学习型企业的重要性。只有企业和员工树立起学习意识，才能时刻面对所处环境的变化。通过学习和磨练，提升自身素养和水平，使新标门业的发展步伐更为坚实。\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新标人倡导“学无止境 学以致用”的学习理念，要不断学习和提高时刻保持对创新、对新机会的敏锐嗅觉和对机遇的掌握力，知识无穷，学无止境；学习的目的是应用，以知识革新管理制度，创新工艺，打造高品质，超越客户价值的服务系统，满足人类对高品质家居产品的需求，彰显新标人为社会发展而贡献的价值和才智！\r\n	</p>\r\n	<p>\r\n		&nbsp;\r\n	</p>\r\n	<p>\r\n		☆竞争理念——源源不断的创新\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在竞争纷繁的市场环境下，新标门业从产品竞争力、品牌形象、产品推广、终端形象、渠道等方面严格恪守竞争的精准化原则，杜绝泛滥竞争，明确对手，明确自身消费群体，并在此基础上，充分整合市场和行业的优势资源，以创新手段赢取机会，赢得市场，赢得消费者。\r\n	</p>\r\n	<p>\r\n		&nbsp;\r\n	</p>\r\n	<p>\r\n		第二、广告语：畅开风尚 乐享自由\r\n	</p>\r\n	<p>\r\n		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 迷恋一种唯我格调，寻味一刻休闲预约。随心开合，畅享风尚……<br />\r\n&nbsp;\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		&nbsp;<img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/sort/month_1208/201208141449285108.jpg\" />&nbsp;<br />\r\n古天乐代言新标\r\n	</p>\r\n	<p style=\"text-align:left;\">\r\n		<br />\r\n第三、广告语诠释<br />\r\n&nbsp;<br />\r\n畅开：畅开胸怀、打开心灵迎接美好的生活，寓意新标门业品质非凡、持久耐用，顺畅地开合，迎接幸福生活；<br />\r\n&nbsp;<br />\r\n风尚：潮流、时尚的风格，正如我们产品的核心价值：时尚、个性、风格；<br />\r\n&nbsp;<br />\r\n畅开风尚：犹如新标产品工艺精湛、持久耐用的优越品质，引领家居定制时尚潮流；<br />\r\n&nbsp;<br />\r\n乐：有两重意义<br />\r\n1、取之新标形象代言人古天乐先生中的“乐”字，为今后品牌传播借助名人效应，达到快速提升消费者的关注率的目的；<br />\r\n2、新标企业文化提倡快乐工作，愉悦生活，在身心适悦环境中快乐工作，使产品在设计、生产过程中更加人性化，更加用心去呵护，才能达完美的品质；<br />\r\n&nbsp;<br />\r\n享：是生命自身产生愉悦、美好的一种体验与感觉。快乐地享受生活是生命赋予我们最初使命，也是人类在工作、生活中追求愉悦、美好的最高境界；<br />\r\n&nbsp;<br />\r\n自由：置身于优美的环境，放松心情，无拘无束、率性表现自我；犹如新标随心定制产品，不受环境拘泥，随时随地为您打造时尚、个性家居产品。<br />\r\n&nbsp;<br />\r\n&nbsp; <br />\r\n第四、\"SIMBOR\"品牌诉求<br />\r\n&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 势头强劲的“SIMBO新标”品牌是国内最知名的时尚风格家居一体化定制品牌之一，由国内著名建筑设计师黄东江先生创立。延承时尚和健康的理念，“SIMBOR新标”品牌以举世驰名的简约时尚设计风格，以及对材料本身质地与舒适度的苛刻态度，在不断创新的家居定制行业中独树一帜。\r\n	</p>\r\n	<p style=\"text-align:center;\">\r\n		<br />\r\n&nbsp;<img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/sort/month_1208/201208141449439766.jpg\" />&nbsp; <br />\r\nSIMBOR新标智领生态门时代\r\n	</p>\r\n	<p style=\"text-align:left;\">\r\n		<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “为世界每个家庭提供最优质的家居生活环境”是SIMBOR新标的品牌使命。对创新的不懈努力，是SIMBOR新标能够在家居制定行业引领导时尚的主要原因，十多年来新标企业不断革新，始终坚持对高品质的追求，精湛的做工让它成为了经得起时间锤炼的代名词。对“SIMBOR新标”最好的产品注释，就是“时尚、简约风格一体化的舒适定制产品”，产品风格不仅时尚、优雅，而且简约，是新新人类乐享家居生活的首选产品。从美式田园风格到欧洲简约风格，从实用到高雅，所有这些都在“SIMBOR新标”产品优良的材质、时尚而简约的风格，引领潮流的设计中得以完美的彰显。<br />\r\n&nbsp;\r\n	</p>\r\n\r\n\r\n', '', '1395843276', '1395843276', '0', 'wdkszz1395625484', '新标企业文化');
INSERT INTO `tp_img` VALUES ('59', '69', 'xbmcyg', '新标品牌历程', '2', '新标品牌历程', '97', '关于新标', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332e12f05bdf.jpg', '1', '<p>\r\n	<span style=\"font-size:16px;\">1、1999年\r\n	新标塑钢门窗厂正式成立并投产； </span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">2、&nbsp;2002年&nbsp;&nbsp;\r\n	产品转型，专注于铝合金门类产品的研发生产销售；</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">3、\r\n	2003年&nbsp; \r\n	销售渠道转型，面向全国招商；</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">4、\r\n	2004年&nbsp; \r\n	产品通过了ISO9001：2000国际质量体系认证，荣获了《中国著名品牌》、《中国优秀绿色环保产品》等荣誉称号；</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">5、\r\n	2005年&nbsp;\r\n	新标工业园竣工，并正式投产运营；</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">6、2006年&nbsp; \r\n	研发炫弧系列产品，并成功推向市场，引领了行业推拉门时尚潮流； </span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">7、&nbsp;2007年&nbsp; \r\n	产品升级，推出了科技环保时尚产品——生态门，将产品涵盖了全屋内门；\r\n8、	2008年&nbsp; \r\n	建立起以“SIMBOR新标”品牌运营战略，全面导入CIS品牌建设，使新标产业有了一个跨越式的升级； </span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">9、&nbsp;2009年&nbsp; \r\n	品牌升级定位为“时尚内门艺术家”，以“一扇门一个世界”的品牌文化理念推广，全新导入“门窗艺术生活体验馆”终端情景专卖系统； </span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">10、&nbsp;2010年&nbsp; \r\n	产品再次全面升级，成功引进了定制衣柜项目，国内首家推行门、窗、衣柜风格一体化定制； </span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">11、&nbsp;2011年&nbsp; \r\n	通过 “中国环境标志产品”权威认证；聘请香港巨星古天乐为“SIMBOR新标”品牌形象大使；启动“百城千店”工程计划； </span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">12、&nbsp;2012年&nbsp; \r\n	正式更名为广州市新标家居有限公司，成为广东省门业协会副会长单位，以一体化为纽带启动“大家居时代，精细化经营”模式；</span><br />\r\n<span style=\"font-size:16px;\"> 13、2013年\r\n		与古天乐展开深入合作，启动行业首创双色阳光房项目，三大产业（门、窗、衣柜）大店经营模式全面开展；</span>\r\n</p>', '', '1395843392', '1395843482', '0', 'wdkszz1395625484', '新标品牌历程');
INSERT INTO `tp_img` VALUES ('60', '69', 'xbmcyg', '企业新闻', '2', '2014有你更精彩', '98', '新闻中心', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332e21ee7661.jpg', '1', '<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	<a href=\"http://www.gdxinbiao.com/upLoad/news/month_1401/201401061109493929.jpg\"><img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1401/201401061109493929.jpg\" /></a>\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp;\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp;十余载岁月，十余载历程，一路上有你相伴，新标家居取得了骄人的成绩，我们实现了全国销售额腾飞的一年，2013年同样也是新标家居有限公司发展史上具有里程碑意义的一年，在这一年里，新标家居有限公司在黄东江总经理的带领下及各位同事们的共同努力下，我们克服了各种困难，在激烈的市场竞争中，保持了旺盛的增长势头，取得了骄人的成绩，企业综合竞争实力进一步增强，社会效益增长迅猛。借此辞旧迎新之际，新标家居有限公司向社会各界朋友致以新年的问候和衷心的感谢，因为有你，新标家居才会变得更精彩。\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; 感谢所有支持新标家居的消费者。我们深知，新标家居所取得的每一点进步和成功，都离不开消费者的关注、信任、支持和参与。您的理解和信任是我们进步的强大动力，您的关心和支持是我们成长的不竭源泉。我们将为顾客提供更加周到和满意的服务，帮客户营造温馨的家。\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; 感谢所有新标家居的家人，感谢你们选择新标家居作为职业生涯的一部分，在充满机遇和挑战的市场环境中，因为有你们，公司一道创造了一个又一个销售额奇迹。你们用勤劳、智慧和时间成就了新标家居的事业，无论任何时候，你们都是公司最宝贵的一笔财富。公司唯有打造更大的平台，建立更公平、完善的制度来回报你们的努力，让你们通过新标家居找到属于自己的一片天空！\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; 供应商是企业重要的外部资源，是企业成本控制的主要源头和风险控制的重要源头。企业与供应商关系的紧密程度和供应商的实力，在很大程度上决定了我们的成本竞争能力和抗风险能力。\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; 十余载来我们始终秉承着诚信、双赢的合作理念，诚信是我们中华民族的传统美德，也是新标家居有限公司生存发展之本，我们在创建企业之初，就牢固树立诚信经营，诚信合作的理念，公司发展壮大之路是一条用诚信铺成之路。\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; 双赢是我们合作的目的，我们总是把双赢作为合作发展的目标，把合作方的利益放在与公司利益同等重要的位置一起考虑。要实现双&nbsp;&nbsp;&nbsp; 赢的合作局面，合作的双方都能站在最终的客户立场上多想想、多体谅、多考虑双方的利益，这样才能推动合作向纵深发展，从而促进合作双方公司企业的共同发展。\r\n</p>\r\n<p>\r\n	 2014年，是我们12生肖中最勤奋的马年，希望在这充满吉祥与挑战的新年中，在以黄东江总经理的带领下，大家齐心协力，团结奉献，创造2014年的辉煌成绩！！！\r\n</p>\r\n &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \r\n\r\n	<br />\r\n', '', '1395843642', '1395843642', '0', 'wdkszz1395625484', '2014有你更精彩');
INSERT INTO `tp_img` VALUES ('61', '69', 'xbmcyg', '企业新闻', '2', '超越梦想•赢在马年——新标家居有限公司2014年迎春晚会暨2013年表彰大会', '98', '新闻中心', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332e25e6920e.jpg', '1', '<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;1月10日，以“超越梦想，赢在马年”为主题的广州市新标家居有限公司2014年迎春晚会暨2013年表彰大会在增城市标记大酒店隆重举行，全体员工及众多供应商伙伴，齐聚一堂，共话家事。\r\n</p>\r\n<p>\r\n	<img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1402/201402101148346505.jpg\" />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24pt;\">\r\n	迎春晚会暨表彰大会上，总经理黄东江先生发表了重要的新年致辞，简要汇报了公司2013年度的基本面，公布了公司2013年度的销售业绩，同比去年增长45%以上。最后黄总围绕创新改革的2014年作了总体规划：\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24pt;\">\r\n	铁腕监控，提升产品品质；\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24pt;\">\r\n	继续发力，积极拓展营销渠道；\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24pt;\">\r\n	培训输出，加强对终端店面进行督导服务；\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24pt;\">\r\n	继续打造品牌，提升产品研发设计能力。\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; 黄总以其极富感染力的发言，赢得了台下员工热烈的掌声！在肯定公司成绩的同时，黄总也明确指出运营上存在着一些薄弱环节，他呼吁大家简单高效，直面问题，解决难题，全面提升企业效益。黄总提出，新标家居2013年组织变革、服务质量提升；2014年公司的核心关键词是‚大店年，全面以市场为导向，真心让经销商赚钱，切实为经销商服务，进行精细化市场运作以终端店面销售拉动公司运营，实现消费者、经销商和公司三者共赢共利。\r\n</p>\r\n<p>\r\n	<img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1402/201402101149351841.jpg\" />\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; 目标凝聚力量，使命催人奋进。2014年，新标家居公司将以更激昂的信心，共同承诺‚将凝聚更多正能量，同心同德，实干兴企，朝着“打造市场最畅销品牌”的目标进一步迈进！\r\n</p>\r\n<p>\r\n	<img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1402/201402101150215174.jpg\" /><img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1402/201402101150409911.jpg\" /><img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1402/20140210115058331.jpg\" />\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; 会上还对年度最佳新人、安全生产标兵、质量先进个人、优秀员工、技术骨干、优秀干部、营销精英进行了隆重表彰，受奖的干部和员工纷纷表达了对公司的感恩之情，表达了继续追随公司发展的决心和信心！\r\n</p>\r\n<p>\r\n	<img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1402/201402101151397414.jpg\" />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24pt;\">\r\n	总结表彰大会结束后，场内一片喜庆，高潮迭起。在晚会上，新标家居员工大显身手，（越来越好）、（真心英雄）、（飞得更高）等一系列节目，给台下观众带来了一场场视觉和听觉的盛宴，充分展示了新标人良好的精神风貌和审美情趣，博得了现场观众阵阵热烈的掌声和欢乐的笑声。&nbsp; \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24pt;\">\r\n	为感恩和犒劳员工，新标家居公司晚会还穿插了丰厚的“抽取大奖，人人有送”的抽奖活动，台下观众的气氛非常热烈，更把全场的氛围带到了最高潮。\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp;一年一度的新春联欢晚会，是新标家居全体员工的一场企业文化Party，大家在享受美酒佳肴、观赏精彩节目、抽中大奖惊喜的同时，也加深了对新标家居的无比忠诚与热爱。\r\n</p>', '', '1395843698', '1395843698', '0', 'wdkszz1395625484', '超越梦想•赢在马年——新标家居有限公司2014年迎春晚会暨2013年表彰大会');
INSERT INTO `tp_img` VALUES ('62', '69', 'xbmcyg', '企业新闻', '2', '爆破2014——新标家居全国经销商年会圆满落幕', '98', '新闻中心', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332e2912bf55.jpg', '1', '<p style=\"text-align:center;\">\r\n	<span style=\"font-size:16px;\">新希望·星闪耀·新荣耀·新政策·新观念·新篇章</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp; &nbsp; 春回大地喜迎八方归雁，万子豪程开启崭新篇章。2014年2月27日，广州市新标家居有限公司“爆破2014” 全国经销商年会于广州万子豪程大酒店圆满落幕。这是一场特殊的盛宴，没有媒体、没有镁光灯、没有采访……它是一场仅属于新标家人的家宴，新标公司高层领导、行业专家、经销英才三百余位荟聚一堂，分享2013收获喜悦，共商赢领未来的突破大计。</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历经14年风雨，广州市新标家居于逆势而上，顺势而为，在提出门、窗、衣柜一体化定制概念后，稳坐一体化定制界头把交椅，在过去的一年不仅收获了集成化家居生活馆的专卖店理论，年销售额增长量近50%，\r\n	新起点·新希望\r\n。</span>\r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会上董事长兼总经理黄东江发表了热情洋溢的欢迎辞，对新标2013年集成化家居生活馆的推广给予了肯定，就销售业绩、市场活动、产品把控、产能提高一一进行总结，同时表达了2014的期望和憧憬，为了爆破2014，实现销量翻番的目标，新标已经着手建立新的衣柜生产基地，新增2条德国豪迈生产线，组建一批更专业的队伍，加速产能建设；除此之外，营销团队、品牌建设更不容轻视，新的一年新标将以产品为根基，建立品类识别品牌，品牌突围指日可待；另外，新标首次触电，以广州自营店试水电商O2O模式，将新标天猫店与线下体验店相结合取得了长足的发展，这极大程度上也激发了新标进军电商的决心。 </span><img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/201403071208222959.jpg\" /><span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新起点·星闪耀 </span><img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/201403071208302842.jpg\" /><span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp; 星光大道上星光闪耀，此时的明星就是新标全国经销团队的精英们\r\n	新起点·新荣耀\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在坦诚务实的经营理念中，新标取得了“铝门十大品牌”的荣誉，做精产品类目后，毅然决定进军集成化大家居，成为业界第一个门窗衣柜一体化定制品牌，为消费者提出全屋风格化装修解决方案。随着经营类目和品质的稳步扩张，聘请影视巨星古天乐为新标形象代言人等系列品牌动作，使得新标得到广大消费者的认可和喜爱，各经销商也成为新标的忠实追随者，一路相伴，共享成功的喜悦。 </span><img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/201403071208175229.jpg\" /><span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp; 大会颁发了众多奖项，万众瞩目的销量奖得主是大家心中的偶像，也是在座每位努力地目标\r\n	新起点·新政策</span>\r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2013新标为全国专卖店的各项促销活动给予了大力的支持，从培训到店面氛围营造，全程跟踪活动执行落地到效果评估，对各地活动的支持也取得了优异的成效，全年活动销量在总销量中占到极大部分。在新的一年，新标更是制定了更全面细致的活动支持策略，鼓励经销商多做活动、做好活动，同时，一连串的奖励机制就是为了让全国经销商精耕细作区域市场，大销量，销量翻番。 </span><img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/201403071207599734.jpg\" /><span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 种下目标的种子，全力以赴\r\n	新起点·新观念</span>\r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 站在更高的起点追寻更高的目标，新标将在集成化全屋门窗衣柜一体化定制有更深远的发展，网络化时代势不可挡，如何将传统产业与网络化营销相结合，这是行业面临的新问题，也是新标接受的新挑战，消费者行为已经由实体购买转向网络消费，再由pc转移到移动端，消费者行为的改变让大家不得不改变营销规则。另一方面，微博、微信等社会化媒体被广泛使用，企业品牌与消费者可以进行面对面对话，形成了有效沟通，更利于品牌的长期经营，新标将在新的一年把网络化更深入地融入产业经营中，展现出一个创新型家居品牌的领导风范。 </span><img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/201403071208054439.jpg\" /><span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 只为完成目标找方法，制胜起点\r\n	新起点·新篇章</span>\r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 台下举杯畅饮，台上鼓舞飞扬。一年一度的新标年会是大家交流学习、分享经验、商讨未来的时刻，更是全体新标家人归家过年的时光，在此无需拘束，尽情享受饕餮晚宴，欢歌笑语，开启崭新篇章。 </span><img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/201403071208115999.jpg\" /> \r\n</p>\r\n<p>\r\n	<img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/201403071523575095.jpg\" /> \r\n</p>', '', '1395843773', '1395843922', '0', 'wdkszz1395625484', '爆破2014——新标家居全国经销商年会圆满落幕');
INSERT INTO `tp_img` VALUES ('63', '69', 'xbmcyg', '企业新闻', '2', '新标门窗衣柜征战第五届中国门博会', '98', '新闻中心', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332e37fe599c.jpg', '1', '<p style=\"text-align:center;\">\r\n	&nbsp;\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	2014年3月19至21日，家居整体定制专家——广州市新标家居有限公司，携手古天乐盛装出席第五届门业博览会，占据4号馆4E01展位。作为国内最具专业性质的门业展会之一，门博会为来自全国的门业精英与著名门企架起了一座沟通的桥梁，是国内门业界互相学习、共同成长的盛宴。\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	&nbsp;\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b>15</b><b>年专业铝制门制造</b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b></b><img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/201403131707112389.jpg\" />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	&nbsp;\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	新标成立于1999年，伴随着定制家居业兴起和兴盛，一路走来成为门业界的见证者和推动者，作为国内门业领军品牌，新标不仅是业内认可的“十大铝门品牌”，更是消费者口中的“购房者首选家居品牌”，这些无数个沉甸甸殊荣是新标实力的印证，品牌的象征。\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	每一个细小的螺丝、铝型材的厚度、颜色、光泽度都是新标铝门精益求精的品质基石；每一个拼角的拼接、每一块玻璃的雕磨、每一块板材的切割、排钻都是新标对完美细节不懈追求的体现。品牌的力量在于细节累积散发的光芒，拥有着非凡的魅力，新标于全国500多个城市构筑起来的销售网点，为千家万户提供品质卓越的家居产品。\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	&nbsp;\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/201403131707238816.jpg\" /><!--[endif]-->\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	&nbsp;\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b>专业打造门窗衣柜整体风格馆</b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	&nbsp;\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	如果说铝制门窗是新标巨人，那么新标整体衣柜则是站在巨人肩上启航的航母，继铝门成为业界佼佼者之后，新标整体衣柜项目扩大，对新标来说占有十分重要的战略性意义，它标志着新标由门窗界跨入集成化定制大家居范畴，并被业界人士誉为“门窗衣柜风格一体化定制的倡导者”。\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	整合了厨卫平开门、阳台推拉门、书房隔断门、卧室生态门、整体衣柜以及配套家居，新标整体理念从设计就开始融入整体配套思维，无论是用材的选择、颜色的搭配、零部件的选用、制作工艺的确定，均根据不同设计风格进行全屋独特定制，充分展现了个性居室的风采。<br />\r\n<!--[endif]-->&nbsp;\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b>全面提升情景化体验营销</b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	在情景化体验营销规划下，新标专卖店设计理念就是为消费者营造一个充满动感的家的感觉，通过创设一种生动感人的生活情境，向顾客描绘出产品使用过程所带来的美好画面，并通过顾客体验，激起顾客对这一生活情境的向往。\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	新标将门、窗、衣柜产品找到一个以时尚、艺术、个性为主题的居家情景，这也对店面所占面积提出了挑战，只有当店面至少达到足够大的面积才能较好地营造出情景化家居环境，所以，新标提出了专卖店店面面积200㎡以上的开店政策，一切调整政策均是以消费者体验为目标，立足终端消费群体需求，提供最优购物体验，轻松愉悦地促成销售，形成产品、体验、购物全程闭环流程。\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	<br />\r\n<!--[endif]-->\r\n</p>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"text-align:center;\">\r\n	<img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/201403131707429101.jpg\" />&nbsp;\r\n</p>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"text-align:center;\">\r\n	&nbsp;\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	带着目标与决心，新标踏上了崭新一年的征程，作为新年伊始的首个驿站，新标做足了充分的准备，首度将铂金系列、美悦系列、新雅阁系列、新金尚系列公诸于众，展会期间将有更多惊喜为大家一一揭晓，相信这将是业界精英同享的一场视觉盛宴；3月19至21日，新标家居与您相约广州·保利·4号馆4E01，不见不散。\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	&nbsp;\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	<img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/201403131720093161.jpg\" />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	&nbsp;\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	&nbsp;\r\n</p>', '', '1395843985', '1395843985', '0', 'wdkszz1395625484', '新标门窗衣柜征战第五届中国门博会');
INSERT INTO `tp_img` VALUES ('64', '69', 'xbmcyg', '企业新闻', '2', '新标家居春季新品发布会圆满成功', '98', '新闻中心', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332e3c2b220e.jpg', '1', '<p style=\"text-align:center;\">\r\n	&nbsp;香雪系列新品带您领略北欧田园舒适生活\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	&nbsp;\r\n</p>\r\n\r\n	2014年3月19日，伴随着第五届中国广州门业博览会的盛大开幕，新标家居新品发布会于广州保利博览馆顺利举行，这一新品系列发布会获得业界高度关注，在中国木材与木制品流通协会会长刘能文、中国木材与木制品流通协会副会长兼木门窗专业委员会会长张国林、中国木材与木制品流通协会名誉会长朱光前、亚太传媒董事长骆合理、《居舍•中国门窗》主编、广东省门业协会秘书长徐生、广东省衣柜协会秘书长曾勇等众多业界知名人士的见证下揭开“香雪系列”的神秘面纱。同时，在发布会现场，新标家居被授予“中国泛家居发展中企业500强”荣誉称号成为本届门博会一大亮点。\r\n\r\n\r\n	&nbsp;\r\n\r\n\r\n	<img alt=\"新标获中国泛家居发展中企业500强荣誉\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/201403240826513765.jpg\" />&nbsp;\r\n\r\n\r\n	新标家居被授予“中国泛家居发展中企业500强”\r\n\r\n\r\n	新标家居董事长兼总经理黄东江（左）中国木材与木制品流通协会会长刘能文（右）\r\n\r\n\r\n	&nbsp;\r\n\r\n\r\n	这可堪称为一次媒体聚焦大事件，南方都市报、广州日报、凤凰网、亚太家居、太平洋家居、新浪家居、搜狐网、搜房网、门道网等各大媒体竞相播报本次“香雪系列”新品，迎来了开展首日关注高峰。&nbsp;\r\n\r\n\r\n	&nbsp;\r\n\r\n\r\n	中午11：00，发布会正式开始，由新标家居大区营销市场总监肖海燕对新品进行发布，登上讲台她首先对与会嘉宾及媒体朋友的到来表示了诚挚的问候和谢意，随后便开始介绍香雪系列新品的设计理念，并表示对门窗衣柜全屋整体定制的前景十分看好。\r\n\r\n\r\n	&nbsp;\r\n\r\n\r\n	&nbsp;<img alt=\"新标家居香雪系列客厅\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/201403240826574555.jpg\" />\r\n\r\n\r\n	<b>新标新品香雪系列——客厅</b>\r\n\r\n\r\n	&nbsp;\r\n\r\n\r\n	<b>源自异国的浪漫基调——“香雪”</b>\r\n\r\n\r\n	香雪系列产品，顾名思义，“香”取自法国著名的浪漫圣地“香榭丽舍”的“香”；“雪”正是北欧风光中最典型的自然风光，也恰恰是这个系列的统一色调——雪花白。香雪则体现了一种法式的白色浪漫情调。\r\n\r\n\r\n	&nbsp;\r\n\r\n\r\n	<img alt=\"新标家居香雪系列衣帽间\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/201403240827023518.jpg\" />\r\n\r\n\r\n	<b>新标新品香雪系列——衣帽间</b>\r\n\r\n\r\n	&nbsp;\r\n\r\n\r\n	<b>“尖峰”对决——北欧古典or</b><b>时尚现代</b>\r\n\r\n\r\n	随着生活水平提高，越来越多的都市成功人士选择休闲、健康的生活方式；在家居上就越喜爱回归自然、恬静的田园风光，享受祥和、温馨生活，但是纯粹的返璞归真却显得格格不入。\r\n\r\n\r\n	带着如何能在古典中略带几分时尚，时尚中透着一丝复古的思考，新标寻求到了适合现代都市人的生活习惯的设计理念，于整体风格设计上糅合了欧式古典与现代简约的混搭风格，视觉上营造一个轻松舒适的空间氛围，功能上符合都市人快节奏的工作、生活习惯；就是本次隆重推出的鱼与熊掌兼得的系列产品——香雪系列。\r\n\r\n\r\n	<b>&nbsp;</b>\r\n\r\n\r\n	<b><img alt=\"新标家居香雪系列卧室\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/201403240827075002.jpg\" /></b>\r\n\r\n\r\n	<b>新标新品香雪系列——卧室</b>\r\n\r\n\r\n	&nbsp;\r\n\r\n\r\n	<b>集成化家居——门窗衣柜全套风格化定制</b>\r\n\r\n\r\n	新标展馆里展示着客厅、卧室以及衣帽间三大集成化定制家居风格体验间，产品囊括了柜类：电视柜、衣柜、酒柜、鞋柜、书柜、床头柜；门类：内门、外门；床类；再次体现了新标强有力的产品品类的横向和产品线纵向的整合能力。\r\n\r\n\r\n	“香雪系列”门窗采用经白色烤漆工艺的高品质铝材，柜选用的基材为实木颗粒板，表面饰以进口三聚氰胺白色纸，表面有雪花纹点缀，又有一定实木感，为家居生活创造出既有现代感又富有自然情调的北欧田园风情的系列家居产品。\r\n\r\n\r\n	在系列介绍、颁奖仪式及采访结束后，新标春季新品——香雪系列发布会在非常融洽和谐的氛围中圆满落幕。\r\n\r\n\r\n	&nbsp;\r\n\r\n\r\n	<img alt=\"新标家居香雪系列新品发布圆满成功\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/20140324082716201.jpg\" />\r\n\r\n\r\n	新标家居【香雪系列】新品发布圆满成功\r\n\r\n\r\n	&nbsp;\r\n\r\n\r\n	十五载征程里，凭借着勇于找差异、创新标、强品牌的理念，新标人积极渗透到前人未涉领域，于数年前率先跨界家居集成化定制模式，被业界誉为“门窗衣柜一体化定制首创者”。在新标杆树立之时，针对不同的市场采取相应的策略，不分昼夜地进行点对点攻坚，成就强势品牌。本次春季新品首发，向广大业界人士展示了一个实力强大的集成化定制家居品牌的魅力。\r\n\r\n\r\n	衣装代表了精神面貌，家居彰显着生活态度；新标家居去掉浮夸，专注产品，为广大消费者提供舒适、人性化的品质家居而不断努力，下期新品，有你更精彩，我们一同期待！&nbsp;\r\n\r\n\r\n	&nbsp;\r\n\r\n\r\n	&nbsp;<img alt=\"\" src=\"http://www.gdxinbiao.com/upLoad/news/month_1403/201403240843093883.jpg\" />\r\n\r\n<p>\r\n	&nbsp;\r\n</p>', '', '1395844050', '1395844050', '0', 'wdkszz1395625484', '新标家居春季新品发布会圆满成功');
INSERT INTO `tp_img` VALUES ('65', '69', 'xbmcyg', '产品体验', '2', '产品体验', '99', '产品体验', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332e46540e68.jpg', '1', '<p>\r\n	<a href=\"http://www.gdxinbiao.com/content/?606.html\" target=\"_blank\"><img title=\"阳光房2号\" class=\"attachment-small\" alt=\"阳光房2号\" src=\"http://www.gdxinbiao.com/upLoad/product/month_1308/201308021419273876.jpg\" /></a> \r\n</p>\r\n<p>\r\n	阳光房2号\r\n</p>\r\n<p>\r\n	<a href=\"http://www.gdxinbiao.com/content/?564.html\" target=\"_blank\"><img title=\"双色阳光房系列\" class=\"attachment-small\" alt=\"双色阳光房系列\" src=\"http://www.gdxinbiao.com/upLoad/product/month_1304/201304200850255500.jpg\" /></a> \r\n</p>\r\n<p>\r\n	双色阳光房系列\r\n</p>\r\n<p>\r\n	<a href=\"http://www.gdxinbiao.com/content/?453.html\" target=\"_blank\"><img title=\"德尚重型推拉门\" class=\"attachment-small\" alt=\"德尚重型推拉门\" src=\"http://www.gdxinbiao.com/upLoad/product/month_1208/201208291030596117.jpg\" /></a> \r\n</p>\r\n<p>\r\n	德尚重型推拉门\r\n</p>\r\n<p>\r\n	<a href=\"http://www.gdxinbiao.com/content/?430.html\" target=\"_blank\"><img title=\"丽依华\" class=\"attachment-small\" alt=\"丽依华\" src=\"http://www.gdxinbiao.com/upLoad/product/month_1208/201208290926408032.jpg\" /></a> \r\n</p>\r\n<p>\r\n	丽依华\r\n</p>\r\n<p>\r\n	<a href=\"http://www.gdxinbiao.com/content/?414.html\" target=\"_blank\"><img title=\"布莱克\" class=\"attachment-small\" alt=\"布莱克\" src=\"http://www.gdxinbiao.com/upLoad/product/month_1208/201208290834583964.jpg\" /></a> \r\n</p>\r\n<p>\r\n	布莱克\r\n</p>\r\n<p>\r\n	<a href=\"http://www.gdxinbiao.com/content/?243.html\" target=\"_blank\"><img title=\"雅律\" class=\"attachment-small\" alt=\"雅律\" src=\"http://www.gdxinbiao.com/upLoad/product/month_1208/201208280925559714.jpg\" /></a> \r\n</p>\r\n<p>\r\n	雅律\r\n</p>\r\n<p class=\"Pro_Bottom1\">\r\n	<a href=\"http://www.gdxinbiao.com/content/?250.html\" target=\"_blank\"><img title=\"罗可丹\" class=\"attachment-small\" alt=\"罗可丹\" src=\"http://www.gdxinbiao.com/upLoad/product/month_1208/201208280954288093.jpg\" /></a> \r\n</p>\r\n<p class=\"Pro_Bottom1\">\r\n	罗可丹\r\n</p>\r\n<p>\r\n	<a href=\"http://www.gdxinbiao.com/content/?375.html\" target=\"_blank\"><img title=\"欧式典雅床\" class=\"attachment-small\" alt=\"欧式典雅床\" src=\"http://www.gdxinbiao.com/upLoad/product/month_1208/201208281548087596.jpg\" /></a> \r\n</p>\r\n<p>\r\n	欧式典雅床\r\n</p>\r\n<p>\r\n	<a href=\"http://www.gdxinbiao.com/content/?509.html\" target=\"_blank\"><img title=\"经典榆木百叶衣柜\" class=\"attachment-small\" alt=\"经典榆木百叶衣柜\" src=\"http://www.gdxinbiao.com/upLoad/product/month_1210/201210301512312710.jpg\" /></a> \r\n</p>\r\n<p>\r\n	经典榆木百叶衣柜\r\n</p>\r\n<p>\r\n	<a href=\"http://www.gdxinbiao.com/content/?451.html\" target=\"_blank\"><img title=\"炫弧系列推拉门\" class=\"attachment-small\" alt=\"炫弧系列推拉门\" src=\"http://www.gdxinbiao.com/upLoad/product/month_1208/201208291027106755.jpg\" /></a> \r\n</p>\r\n<p>\r\n	炫弧系列推拉门\r\n</p>\r\n<p>\r\n	<a href=\"http://www.gdxinbiao.com/content/?449.html\" target=\"_blank\"><img title=\"生态门系列\" class=\"attachment-small\" alt=\"生态门系列\" src=\"http://www.gdxinbiao.com/upLoad/product/month_1208/201208291018458025.jpg\" /></a> \r\n</p>\r\n<p>\r\n	生态门系列\r\n</p>\r\n<p>\r\n	<a href=\"http://www.gdxinbiao.com/content/?448.html\" target=\"_blank\"><img title=\"银弧系列\" class=\"attachment-small\" alt=\"银弧系列\" src=\"http://www.gdxinbiao.com/upLoad/product/month_1208/201208291016265760.jpg\" /></a> \r\n</p>\r\n<p>\r\n	银弧系列\r\n</p>\r\n<p>\r\n	<a href=\"http://www.gdxinbiao.com/content/?447.html\" target=\"_blank\"><img title=\"银狐系列\" class=\"attachment-small\" alt=\"银狐系列\" src=\"http://www.gdxinbiao.com/upLoad/product/month_1208/201208291014295678.jpg\" /></a> \r\n</p>\r\n<p>\r\n	银狐系列\r\n</p>\r\n<p>\r\n	<a href=\"http://www.gdxinbiao.com/content/?446.html\" target=\"_blank\"><img title=\"尚锋系列\" class=\"attachment-small\" alt=\"尚锋系列\" src=\"http://www.gdxinbiao.com/upLoad/product/month_1208/201208291011011069.jpg\" /></a> \r\n</p>\r\n<p>\r\n	尚锋系列\r\n</p>\r\n<p>\r\n	<a href=\"http://www.gdxinbiao.com/content/?445.html\" target=\"_blank\"><img title=\"生态门系列\" class=\"attachment-small\" alt=\"生态门系列\" src=\"http://www.gdxinbiao.com/upLoad/product/month_1208/201208291007033205.jpg\" /></a> \r\n</p>\r\n<p>\r\n	生态门系列米兰\r\n</p>\r\n<p>\r\n	<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5333b3773dba3.jpeg\" alt=\"\" />\r\n</p>', '', '1395844167', '1395897293', '0', 'wdkszz1395625484', '新标衣柜产品体验');
INSERT INTO `tp_img` VALUES ('66', '69', 'xbmcyg', '联系我们 你们电话号码多少 你们在哪个位置 你们在哪', '2', '西宁新标衣柜店址', '100', '联系我们', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332e5d486a84.jpg', '1', '<p>\r\n	<span style=\"font-size:16px;\">地址：西宁市城西区居然之家万佳海湖店负1楼中厅。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：0971-4380111</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">手机：13099756599 </span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> 15989891178 （刘先生）</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">QQ：448734878</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">公司网址：<a href=\"http://www.simbor-china.com\" target=\"_blank\">www.simbor-china.com</a></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"> <a href=\"http://www.gdxinbiao.com\" target=\"_blank\">www.gdxinbiao.com</a></span> \r\n</p>\r\n<p>\r\n	<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5333b3773dba3.jpeg\" alt=\"\" />\r\n</p>', '', '1395844629', '1395897238', '0', 'wdkszz1395625484', '西宁新标衣柜店址');
INSERT INTO `tp_img` VALUES ('67', '7', '行者无缰', '微信案例', '2', '微信成功案例—西宁新标门窗衣柜', '41', '成功案例', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332ea8e2d3fd.jpg', '1', '<p>\r\n	<span style=\"font-size:16px;\">西宁新标门窗衣柜</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">1、微信号：xbmcyg。</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">2、二维码：</span>\r\n</p>\r\n<p>\r\n	<img alt=\"\" src=\"/data/ArticleImg/image/20140326/5332eb5f3247c.jpg\" /> \r\n</p>', '', '1395845985', '1395846027', '0', 'usyhhb1392205269', '微信成功案例—西宁新标门窗衣柜');
INSERT INTO `tp_img` VALUES ('68', '75', '逸山伍自转小火锅', '技术支持', '2', '技术支持—西宁启鸿信息技术有限公司', '109', '技术支持', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332f6e0a3a3f.jpg', '1', '<p>\r\n	公司名称：西宁启鸿信息技术有限公司\r\n</p>\r\n<p>\r\n	联系电话：0971-4322069 &nbsp;4322070\r\n</p>\r\n<p>\r\n	手机号码：13997137252（刘经理）\r\n</p>\r\n<p>\r\n	公司QQ：800027868\r\n</p>\r\n<p>\r\n	公司地址：西宁市城北生物园经四路26号\r\n</p>', '', '1395848995', '1395848995', '4', 'gfqlqk1395814571', '技术支持—西宁启鸿信息技术有限公司');
INSERT INTO `tp_img` VALUES ('69', '75', '逸山伍自转小火锅', '菜品系列', '2', '逸山伍自转小火锅菜品', '104', '菜品系列', 'http://www.apiying.com/data/ArticleImg/image/20140327/5332fa2a0e879.jpg', '1', '<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa64750e2.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa6699487.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa69822ec.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa6c74550.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa6e5fd51.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa7114cb5.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa74b21d3.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa7858309.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa7f3ce86.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa84ede8f.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa879f0bc.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa8d1bbc4.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa8fc83de.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa93139c3.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa966beb3.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa99753f7.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa9dc8642.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fa9fedf39.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332faa36d745.jpg\" alt=\"\" /><br />\r\n<p>\r\n	<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332faa6948ef.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fac7d2fc6.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332faccde35a.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fad1201a1.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fad400970.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fad734155.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fada7ec95.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fade6d546.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fae2468bc.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fae665eed.jpg\" alt=\"\" /><br />\r\n<img src=\"http://www.apiying.com/data/ArticleImg/image/20140327/5332fae8c64d5.jpg\" alt=\"\" /><br />\r\n</p>', '', '1395849963', '1395849963', '3', 'gfqlqk1395814571', '逸山伍自转小火锅菜品');
INSERT INTO `tp_img` VALUES ('70', '75', '逸山伍自转小火锅', '开业促销', '2', '逸山伍自转小火锅开业大酬宾', '105', '优惠促销', 'http://www.apiying.com/data/ArticleImg/image/20140327/5332fb7a556f6.jpg', '1', '<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"><strong>直接回复“砸金蛋”，即可参与本店开业大酬宾活动，诸多免单品尝及八折优惠等着您。</strong></span>\r\n</p>', '', '1395850164', '1395850191', '3', 'gfqlqk1395814571', '逸山伍自转小火锅开业大酬宾');
INSERT INTO `tp_img` VALUES ('71', '75', '逸山伍自转小火锅', '公司新闻', '2', '逸山伍自转小火锅开业大酬宾', '108', '公司新闻', 'http://www.apiying.com/data/ArticleImg/image/20140327/5332fc469984d.jpg', '1', '<p>\r\n	 &nbsp; &nbsp;尊敬的各位新老客户，逸山伍自转小火锅于2014年3月28日盛大开业，届时欢迎您及您家人、朋友的光临。\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; 开业之际，您可以享受免单及八折优惠，更多惊喜等着您，快快行动吧。\r\n</p>', '', '1395850394', '1395850394', '3', 'gfqlqk1395814571', '逸山伍自转小火锅开业大酬宾');
INSERT INTO `tp_img` VALUES ('72', '69', 'xbmcyg', '店铺管理', '2', '', '98', '新闻中心', 'http://www.apiying.com/data/ArticleImg/image/20140327/5333b6e5d446d.jpg', '1', '&nbsp;提升进店率的三大技巧：<br />\r\n一、宣传方面的促销，以扩大门店的知名度，为门店吸引客流。有组织的安排员工到周围商圈覆盖的人流量大的地方去派发传单，例如在商业区，周末派发；在工业区的上下班时间派发等；给老顾客进行回访，增加与顾客的沟通，告知顾客门店最新的营销政策，提升门店在区域市场内的亲和力。<br />\r\n&nbsp;<br />\r\n二、加强员工培训：有目的、有组织地让员工学习新的营销政策和销售技巧。反复在工作中出现的问题，要相互交流共同探讨解决。加强员工的参与性，让员工对公司新的营销政策出谋划策。<br />\r\n&nbsp;<br />\r\n三、创造愉悦的氛围：店长要有目的地制造气氛，要制造一种和谐、热烈的购物气氛，增加员工间的团结和互助性，让员工生活在一个温暖的大家庭里。播放动感音乐，让员工精神起来，或者讲一些开心的事，以使人气留在店中。<br />\r\n&nbsp;<br />\r\n对于门店的业绩提升，在这里还有两个锦囊妙计供参考：<br />\r\n&nbsp;<br />\r\n锦囊一：先“理”后“管”门店管理，要想业绩提升，我们只有先学会“理”，然后才能“管”。如果我们没找到问题所在，管再多也不会管在点子上。<br />\r\n&nbsp;<br />\r\n锦囊二：好兵还要好头带，影响店铺业绩至关重要的因素是在店长身上，因为店长的处事方式和性格特点，直接会决定店铺的风格和做事方式。所谓“一只狼带领的一群羊，可以打败一只羊带领的一群狼”就是这个道理。我们要想把业绩做得好，首先店长必须要全力以赴，时时刻刻影响并带领大家去做，团队中一定要有这样的领军模范人物。<br />', '', '1395898113', '1395898113', '1', 'wdkszz1395625484', '【没人进店？店长该怎么办？】');

-- ----------------------------
-- Table structure for `tp_indent`
-- ----------------------------
DROP TABLE IF EXISTS `tp_indent`;
CREATE TABLE `tp_indent` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `gid` tinyint(2) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` int(11) NOT NULL,
  `indent_id` char(20) NOT NULL,
  `widtrade_no` int(20) NOT NULL,
  `price` float NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_indent
-- ----------------------------
INSERT INTO `tp_indent` VALUES ('1', '1', '4', 'uutm', '充值vip会员1个月', '0', 'uutm1390145360', '0', '100', '1390145360', '0');
INSERT INTO `tp_indent` VALUES ('2', '1', '4', 'uutm', '充值vip会员12个月', '0', 'uutm1390145483', '0', '1200', '1390145483', '0');
INSERT INTO `tp_indent` VALUES ('3', '1', '4', 'uutm', '充值vip会员1个月', '0', 'uutm1390290439', '0', '100', '1390290439', '0');
INSERT INTO `tp_indent` VALUES ('4', '4', '4', 'nmgnmg', '充值vip会员1个月', '0', 'nmgnmg1390370481', '0', '100', '1390370481', '0');
INSERT INTO `tp_indent` VALUES ('5', '6', '4', 'htzhanglong', '充值vip会员1个月', '0', 'htzhanglong139166671', '0', '100', '1391666711', '0');
INSERT INTO `tp_indent` VALUES ('6', '7', '4', '行者无缰', '充值vip会员1个月', '0', '行者无缰1391826605', '0', '100', '1391826605', '0');
INSERT INTO `tp_indent` VALUES ('7', '7', '4', '行者无缰', '充值vip会员1个月', '0', '行者无缰1392726976', '0', '100', '1392726976', '0');
INSERT INTO `tp_indent` VALUES ('8', '18', '2', 'gaiminshuang', '充值vip会员2个月', '0', 'gaiminshuang13935157', '0', '2', '1393515782', '0');
INSERT INTO `tp_indent` VALUES ('9', '18', '2', 'gaiminshuang', '充值vip会员1个月', '0', 'gaiminshuang13935157', '0', '1', '1393515792', '0');
INSERT INTO `tp_indent` VALUES ('10', '18', '2', 'gaiminshuang', '充值vip会员2个月', '0', 'gaiminshuang13935158', '0', '2', '1393515847', '0');
INSERT INTO `tp_indent` VALUES ('11', '18', '4', 'gaiminshuang', '充值vip会员1个月', '0', 'gaiminshuang13935160', '0', '100', '1393516026', '0');
INSERT INTO `tp_indent` VALUES ('12', '18', '2', 'gaiminshuang', '充值vip会员1个月', '0', 'gaiminshuang13935161', '0', '1', '1393516114', '0');
INSERT INTO `tp_indent` VALUES ('13', '18', '3', 'gaiminshuang', '充值vip会员2个月', '0', 'gaiminshuang13935165', '0', '100', '1393516507', '0');
INSERT INTO `tp_indent` VALUES ('14', '18', '4', 'gaiminshuang', '充值vip会员12个月', '0', 'gaiminshuang13935167', '0', '1200', '1393516700', '0');
INSERT INTO `tp_indent` VALUES ('15', '59', '2', '放逐', '充值vip会员1个月', '0', '放逐1395222853', '0', '1', '1395222853', '0');
INSERT INTO `tp_indent` VALUES ('16', '67', '2', 'xinerd', '充值vip会员12个月', '0', 'xinerd1395560288', '0', '12', '1395560288', '0');
INSERT INTO `tp_indent` VALUES ('17', '72', '4', 'pjl7260321', '充值vip会员1个月', '0', 'pjl72603211395673165', '0', '100', '1395673165', '0');
INSERT INTO `tp_indent` VALUES ('18', '72', '4', 'pjl7260321', '充值vip会员1个月', '0', 'pjl72603211395673213', '0', '100', '1395673213', '0');
INSERT INTO `tp_indent` VALUES ('19', '72', '4', 'pjl7260321', '充值vip会员1个月', '0', 'pjl72603211395673295', '0', '100', '1395673295', '0');
INSERT INTO `tp_indent` VALUES ('20', '72', '4', 'pjl7260321', '充值vip会员1个月', '0', 'pjl72603211395673421', '0', '100', '1395673421', '0');
INSERT INTO `tp_indent` VALUES ('21', '72', '4', 'pjl7260321', '充值vip会员1个月', '0', 'pjl72603211395673499', '0', '100', '1395673499', '0');
INSERT INTO `tp_indent` VALUES ('22', '72', '4', 'pjl7260321', '充值vip会员2个月', '0', 'pjl72603211395673634', '0', '200', '1395673634', '0');
INSERT INTO `tp_indent` VALUES ('23', '72', '4', 'pjl7260321', '充值vip会员2个月', '0', 'pjl72603211395673649', '0', '200', '1395673649', '0');
INSERT INTO `tp_indent` VALUES ('24', '72', '2', 'pjl7260321', '充值vip会员1个月', '0', 'pjl72603211395674003', '0', '1', '1395674003', '0');
INSERT INTO `tp_indent` VALUES ('25', '72', '4', 'pjl7260321', '充值vip会员1个月', '0', 'pjl72603211395674237', '0', '100', '1395674237', '0');
INSERT INTO `tp_indent` VALUES ('26', '72', '4', 'pjl7260321', '充值vip会员1个月', '0', 'pjl72603211395674374', '0', '100', '1395674374', '0');
INSERT INTO `tp_indent` VALUES ('27', '72', '4', 'pjl7260321', '充值vip会员1个月', '0', 'pjl72603211395732586', '0', '100', '1395732586', '0');
INSERT INTO `tp_indent` VALUES ('28', '72', '4', 'pjl7260321', '充值vip会员1个月', '0', 'pjl72603211395733004', '0', '100', '1395733004', '0');
INSERT INTO `tp_indent` VALUES ('29', '6', '4', 'htzhanglong', '充值vip会员1个月', '0', 'htzhanglong139575353', '0', '100', '1395753532', '0');

-- ----------------------------
-- Table structure for `tp_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `tp_keyword`;
CREATE TABLE `tp_keyword` (
  `id` int(11) NOT NULL auto_increment,
  `keyword` char(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `module` varchar(15) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=332 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_keyword
-- ----------------------------
INSERT INTO `tp_keyword` VALUES ('1', '调研', '1', 'qmxpbf1390048289', 'Weidiaoyan');
INSERT INTO `tp_keyword` VALUES ('2', '微预约', '1', 'qmxpbf1390048289', 'Reservation');
INSERT INTO `tp_keyword` VALUES ('3', '砸金蛋', '1', 'eurggv1390065711', 'Lottery');
INSERT INTO `tp_keyword` VALUES ('4', '888', '1', 'eurggv1390065711', 'Wedding');
INSERT INTO `tp_keyword` VALUES ('5', '大转盘', '2', 'qmxpbf1390048289', 'Lottery');
INSERT INTO `tp_keyword` VALUES ('6', '优惠券', '3', 'qmxpbf1390048289', 'Lottery');
INSERT INTO `tp_keyword` VALUES ('7', '大转盘', '4', 'seeebp1390203728', 'Lottery');
INSERT INTO `tp_keyword` VALUES ('8', '微调研', '2', 'seeebp1390203728', 'Weidiaoyan');
INSERT INTO `tp_keyword` VALUES ('9', '预约', '2', 'seeebp1390203728', 'Reservation');
INSERT INTO `tp_keyword` VALUES ('10', '1', '1', 'knmdyy1390207240', 'Text');
INSERT INTO `tp_keyword` VALUES ('11', '大转盘', '5', 'knmdyy1390207240', 'Lottery');
INSERT INTO `tp_keyword` VALUES ('12', '调研', '3', 'knmdyy1390207240', 'Weidiaoyan');
INSERT INTO `tp_keyword` VALUES ('13', '砸金蛋', '6', 'knmdyy1390207240', 'Lottery');
INSERT INTO `tp_keyword` VALUES ('14', '微喜帖', '2', 'knmdyy1390207240', 'Wedding');
INSERT INTO `tp_keyword` VALUES ('15', '刮刮卡', '7', 'knmdyy1390207240', 'Lottery');
INSERT INTO `tp_keyword` VALUES ('16', '优惠券', '8', 'knmdyy1390207240', 'Lottery');
INSERT INTO `tp_keyword` VALUES ('19', '预约', '8', 'knmdyy1390207240', 'Reservation');
INSERT INTO `tp_keyword` VALUES ('18', '房产', '1', 'knmdyy1390207240', 'Estate');
INSERT INTO `tp_keyword` VALUES ('20', '房产', '2', 'knmdyy1390207240', 'Estate');
INSERT INTO `tp_keyword` VALUES ('21', '帮助', '2', 'knmdyy1390207240', 'Text');
INSERT INTO `tp_keyword` VALUES ('23', '投票', '3', 'knmdyy1390207240', 'Vote');
INSERT INTO `tp_keyword` VALUES ('24', '图片投票', '4', 'knmdyy1390207240', 'Vote');
INSERT INTO `tp_keyword` VALUES ('25', '投票', '5', 'jgoken1390204555', 'Vote');
INSERT INTO `tp_keyword` VALUES ('26', '你好', '3', 'zpbqjb1391609865', 'Text');
INSERT INTO `tp_keyword` VALUES ('27', '你好', '4', 'zpbqjb1391609865', 'Text');
INSERT INTO `tp_keyword` VALUES ('28', '大转盘', '9', 'zpbqjb1391609865', 'Lottery');
INSERT INTO `tp_keyword` VALUES ('29', '优惠券', '10', 'zpbqjb1391609865', 'Lottery');
INSERT INTO `tp_keyword` VALUES ('30', '西宁启鸿信息技术公司', '5', 'vssbhv1391702832', 'Text');
INSERT INTO `tp_keyword` VALUES ('31', '地址', '6', 'vssbhv1391702832', 'Text');
INSERT INTO `tp_keyword` VALUES ('32', '联系我们 怎么联系你们 如何联系你们 你们的联系方式 你们的联系电话 你们联系电话', '7', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('33', '联系', '8', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('34', '我想找家教 我想找老师 有没有家教老师 我要找家教 我想请家教 我要找家教老师', '9', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('35', '初二英语第二单元词汇', '10', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('36', '东风不与周郎便', '11', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('37', '你好 您好 在吗 有人吗 有人在吗', '12', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('38', '网站建设 网络营销 网络推广', '13', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('54', '青海大学电话号码 青海大学联系电话 青海大学电话', '22', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('40', '学习资源', '14', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('41', '名校简介', '15', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('42', '滕王阁序 藤王阁序', '16', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('43', '老当益壮 宁移白首之心 穷且益坚 不坠青云之志', '17', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('44', '九月九日忆山东兄弟 九月九忆山东兄弟', '18', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('45', '学法指导', '19', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('48', '山穷水复疑无路 山重水复疑无路', '20', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('280', '营销', '34', 'zpbqjb1391609865', 'Img');
INSERT INTO `tp_keyword` VALUES ('50', '唐宋八大家', '21', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('55', '青海大学校长办公室 青海大学校长办公室电话 青海大学校办电话', '23', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('56', '青海大学学生工作处电话 青海大学学工处电话', '24', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('57', '青海大学教务处电话 青海大学教务处联系电话 青海大学教务处电话号码', '25', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('58', '青海大学研究生部联系电话 青海大学研究生部电话', '26', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('59', '兼职招聘', '27', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('60', '企业招聘', '28', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('61', '公考信息 公考查询 公务员', '29', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('62', '教师招聘', '30', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('63', '研究生招考', '31', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('64', '资格考试', '32', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('65', '等级考试 3  3', '33', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('66', '培训机构', '34', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('67', '电脑维修', '35', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('68', '旅游景点 7  7', '36', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('69', '号码查询 8  8', '37', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('70', '娱乐休闲 9  9', '38', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('71', '路线查询 10  10', '39', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('72', '青海大学保卫处电话 青大保卫处电话', '40', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('73', '青海大学联系电话 青大电话 青海大学电话', '41', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('74', '青海大学教务处电话 青海大学教务处联系电话 青海大学教务处电话号码  青大教务处电话', '42', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('75', '青海大学校长办公室 青海大学校长办公室电话 青海大学校办电话 青大校办电话 青大校长办公室电话', '43', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('76', '青海大学学生工作处电话 青海大学学工处电话 青大学工处电话', '44', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('77', '青海大学科技处 青大科技处电话', '45', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('78', '青海大学研究生部联系电话 青海大学研究生部电话 青大研究生部 青大研究生部联系电话 青大研究生部电话', '46', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('79', '青海大学组织人事部 青大组织人事部 青海大学人事部 青海大学组织部', '47', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('80', '您好！ 你好！ 在吗？ 有人吗？', '48', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('81', '校园外卖 5  5', '49', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('82', '驾校报名 4  4', '50', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('83', '求职招聘 1', '51', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('84', '启鸿动态', '52', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('85', '青海师大人文学院辅导员办公室 师大人文学院辅导员办公室电话号码是多少', '53', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('86', '青海师大人文学院书记 师大人文学院书记办公室电话号码是多少', '54', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('87', '青海师大人文学院院长办公室电话 师大人文学院院长办公室', '55', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('88', '青海师大人文学院副院长办公室 师大人文学院副院长办公室', '56', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('89', '青海师大人文学院副书记办公室电话 师大人文学院副书记办公室电话', '57', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('90', '青海师大电脑维修 师大电脑维修', '58', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('91', '青海师大教育学院院长办公室电话 师大教育学院院长办公室电话', '59', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('92', '青海师大教育学院书记办公室电话 师大教育学院书记办公室电话', '60', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('93', '青海师大教育学院副院长办公室电话 师大教育学院副院长办公室电话', '61', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('94', '青海师大教育学院辅导员办公室电话 师大教育学院辅导员办公室电话', '62', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('95', '青海师大政法学院辅导员办公室电话 师大政法学院辅导员办公室电话', '63', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('96', '青海师大政法学院院长办公室电话 师大政法学院院长办公室电话', '64', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('97', '青海师大政法学院副书记办公室电话 师大政法学院副书记办公室电话', '65', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('98', '青海师大政法学院副院长办公室电话 师大政法学院副院长办公室电话', '66', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('99', '青海师大外语系书记办公室电话 师大外语系书记办公室电话', '67', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('100', '青海师大外语系主任办公室电话 师大外语系主任办公室电话', '68', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('101', '青海师大外语系副书记办公室电话', '69', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('102', '青海师大外语系辅导员办公室电话', '70', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('103', '青海师大体育学院书记', '71', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('104', '青海师大体育学院院长', '72', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('105', '青海师大体育学院副院长', '73', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('106', '青海师大体育学院副院长办公室电话', '74', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('107', '青海师大体育学院辅导员办公室电话', '75', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('108', '青海师大生地学院院长办公室电话', '76', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('109', '青海师大生地学院书记办公室电话', '77', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('110', '青海师大生地学院辅导员办公室电话', '78', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('111', '青海师大数学系书记办公室电话', '79', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('112', '青海师大数学系副主任办公室电话', '80', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('113', '青海师大数学系辅导员办公室电话', '81', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('114', '青海师大物理系书记办公室电话', '82', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('115', '青海师大物理系主任办公室电话', '83', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('116', '青海师大物理系副书记办公室电话', '84', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('117', '青海师大物理系辅导员办公室电话', '85', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('118', '青海师大化学系书记办公室电话', '86', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('119', '青海师大化学系主任办公室电话', '87', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('120', '青海师大化学系辅导员办公室电话', '88', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('121', '青海师大计算机学院院长办公室电话', '89', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('122', '青海师大计算机学院书记办公室电话', '90', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('123', '青海师大计算机学院辅导员办公室电话', '91', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('124', '青海师大音乐系书记办公室电话', '92', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('125', '青海师大音乐系副主任办公室电话', '93', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('126', '青海师大音乐系辅导员办公室电话', '94', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('127', '青海师大美术系书记办公室电话', '95', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('128', '青海师大美术系主任办公室电话', '96', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('129', '青海师大美术系副书记办公室电话', '97', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('130', '青海师大美术系辅导员办公室电话', '98', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('131', '青海师大经济管理学院院长办公室电话 青海师大经管学院院长办公室电话', '99', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('132', '青海师大经济管理学院副书记办公室电话 青海师大经管学院副书记办公室电话', '100', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('133', '青海师大经济管理学院辅导员办公室电话 青海师大经管学院辅导员办公室电话', '101', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('134', '青海师大民族师院学院书记办公室电话', '102', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('135', '青海师大民族师院学院院长办公室电话', '103', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('136', '青海师大民族师院学院副院长办公室电话', '104', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('137', '青海师大民族师范学院学工处办公室电话', '105', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('138', '联系我们', '106', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('139', '平台介绍 启鸿校园生活', '107', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('140', '青海师大修电脑 青海师大修电脑 师大电脑维修 青海师范大学电脑维修', '108', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('141', '公共服务电脑维修 6 公共服务电脑维修', '109', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('143', '调查问卷', '6', 'btmdkz1392007679', 'Vote');
INSERT INTO `tp_keyword` VALUES ('148', '青海驾校电话号码', '112', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('281', '微信营销的思考', '35', 'zpbqjb1391609865', 'Img');
INSERT INTO `tp_keyword` VALUES ('146', 'asf', '110', 'zpbqjb1391609865', 'Text');
INSERT INTO `tp_keyword` VALUES ('147', 'sadfdsaf', '111', 'zpbqjb1391609865', 'Text');
INSERT INTO `tp_keyword` VALUES ('149', '资格考试', '113', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('150', '等级考试', '114', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('151', '谢谢您 谢谢你 多谢 感谢', '115', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('152', '广东省公务员报名时间 广东公务员报名时间', '116', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('153', '江苏省公务员报名时间 江苏公务员报名时间', '117', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('154', '山东公务员考试报名时间 山东省公务员考试报名时间', '118', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('155', '浙江公务员考试报名时间 浙江省公务员考试报名时间', '119', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('156', '青海省公务员考试时间 青海公务员考试报名时间 青海省公务员考试报名时间', '120', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('157', '2  2', '121', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('158', '资格考试', '122', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('159', '购买电脑 我要买电脑 我想买电脑 我想购买电脑', '123', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('160', '联系我们', '124', 'usyhhb1392205269', 'Text');
INSERT INTO `tp_keyword` VALUES ('161', '启鸿简介', '125', 'usyhhb1392205269', 'Text');
INSERT INTO `tp_keyword` VALUES ('162', '网站建设', '126', 'usyhhb1392205269', 'Text');
INSERT INTO `tp_keyword` VALUES ('163', '公众平台', '127', 'usyhhb1392205269', 'Text');
INSERT INTO `tp_keyword` VALUES ('164', '成功案例网站建设', '128', 'usyhhb1392205269', 'Text');
INSERT INTO `tp_keyword` VALUES ('165', 'rewr', '129', 'zpbqjb1391609865', 'Text');
INSERT INTO `tp_keyword` VALUES ('166', '青大电脑维修 青海大学电脑维修 青大修电脑 青海大学维修电脑 青大维修电脑', '130', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('167', '爱的色放', '131', 'zpbqjb1391609865', 'Text');
INSERT INTO `tp_keyword` VALUES ('168', '阿什顿发的萨芬', '132', 'zpbqjb1391609865', 'Text');
INSERT INTO `tp_keyword` VALUES ('169', '啊水费电费', '133', 'zpbqjb1391609865', 'Text');
INSERT INTO `tp_keyword` VALUES ('170', 'dsaf', '134', 'zpbqjb1391609865', 'Text');
INSERT INTO `tp_keyword` VALUES ('171', '水电工发生大概', '135', 'zpbqjb1391609865', 'Text');
INSERT INTO `tp_keyword` VALUES ('172', '瓦尔特过味儿', '136', 'zpbqjb1391609865', 'Text');
INSERT INTO `tp_keyword` VALUES ('173', '222', '137', 'zpbqjb1391609865', 'Text');
INSERT INTO `tp_keyword` VALUES ('174', '电脑维修 我想修电脑 我要重装系统 我要装系统 我要修电脑', '138', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('175', '青海大学电脑维修 青大电脑维修 青海大学修电脑 青大修电脑 青海大学维修电脑', '139', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('176', '微夫人之力不及此 因人之力而敝之', '140', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('177', '寡人闻古之贤君 不患其众之不足也', '141', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('178', '丘也闻有国有家者 不患寡而患不均', '142', 'feedrk1391692825', 'Text');
INSERT INTO `tp_keyword` VALUES ('179', '西宁市教育局联系电话 西宁市教育局电话 西宁教育局联系电话 西宁教育局电话 西宁市教育局地址 西宁市教育局在哪 西宁教育局地址 西宁教育局在哪', '143', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('180', '青海电大党委书记办公室电话 青海广播电视大学党委书记办公室电话', '144', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('181', '青海电大校长办公室电话 青海广播电视大学校长办公室电话', '145', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('182', '青海电大副校长办公室电话 青海广播电视大学副校长办公室电话', '146', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('183', '青海资格鉴定中心 青海职业资格鉴定中心 青海资格鉴定中心 青海省职业技术鉴定中心', '147', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('184', '青海职业资格考试时间', '148', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('185', '青海教师资格考试一年考几次 西宁教师资格考试一年考几次', '149', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('186', '111', '150', 'zpbqjb1391609865', 'Text');
INSERT INTO `tp_keyword` VALUES ('188', '湖南教师资格考试时间 湖南省教师资格考试时间', '179', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('189', '陕西省教师资格考试 陕西教师资格考试', '180', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('190', '四川省教师资格考试 四川教师资格考试', '181', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('191', '江西教师资格考试 江西省教师资格考试', '182', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('192', '吉林省教师资格考试时间 吉林教师资格考试', '183', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('193', '宁夏教师资格考试时间', '184', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('194', '重庆市教师资格考试', '185', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('195', '河南省教师资格考试 河南教师资格考试', '186', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('196', '新疆教师资格考试', '187', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('197', '云南省考证资格考试 云南考证资格考试', '188', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('198', '江西省教师资格考试 江西教师资格考试', '189', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('199', '天津市教师资格考试 天津教师资格考试', '190', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('200', '英语四级考试报名时间 英语六级考试报名时间', '191', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('201', '联系我们 怎么联系你们 如何联系你们 你们的联系方式 你们的联系电话 你们联系电话', '192', 'tiixha1392039987', 'Text');
INSERT INTO `tp_keyword` VALUES ('203', '山东选调生 山东省选调生 山东省公务员 山东公务员', '193', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('204', '111', '194', 'zpbqjb1391609865', 'Text');
INSERT INTO `tp_keyword` VALUES ('205', '中华', '1', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('206', '商家', '1', 'sbhydc1392964286', 'Host');
INSERT INTO `tp_keyword` VALUES ('207', '抽奖', '15', 'sbhydc1392964286', 'Lottery');
INSERT INTO `tp_keyword` VALUES ('208', '苏烟', '2', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('209', '泰山', '3', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('210', '南京', '4', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('211', '南京', '5', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('212', '泰山', '6', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('213', '泰山', '7', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('214', '泰山', '8', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('215', '泰山', '9', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('216', '云烟', '10', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('217', '黄鹤楼', '11', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('218', '黄鹤楼', '12', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('219', '黄鹤楼', '13', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('220', '利群', '14', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('221', '利群', '15', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('222', '红塔山', '16', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('223', '长白山', '17', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('224', '双喜', '18', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('225', '万宝路', '19', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('226', '玉溪', '20', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('227', '娇子', '21', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('228', '泰山', '22', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('229', '云烟', '23', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('230', '泰山', '24', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('231', '黄金叶', '25', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('232', '黄金叶', '26', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('233', '中南海', '27', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('234', '中南海', '28', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('235', '泰山', '29', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('236', '爱喜', '30', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('237', '红塔山', '31', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('238', '七匹狼', '32', 'sbhydc1392964286', 'Product');
INSERT INTO `tp_keyword` VALUES ('239', '最新动态', '8', 'usyhhb1392205269', 'Img');
INSERT INTO `tp_keyword` VALUES ('240', '最新动态', '9', 'usyhhb1392205269', 'Img');
INSERT INTO `tp_keyword` VALUES ('241', '主营业务', '10', 'usyhhb1392205269', 'Img');
INSERT INTO `tp_keyword` VALUES ('242', '电话号码 联系方式 如何联系你们', '11', 'usyhhb1392205269', 'Img');
INSERT INTO `tp_keyword` VALUES ('243', '成功案例网站建设', '12', 'usyhhb1392205269', 'Img');
INSERT INTO `tp_keyword` VALUES ('244', '青海金帝顺滑雪场', '13', 'usyhhb1392205269', 'Img');
INSERT INTO `tp_keyword` VALUES ('245', '成功案例网站建设', '14', 'usyhhb1392205269', 'Img');
INSERT INTO `tp_keyword` VALUES ('246', '成功案例网站建设', '15', 'usyhhb1392205269', 'Img');
INSERT INTO `tp_keyword` VALUES ('247', '成功案例网站建设', '16', 'usyhhb1392205269', 'Img');
INSERT INTO `tp_keyword` VALUES ('248', '成功案例网站建设', '17', 'usyhhb1392205269', 'Img');
INSERT INTO `tp_keyword` VALUES ('249', '公司主营业务', '18', 'usyhhb1392205269', 'Img');
INSERT INTO `tp_keyword` VALUES ('251', '最新动态 公司新闻', '20', 'usyhhb1392205269', 'Img');
INSERT INTO `tp_keyword` VALUES ('252', '云南公务员考试 云南公考', '195', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('253', '天津市公务员 天津公务员 天津公考', '196', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('254', '兰州省考 甘肃国考 甘肃公考 甘肃省公考', '197', 'btmdkz1392007679', 'Text');
INSERT INTO `tp_keyword` VALUES ('255', '天津市公务员 天津公务员 天津公考', '21', 'btmdkz1392007679', 'Img');
INSERT INTO `tp_keyword` VALUES ('256', '青大电脑维修 青海大学电脑维修 青大修电脑 青海大学维修电脑 青大维修电脑', '22', 'btmdkz1392007679', 'Img');
INSERT INTO `tp_keyword` VALUES ('257', '启鸿校园生活大转盘', '16', 'btmdkz1392007679', 'Lottery');
INSERT INTO `tp_keyword` VALUES ('258', '砸金蛋', '17', 'btmdkz1392007679', 'Lottery');
INSERT INTO `tp_keyword` VALUES ('259', '', '23', 'egagky1394029884', 'Img');
INSERT INTO `tp_keyword` VALUES ('260', '大转盘', '18', 'ymivkz1394500574', 'Lottery');
INSERT INTO `tp_keyword` VALUES ('261', '投票', '7', 'ymivkz1394500574', 'Vote');
INSERT INTO `tp_keyword` VALUES ('262', '脆脆鲨 黑芝麻夹心味', '33', 'ymivkz1394500574', 'Product');
INSERT INTO `tp_keyword` VALUES ('263', '1', '24', 'ymivkz1394500574', 'Img');
INSERT INTO `tp_keyword` VALUES ('264', '2', '25', 'ymivkz1394500574', 'Img');
INSERT INTO `tp_keyword` VALUES ('265', '3', '26', 'ymivkz1394500574', 'Img');
INSERT INTO `tp_keyword` VALUES ('266', '订餐', '198', 'msowdl1393998402', 'Text');
INSERT INTO `tp_keyword` VALUES ('267', '预定', '1', 'zpbqjb1391609865', 'Selfform');
INSERT INTO `tp_keyword` VALUES ('268', '订单', '2', 'zpbqjb1391609865', 'Host');
INSERT INTO `tp_keyword` VALUES ('269', '砸金蛋', '19', 'msowdl1393998402', 'Lottery');
INSERT INTO `tp_keyword` VALUES ('270', '电话', '199', 'msowdl1393998402', 'Text');
INSERT INTO `tp_keyword` VALUES ('271', '好，你好，哈喽', '200', 'bjjxjc1395216010', 'Text');
INSERT INTO `tp_keyword` VALUES ('272', '产品 demo', '201', 'bjjxjc1395216010', 'Text');
INSERT INTO `tp_keyword` VALUES ('273', 'Esri 公司简介 esri 研发中心', '27', 'bjjxjc1395216010', 'Img');
INSERT INTO `tp_keyword` VALUES ('274', '产品 demo', '28', 'bjjxjc1395216010', 'Img');
INSERT INTO `tp_keyword` VALUES ('275', '产品 demo', '29', 'bjjxjc1395216010', 'Img');
INSERT INTO `tp_keyword` VALUES ('276', '动态 进展', '30', 'bjjxjc1395216010', 'Img');
INSERT INTO `tp_keyword` VALUES ('277', '方向 研究领域 领域', '31', 'bjjxjc1395216010', 'Img');
INSERT INTO `tp_keyword` VALUES ('278', '招聘 实习', '32', 'bjjxjc1395216010', 'Img');
INSERT INTO `tp_keyword` VALUES ('279', '联系 咨询', '33', 'bjjxjc1395216010', 'Img');
INSERT INTO `tp_keyword` VALUES ('285', '校外兼职', '39', 'wgsiap1395669220', 'Img');
INSERT INTO `tp_keyword` VALUES ('286', '603', '202', 'wgsiap1395669220', 'Text');
INSERT INTO `tp_keyword` VALUES ('290', '关于社团', '204', 'wgsiap1395669220', 'Text');
INSERT INTO `tp_keyword` VALUES ('288', '首页', '203', 'wgsiap1395669220', 'Text');
INSERT INTO `tp_keyword` VALUES ('291', '社团介绍', '42', 'wgsiap1395669220', 'Img');
INSERT INTO `tp_keyword` VALUES ('292', '你们电话多少 你们的电话号码 你们电话多少？', '205', 'wdkszz1395625484', 'Text');
INSERT INTO `tp_keyword` VALUES ('293', '你们联系电话多少？ 你们电话号码？ 你们电话多少？', '206', 'gfqlqk1395814571', 'Text');
INSERT INTO `tp_keyword` VALUES ('294', '你们在哪 你们地址在哪', '207', 'gfqlqk1395814571', 'Text');
INSERT INTO `tp_keyword` VALUES ('295', '砸金蛋  抽奖', '20', 'gfqlqk1395814571', 'Lottery');
INSERT INTO `tp_keyword` VALUES ('296', '你们地址地址 你们在哪', '43', 'gfqlqk1395814571', 'Img');
INSERT INTO `tp_keyword` VALUES ('297', '联系电话 你们电话号码多少 如何联系你们', '44', 'gfqlqk1395814571', 'Img');
INSERT INTO `tp_keyword` VALUES ('298', '爱心宿舍', '45', 'wgsiap1395669220', 'Img');
INSERT INTO `tp_keyword` VALUES ('299', '工作招聘', '46', 'wgsiap1395669220', 'Img');
INSERT INTO `tp_keyword` VALUES ('300', '实习岗位', '47', 'wgsiap1395669220', 'Img');
INSERT INTO `tp_keyword` VALUES ('301', '我的饮食', '48', 'wgsiap1395669220', 'Img');
INSERT INTO `tp_keyword` VALUES ('302', '休闲娱乐', '49', 'wgsiap1395669220', 'Img');
INSERT INTO `tp_keyword` VALUES ('307', '公益简报', '54', 'wgsiap1395669220', 'Img');
INSERT INTO `tp_keyword` VALUES ('304', '商品园地', '51', 'wgsiap1395669220', 'Img');
INSERT INTO `tp_keyword` VALUES ('305', '青大新闻', '52', 'wgsiap1395669220', 'Img');
INSERT INTO `tp_keyword` VALUES ('306', '社团首页', '53', 'wgsiap1395669220', 'Img');
INSERT INTO `tp_keyword` VALUES ('308', '你好', '208', 'zpbqjb1391609865', 'Text');
INSERT INTO `tp_keyword` VALUES ('309', '企业介绍', '55', 'wdkszz1395625484', 'Img');
INSERT INTO `tp_keyword` VALUES ('310', '董事长寄语', '56', 'wdkszz1395625484', 'Img');
INSERT INTO `tp_keyword` VALUES ('311', '技术支持  哪家公司给你们做的', '57', 'wdkszz1395625484', 'Img');
INSERT INTO `tp_keyword` VALUES ('312', '企业文化', '58', 'wdkszz1395625484', 'Img');
INSERT INTO `tp_keyword` VALUES ('313', '新标品牌历程', '59', 'wdkszz1395625484', 'Img');
INSERT INTO `tp_keyword` VALUES ('314', '企业新闻', '60', 'wdkszz1395625484', 'Img');
INSERT INTO `tp_keyword` VALUES ('315', '企业新闻', '61', 'wdkszz1395625484', 'Img');
INSERT INTO `tp_keyword` VALUES ('316', '企业新闻', '62', 'wdkszz1395625484', 'Img');
INSERT INTO `tp_keyword` VALUES ('317', '企业新闻', '63', 'wdkszz1395625484', 'Img');
INSERT INTO `tp_keyword` VALUES ('318', '企业新闻', '64', 'wdkszz1395625484', 'Img');
INSERT INTO `tp_keyword` VALUES ('319', '产品体验', '65', 'wdkszz1395625484', 'Img');
INSERT INTO `tp_keyword` VALUES ('320', '联系我们 你们电话号码多少 你们在哪个位置 你们在哪', '66', 'wdkszz1395625484', 'Img');
INSERT INTO `tp_keyword` VALUES ('321', '微信案例', '209', 'usyhhb1392205269', 'Text');
INSERT INTO `tp_keyword` VALUES ('322', '微信案例', '67', 'usyhhb1392205269', 'Img');
INSERT INTO `tp_keyword` VALUES ('323', '技术支持', '68', 'gfqlqk1395814571', 'Img');
INSERT INTO `tp_keyword` VALUES ('324', '菜品系列', '69', 'gfqlqk1395814571', 'Img');
INSERT INTO `tp_keyword` VALUES ('325', '开业促销', '70', 'gfqlqk1395814571', 'Img');
INSERT INTO `tp_keyword` VALUES ('326', '公司新闻', '71', 'gfqlqk1395814571', 'Img');
INSERT INTO `tp_keyword` VALUES ('327', '店铺管理', '72', 'wdkszz1395625484', 'Img');
INSERT INTO `tp_keyword` VALUES ('329', '', '34', 'vbbgps1396228640', 'Product');
INSERT INTO `tp_keyword` VALUES ('330', '', '35', 'vbbgps1396228640', 'Product');
INSERT INTO `tp_keyword` VALUES ('331', '', '36', 'vbbgps1396228640', 'Product');

-- ----------------------------
-- Table structure for `tp_links`
-- ----------------------------
DROP TABLE IF EXISTS `tp_links`;
CREATE TABLE `tp_links` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_links
-- ----------------------------
INSERT INTO `tp_links` VALUES ('1', 'phonegap中文网', 'http://www.phonegap100.com', '1');
INSERT INTO `tp_links` VALUES ('2', '乐活城', 'http://www.57lehuo.com', '1');

-- ----------------------------
-- Table structure for `tp_liuyan`
-- ----------------------------
DROP TABLE IF EXISTS `tp_liuyan`;
CREATE TABLE `tp_liuyan` (
  `id` int(11) NOT NULL auto_increment,
  `uid` varchar(30) NOT NULL,
  `title` varchar(30) default NULL,
  `text` varchar(500) default NULL,
  `createtime` int(20) default NULL,
  `uptatetime` int(20) default NULL,
  `token` varchar(30) NOT NULL,
  `re` varchar(500) default NULL,
  `wecha_id` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_liuyan
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_liuyan1`
-- ----------------------------
DROP TABLE IF EXISTS `tp_liuyan1`;
CREATE TABLE `tp_liuyan1` (
  `id` int(11) NOT NULL auto_increment,
  `uid` varchar(30) NOT NULL,
  `title` varchar(30) default NULL,
  `text` varchar(500) default NULL,
  `createtime` int(20) default NULL,
  `uptatetime` int(20) default NULL,
  `token` varchar(30) NOT NULL,
  `re` varchar(500) default NULL,
  `wecha_id` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_liuyan1
-- ----------------------------
INSERT INTO `tp_liuyan1` VALUES ('84', '22', '6333333', '', '1386674522', '1386674522', 'uaytug1386672617', '', null);
INSERT INTO `tp_liuyan1` VALUES ('85', '22', '你回家', '哈哈斤斤计较哈哈', '1386676577', '1386676621', 'oppzmq1386606654', '', 'oQXX3jsmPVulCs3gQoMlaovvNCWs');

-- ----------------------------
-- Table structure for `tp_lottery`
-- ----------------------------
DROP TABLE IF EXISTS `tp_lottery`;
CREATE TABLE `tp_lottery` (
  `id` int(11) NOT NULL auto_increment,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(255) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `txt` varchar(60) NOT NULL COMMENT '用户输入兑奖时候的显示信息',
  `sttxt` varchar(200) NOT NULL COMMENT '简介',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '重复抽奖回复',
  `endtite` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `endpicurl` varchar(255) NOT NULL,
  `endinfo` varchar(60) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品设置',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖号码',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品设置',
  `type` tinyint(1) NOT NULL,
  `secondnums` int(4) NOT NULL,
  `secondlucknums` int(1) NOT NULL,
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` int(11) NOT NULL,
  `canrqnums` int(2) NOT NULL COMMENT '个人限制抽奖次数',
  `parssword` int(15) NOT NULL,
  `renamesn` varchar(50) NOT NULL default '',
  `renametel` varchar(60) NOT NULL,
  `displayjpnums` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `four` varchar(50) NOT NULL,
  `fournums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `five` varchar(50) NOT NULL,
  `fivenums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `six` varchar(50) NOT NULL COMMENT '六等奖',
  `sixnums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `zjpic` varchar(150) NOT NULL default '',
  `daynums` mediumint(4) NOT NULL default '0',
  `maxgetprizenum` mediumint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_lottery
-- ----------------------------
INSERT INTO `tp_lottery` VALUES ('1', '0', '0', 'eurggv1390065711', '砸金蛋', 'http://demo.ueat.cn/tpl/User/default/common/images/img/activity-zadan-start.jpg', '砸金蛋活动开始了', '兑奖请联系我们，电话18950099999', '3121313', '1390060800', '1390320000', '亲，请点击进入砸金蛋抽奖活动页面，祝您好运哦！', '', '砸金蛋活动已经结束了', 'http://demo.ueat.cn/tpl/User/default/common/images/img/activity-zadan-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '88888', '1', '1', '', '4', '0', '0', '', '0', '0', '1', '12', '0', '', '', '0', '0', '1', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '1');
INSERT INTO `tp_lottery` VALUES ('2', '0', '0', 'qmxpbf1390048289', '大转盘', 'http://demo.ueat.cn/tpl/Wap/default/common/css/guajiang/images/activity-lottery-start.jpg', '幸运大转盘活动开始了', '兑奖请联系我们，电话138********', '中奖提示', '1390202482', '1424275200', '亲，请点击进入大转盘抽奖活动页面，祝您好运哦！', '亲，继续努力哦！', '幸运大转盘活动已经结束了', 'http://demo.ueat.cn/tpl/Wap/default/common/css/guajiang/images/activity-lottery-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '帅哥', '1', '0', '美女', '1', '5', '0', '', '0', '0', '10', '10', '0', '', '', '1', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '1');
INSERT INTO `tp_lottery` VALUES ('3', '0', '0', 'qmxpbf1390048289', '优惠券', 'http://demo.ueat.cn/tpl/Wap/default/common/css/guajiang/images/activity-coupon-start.jpg', '优惠券名称', '', '优惠券介绍', '1390202674', '1487865600', '优惠券活动说明', '兑换券使用说明', '活动结束', 'http://demo.ueat.cn/tpl/Wap/default/common/css/guajiang/images/activity-coupon-end.jpg', '活动结束说明', '优惠券名称', '1', '0', '优惠券名称2', '3', '0', '0', '', '0', '0', '10', '10', '0', '', '', '1', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', 'http://demo.ueat.cn/tpl/Wap/default/common/css/guajiang/images/activity-coupon-winning.jpg', '0', '1');
INSERT INTO `tp_lottery` VALUES ('4', '0', '0', 'seeebp1390203728', '大转盘', 'http://demo.ueat.cn/tpl/Wap/default/common/css/guajiang/images/activity-lottery-start.jpg', '幸运大转盘活动开始了', '兑奖请联系我们，电话138********', '恭喜您中奖了', '1390204488', '1424966400', '亲，请点击进入大转盘抽奖活动页面，祝您好运哦！', '亲，继续努力哦！', '幸运大转盘活动已经结束了', 'http://demo.ueat.cn/tpl/Wap/default/common/css/guajiang/images/activity-lottery-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '一等奖', '1', '0', '二等奖', '1', '2', '0', '', '0', '0', '10', '10', '0', '', '', '1', '0', '0', '', '0', '0', '', '0', '0', '', '0', '0', '', '5', '1');
INSERT INTO `tp_lottery` VALUES ('5', '0', '0', 'knmdyy1390207240', '大转盘', 'http://demo.ueat.cn/tpl/Wap/default/common/css/guajiang/images/activity-lottery-start.jpg', '幸运大转盘活动开始了', '兑奖请联系我们，电话138********', '恭喜您中奖了', '1390207887', '1392799887', '亲，请点击进入大转盘抽奖活动页面，祝您好运哦！', '亲，继续努力哦！', '幸运大转盘活动已经结束了', 'http://demo.ueat.cn/tpl/Wap/default/common/css/guajiang/images/activity-lottery-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '一等奖', '1', '0', '二等奖', '1', '3', '0', '', '0', '0', '0', '10', '0', '', '', '1', '0', '1', '', '0', '0', '', '0', '0', '', '0', '0', '', '20', '1');
INSERT INTO `tp_lottery` VALUES ('6', '0', '0', 'knmdyy1390207240', '砸金蛋', 'http://demo.ueat.cn/tpl/User/default/common/images/img/activity-zadan-start.jpg', '砸金蛋活动开始了', '兑奖请联系我们，电话18950099999', '砸金蛋', '1390147200', '1390406400', '亲，请点击进入砸金蛋抽奖活动页面，祝您好运哦！', '', '砸金蛋活动已经结束了', 'http://demo.ueat.cn/tpl/User/default/common/images/img/activity-zadan-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '1111', '1', '1', '', '4', '0', '0', '', '0', '0', '0', '10', '0', '', '', '1', '0', '1', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '1');
INSERT INTO `tp_lottery` VALUES ('7', '0', '0', 'knmdyy1390207240', '刮刮卡', 'http://demo.ueat.cn/tpl/User/default/common/images/img/activity-scratch-card-start.jpg', '刮刮卡活动开始了', '兑奖请联系我们，电话138********', 'dnnnnf', '1390208873', '1392800873', '亲，请点击进入刮刮卡抽奖活动页面，祝您好运哦！', '', '刮刮卡活动已经结束了', 'http://demo.ueat.cn/tpl/User/default/common/images/img/activity-scratch-card-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '23', '13', '0', '', '2', '0', '0', '', '0', '0', '32', '23', '0', '', '', '1', '0', '1', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '1');
INSERT INTO `tp_lottery` VALUES ('8', '1', '0', 'knmdyy1390207240', '优惠券', 'http://demo.ueat.cn/tpl/Wap/default/common/css/guajiang/images/activity-coupon-start.jpg', '优惠券', '', 'の4567', '1390208916', '1392800916', '3564', '435678', '4567', 'http://demo.ueat.cn/tpl/Wap/default/common/css/guajiang/images/activity-coupon-end.jpg', '45645768', '4456', '3', '0', '', '3', '0', '0', '', '0', '0', '34', '23', '0', '', '', '0', '0', '1', '', '0', '0', '', '0', '0', '', '0', '0', 'http://demo.ueat.cn/tpl/Wap/default/common/css/guajiang/images/activity-coupon-winning.jpg', '0', '1');
INSERT INTO `tp_lottery` VALUES ('9', '0', '0', 'zpbqjb1391609865', '大转盘', 'http://test.57lehuo.com/tpl/Wap/default/common/css/guajiang/images/activity-lottery-start.jpg', '幸运大转盘活动开始了', '兑奖请联系我们，电话18950099999', '恭喜您中奖了', '1390752000', '1429718400', '亲，请点击进入大转盘抽奖活动页面，祝您好运哦！', '亲，继续努力哦！', '幸运大转盘活动已经结束了', 'http://test.57lehuo.com/tpl/Wap/default/common/css/guajiang/images/activity-lottery-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', 'ipad 一台', '1', '0', '手机一部', '1', '1', '0', '可乐一瓶', '10', '2', '100', '2', '0', '', '', '1', '1391663562', '1', '可乐一杯', '50', '7', '餐巾纸一张', '60', '6', '', '0', '0', '', '0', '1');
INSERT INTO `tp_lottery` VALUES ('10', '11', '0', 'zpbqjb1391609865', '优惠券', 'http://test.57lehuo.com/tpl/Wap/default/common/css/guajiang/images/activity-coupon-start.jpg', 'phonegap中文网优惠券', '', 'phonegap中文网优第二季视频教程原价218 享受198元优惠价', '1391184000', '1424880000', '此优惠券只能在www.phonegap100.com 使用最终的解释权归我们所有', '', '对不起此优惠活动已经结束', 'http://test.57lehuo.com/tpl/Wap/default/common/css/guajiang/images/activity-coupon-end.jpg', '对不起此优惠活动已经结束', '原价218享受188元价格', '20', '2', '原价218享受198元价格', '3', '50', '0', '五人团享受180元优惠价', '200', '4', '500', '2', '0', '', '', '0', '0', '1', '', '0', '0', '', '0', '0', '', '0', '0', 'http://test.57lehuo.com/tpl/Wap/default/common/css/guajiang/images/activity-coupon-winning.jpg', '0', '1');
INSERT INTO `tp_lottery` VALUES ('15', '0', '0', 'sbhydc1392964286', '抽奖', 'http://www.apiying.com/tpl/Wap/default/common/css/guajiang/images/activity-lottery-start.jpg', '幸运大转盘活动开始了', '兑奖请联系我们，电话18754132531', '中奖后奖品连同订单商品一起配送到家哦亲！', '1392998400', '1395504000', '亲，请点击进入大转盘抽奖活动页面，祝您好运哦！', '亲，继续努力哦！', '幸运大转盘活动已经结束了', 'http://www.apiying.com/tpl/Wap/default/common/css/guajiang/images/activity-lottery-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '国际公法', '5', '1', '', '1', '0', '0', '', '0', '0', '100', '1', '0', '', '', '0', '1393053351', '1', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '1');
INSERT INTO `tp_lottery` VALUES ('16', '0', '0', 'btmdkz1392007679', '启鸿校园生活大转盘', 'http://www.apiying.com/tpl/Wap/default/common/css/guajiang/images/activity-lottery-start.jpg', '幸运大转盘活动开始了', '兑奖请联系我们，电话13997137252', '恭喜您，已中得本次幸运大转盘活动奖项，请及时联系我们工作人员兑换。', '1393689600', '1419955200', '亲，请点击进入大转盘抽奖活动页面，祝您好运哦！', '你已经玩过了，下次再来。', '幸运大转盘活动已经结束了', 'http://www.apiying.com/tpl/Wap/default/common/css/guajiang/images/activity-lottery-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '免费装系统一次', '10000', '0', '', '1', '0', '0', '', '0', '0', '10000', '5', '0', '', '', '1', '1393733453', '1', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '1');
INSERT INTO `tp_lottery` VALUES ('17', '0', '0', 'btmdkz1392007679', '砸金蛋', 'http://www.apiying.com/tpl/User/default/common/images/img/activity-zadan-start.jpg', '砸金蛋活动开始了', '兑奖请联系我们，电话13997137252', '中奖啦', '1393689600', '1393948800', '亲，请点击进入砸金蛋抽奖活动页面，祝您好运哦！', '', '砸金蛋活动已经结束了', 'http://www.apiying.com/tpl/User/default/common/images/img/activity-zadan-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '笔记本电脑', '1000', '1', '', '4', '0', '0', '', '0', '0', '100', '5', '0', '', '', '0', '0', '1', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '1');
INSERT INTO `tp_lottery` VALUES ('18', '0', '0', 'ymivkz1394500574', '大转盘', 'http://www.apiying.com/tpl/Wap/default/common/css/guajiang/images/activity-lottery-start.jpg', '幸运大转盘活动开始了', '兑奖请联系我们，电话05582199661', '亲，恭喜您中奖了哦，请尽快联系我们，QQ1781280988', '1394467200', '1394726400', '亲，请点击进入大转盘抽奖活动页面，祝您好运哦！', '亲，继续努力哦！', '幸运大转盘活动已经结束了', 'http://www.apiying.com/tpl/Wap/default/common/css/guajiang/images/activity-lottery-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '阜阳大地影院电影票2张', '15', '0', '阜阳华联观影团名额1名', '1', '10', '0', '阜阳大地影院电影票1张', '5', '0', '200', '2', '0', '', '', '0', '1394503007', '1', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '1');
INSERT INTO `tp_lottery` VALUES ('19', '0', '0', 'msowdl1393998402', '砸金蛋', 'http://www.apiying.com/tpl/User/default/common/images/img/activity-zadan-start.jpg', '砸金蛋活动开始了', '兑奖请联系我们!电话0730-8111117', '恭喜您：您已中奖', '1395072000', '1396627200', '亲，请点击进入砸金蛋抽奖活动页面，祝您好运哦！', '', '砸金蛋活动已经结束了', 'http://www.apiying.com/tpl/User/default/common/images/img/activity-zadan-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '消费满200减免20', '2', '0', '消费满100减免10', '4', '2', '0', '送小食一份', '2', '0', '25', '2', '0', '', '', '1', '0', '1', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '1');
INSERT INTO `tp_lottery` VALUES ('20', '0', '0', 'gfqlqk1395814571', '砸金蛋  抽奖', 'http://www.apiying.com/tpl/User/default/common/images/img/activity-zadan-start.jpg', '砸金蛋抽奖活动开始了', '兑奖请联系我们，电话13897188995', '您好！恭喜您已中得逸山伍自转小火锅免费吃奖券。', '1395763200', '1398787200', '亲，请点击进入砸金蛋抽奖活动页面，祝您好运哦！', '', '砸金蛋活动已经结束了', 'http://www.apiying.com/tpl/User/default/common/images/img/activity-zadan-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '免单一位', '20', '0', '8折优惠', '4', '100', '1', '', '0', '0', '500', '1', '0', '', '', '1', '0', '1', '', '0', '0', '', '0', '0', '', '0', '0', '', '0', '1');

-- ----------------------------
-- Table structure for `tp_lottery_cheat`
-- ----------------------------
DROP TABLE IF EXISTS `tp_lottery_cheat`;
CREATE TABLE `tp_lottery_cheat` (
  `id` int(10) NOT NULL auto_increment,
  `lid` int(10) NOT NULL default '0',
  `wecha_id` varchar(60) NOT NULL default '',
  `mp` varchar(11) NOT NULL default '',
  `prizetype` mediumint(4) NOT NULL default '0',
  `intro` varchar(60) NOT NULL default '',
  `code` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_lottery_cheat
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_lottery_record`
-- ----------------------------
DROP TABLE IF EXISTS `tp_lottery_record`;
CREATE TABLE `tp_lottery_record` (
  `id` int(11) NOT NULL auto_increment,
  `lid` int(11) NOT NULL,
  `usenums` tinyint(1) NOT NULL default '0' COMMENT '用户使用次数',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `islottery` int(1) NOT NULL COMMENT '是否中奖',
  `wecha_name` varchar(60) NOT NULL COMMENT '微信号',
  `phone` varchar(15) NOT NULL,
  `sn` varchar(13) NOT NULL COMMENT '中奖后序列号',
  `time` int(11) NOT NULL,
  `prize` varchar(50) NOT NULL default '' COMMENT '已中奖项',
  `sendstutas` int(11) NOT NULL default '0',
  `sendtime` int(11) NOT NULL,
  PRIMARY KEY  (`id`,`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_lottery_record
-- ----------------------------
INSERT INTO `tp_lottery_record` VALUES ('1', '84', '0', 'oIwXTt4gn1sVypb_-W8QQloAFUPE', 'xreagi1389709724', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('2', '1', '1', 'oTgjHt_WdZTIY5u_JNTLzwwOv23k', 'eurggv1390065711', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('3', '6', '1', 'oeU76juB9He-CI1ycT2m4lYFl3GY', 'knmdyy1390207240', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('4', '6', '5', 'oeU76jigHhMfU0ZZnrfHyDrGBrPs', 'knmdyy1390207240', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('5', '5', '0', 'oeU76jigHhMfU0ZZnrfHyDrGBrPs', 'knmdyy1390207240', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('6', '8', '1', 'oeU76juB9He-CI1ycT2m4lYFl3GY', 'knmdyy1390207240', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('7', '7', '1', 'oeU76juB9He-CI1ycT2m4lYFl3GY', 'knmdyy1390207240', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('8', '9', '2', 'o8MUTuOaVUIdHgi-RGnIjyAr4jms', 'zpbqjb1391609865', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('9', '10', '2', 'o8MUTuOaVUIdHgi-RGnIjyAr4jms', 'zpbqjb1391609865', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('10', '9', '1', 'o8MUTuMTWCAS6dW0_jiruuVv3uEM', 'zpbqjb1391609865', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('11', '9', '2', 'o8MUTuMsZwB0AqBSLQa4_466x-wk', 'zpbqjb1391609865', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('12', '10', '2', 'o8MUTuMsZwB0AqBSLQa4_466x-wk', 'zpbqjb1391609865', '1', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('13', '10', '1', 'o8MUTuFRjz5gbXnvBTwDxsQCWM2o', 'zpbqjb1391609865', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('14', '9', '1', 'o8MUTuFRjz5gbXnvBTwDxsQCWM2o', 'zpbqjb1391609865', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('15', '14', '1', 'o8x0Bt0tmzjIaPlkss7FV9QunFL0', 'btmdkz1392007679', '1', '刘兆云', '13997137252', '52f8d6189a9c6', '1392039489', '一等奖', '1', '1392039521');
INSERT INTO `tp_lottery_record` VALUES ('16', '9', '2', 'o8MUTuLdG24dxTe0Z4LOpT_bgtG0', 'zpbqjb1391609865', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('17', '9', '2', 'o8MUTuLuoXRg2OsfuG6mu4n0pygc', 'zpbqjb1391609865', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('18', '15', '1', 'oLJkxuMYJCloxdwSs7b5kNB62swc', 'sbhydc1392964286', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('19', '15', '1', 'oLJkxuJcHiic620Agm0FKc0qOiAw', 'sbhydc1392964286', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('20', '15', '1', 'oLJkxuIhoHFSaCalZPJR540lLI3I', 'sbhydc1392964286', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('21', '9', '2', 'o8MUTuPg7Nz4QJhbV02sc1WOVcLk', 'zpbqjb1391609865', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('22', '9', '2', 'o8MUTuE-D4ZErxuxlWlpovTcrneU', 'zpbqjb1391609865', '1', '林思', '13515939209', '5309fe4f6f7e2', '1393163895', '五等奖', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('23', '9', '1', 'o8MUTuC-hvAo-oEqwp8L14lpHbOk', 'zpbqjb1391609865', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('24', '16', '5', 'o8x0Bt0tmzjIaPlkss7FV9QunFL0', 'btmdkz1392007679', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('25', '17', '4', 'o8x0Bt0tmzjIaPlkss7FV9QunFL0', 'btmdkz1392007679', '1', '1049937757', '13997137252', '5312b25d47367', '1393734237', '一等奖', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('26', '9', '2', 'o8MUTuC6B_ThJNAPAqkdYvOPykIE', 'zpbqjb1391609865', '1', '王', '13453663610', '5312d67ad5a54', '1393743507', '四等奖', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('27', '20', '1', 'oTWCrtyJUl2n7pc7laY0jy3Uv9vI', 'gfqlqk1395814571', '1', 'liuzhaoyun1986', '13997137252', '5332809a58855', '1395818650', '二等奖', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('28', '20', '1', 'oTWCrtzrY_CirXlrAXMEIC-WkK-Y', 'gfqlqk1395814571', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('29', '21', '1', 'ozrOGjqdKI8dcCI-cp46hu3lXtYE', 'wdkszz1395625484', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('30', '21', '1', 'ozrOGjj52Xf7E3KbEExVry3lAcLU', 'wdkszz1395625484', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('31', '20', '1', 'oTWCrty25peS8sxuo_A_Qj4xyYyo', 'gfqlqk1395814571', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('32', '10', '1', 'o8MUTuLtwLnyf6Udgy6IzzfnMz9s', 'zpbqjb1391609865', '1', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('33', '10', '1', 'o8MUTuMT7w48fXtJ8pwbwhGiAdVo', 'zpbqjb1391609865', '1', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('34', '9', '2', 'o8MUTuMRGQ-2VycoIBW8SssIIozA', 'zpbqjb1391609865', '1', '葛云霞', '18912207655', '53357441081a8', '1396012134', '三等奖', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('35', '10', '1', 'o8MUTuPjqNe0TULndwsaXpfTAZuk', 'zpbqjb1391609865', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('36', '9', '1', 'o8MUTuKZfwoJdXeYiUxZFWu6oP0s', 'zpbqjb1391609865', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('37', '9', '2', 'o8MUTuF_v0SVdkzfdnLzbYm24s-w', 'zpbqjb1391609865', '1', 'zxx张晓旭', '15010814544', '53386c0521b5b', '1396206648', '四等奖', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('38', '10', '2', 'o8MUTuF_v0SVdkzfdnLzbYm24s-w', 'zpbqjb1391609865', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('39', '10', '1', 'o8MUTuIRVl9wVr0Umsumjzz-Oovw', 'zpbqjb1391609865', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('40', '9', '1', 'o8MUTuIRVl9wVr0Umsumjzz-Oovw', 'zpbqjb1391609865', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `tp_lottery_record` VALUES ('41', '19', '1', 'o7fesuIEVqTtWTaPNlAKww3RIdzg', 'msowdl1393998402', '0', '', '', '', '0', '', '0', '0');

-- ----------------------------
-- Table structure for `tp_member`
-- ----------------------------
DROP TABLE IF EXISTS `tp_member`;
CREATE TABLE `tp_member` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `isopen` int(1) NOT NULL,
  `homepic` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_member_card_contact`
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_contact`;
CREATE TABLE `tp_member_card_contact` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `sort` tinyint(1) NOT NULL,
  `info` varchar(60) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_contact
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_member_card_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_coupon`;
CREATE TABLE `tp_member_card_coupon` (
  `id` int(11) NOT NULL auto_increment,
  `cardid` int(20) NOT NULL default '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `people` int(3) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  `usetime` int(10) NOT NULL default '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_member_card_create`
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_create`;
CREATE TABLE `tp_member_card_create` (
  `id` int(11) NOT NULL auto_increment,
  `cardid` int(20) NOT NULL default '0',
  `token` varchar(60) NOT NULL,
  `number` varchar(20) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_create
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_member_card_exchange`
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_exchange`;
CREATE TABLE `tp_member_card_exchange` (
  `id` int(11) NOT NULL auto_increment,
  `cardid` int(20) NOT NULL default '0',
  `token` varchar(60) NOT NULL,
  `everyday` tinyint(4) NOT NULL,
  `continuation` tinyint(4) NOT NULL,
  `reward` tinyint(4) NOT NULL,
  `cardinfo` varchar(200) NOT NULL,
  `cardinfo2` varchar(200) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_exchange
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_member_card_info`
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_info`;
CREATE TABLE `tp_member_card_info` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `description` varchar(12) NOT NULL,
  `class` tinyint(1) NOT NULL,
  `password` varchar(11) NOT NULL,
  `crate_time` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_info
-- ----------------------------
INSERT INTO `tp_member_card_info` VALUES ('1', 'jgoken1390204555', 'dafsffff', 'sdf', 'gfdgd', '1', '123456', '0');

-- ----------------------------
-- Table structure for `tp_member_card_integral`
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_integral`;
CREATE TABLE `tp_member_card_integral` (
  `id` int(11) NOT NULL auto_increment,
  `cardid` int(20) NOT NULL default '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `integral` int(8) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  `usetime` int(10) NOT NULL default '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_integral
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_member_card_notice`
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_notice`;
CREATE TABLE `tp_member_card_notice` (
  `id` int(10) NOT NULL auto_increment,
  `cardid` int(10) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `content` text NOT NULL,
  `endtime` int(10) NOT NULL default '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_member_card_set`
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_set`;
CREATE TABLE `tp_member_card_set` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `cardname` varchar(60) NOT NULL,
  `miniscore` int(10) NOT NULL default '0',
  `logo` varchar(255) NOT NULL,
  `bg` varchar(255) NOT NULL,
  `diybg` varchar(255) NOT NULL,
  `msg` varchar(100) NOT NULL,
  `numbercolor` varchar(10) NOT NULL,
  `vipnamecolor` varchar(10) NOT NULL,
  `Lastmsg` varchar(255) NOT NULL,
  `vip` varchar(255) NOT NULL,
  `qiandao` varchar(255) NOT NULL,
  `shopping` varchar(255) NOT NULL,
  `memberinfo` varchar(255) NOT NULL,
  `membermsg` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_set
-- ----------------------------
INSERT INTO `tp_member_card_set` VALUES ('1', 'vssbhv1391702832', '微信微信营销专家会员卡', '0', '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg06.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', '1391703623');
INSERT INTO `tp_member_card_set` VALUES ('2', 'zpbqjb1391609865', '微信微信营销专家会员卡', '0', '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', '1391741433');
INSERT INTO `tp_member_card_set` VALUES ('3', 'rzakjq1393673210', '王小贱“贱”人馆', '0', '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg21.png', '/tpl/User/default/common/images/card/card_bg17.png', '贱人馆会员卡，方便携带收藏，永不挂失', '#EDEDED', '#FFFFFF', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', '1393679034');
INSERT INTO `tp_member_card_set` VALUES ('4', 'wdkszz1395625484', '西宁新标门窗衣柜VIP会员卡', '0', '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg14.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', '1395807217');

-- ----------------------------
-- Table structure for `tp_member_card_sign`
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_sign`;
CREATE TABLE `tp_member_card_sign` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `sign_time` int(11) NOT NULL,
  `is_sign` int(11) NOT NULL,
  `expense` int(11) NOT NULL,
  `score_type` int(11) NOT NULL COMMENT ' ',
  `sell_expense` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_sign
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_member_card_vip`
-- ----------------------------
DROP TABLE IF EXISTS `tp_member_card_vip`;
CREATE TABLE `tp_member_card_vip` (
  `id` int(11) NOT NULL auto_increment,
  `cardid` int(10) NOT NULL default '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_member_card_vip
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_nearby_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_nearby_user`;
CREATE TABLE `tp_nearby_user` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_nearby_user
-- ----------------------------
INSERT INTO `tp_nearby_user` VALUES ('1', 'seeebp1390203728', 'oeU76juB9He-CI1ycT2m4lYFl3GY', '电影院', '1390203967');
INSERT INTO `tp_nearby_user` VALUES ('2', 'knmdyy1390207240', 'oeU76jp015qUOel3UJ2ksU5b1MTE', '酒店', '1390460675');

-- ----------------------------
-- Table structure for `tp_node`
-- ----------------------------
DROP TABLE IF EXISTS `tp_node`;
CREATE TABLE `tp_node` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL COMMENT '节点名称',
  `title` varchar(50) NOT NULL COMMENT '菜单名称',
  `status` tinyint(1) NOT NULL default '0' COMMENT '是否激活 1：是 2：否',
  `remark` varchar(255) default NULL COMMENT '备注说明',
  `pid` smallint(6) unsigned NOT NULL COMMENT '父ID',
  `level` tinyint(1) unsigned NOT NULL COMMENT '节点等级',
  `data` varchar(255) default NULL COMMENT '附加参数',
  `sort` smallint(6) unsigned NOT NULL default '0' COMMENT '排序权重',
  `display` tinyint(1) unsigned NOT NULL default '0' COMMENT '菜单显示类型 0:不显示 1:导航菜单 2:左侧菜单',
  PRIMARY KEY  (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_node
-- ----------------------------
INSERT INTO `tp_node` VALUES ('1', 'cms', '根节点', '1', '', '0', '1', null, '0', '0');
INSERT INTO `tp_node` VALUES ('2', 'Site', '站点管理', '1', '', '1', '0', null, '0', '1');
INSERT INTO `tp_node` VALUES ('3', 'User', '用户管理', '1', '', '1', '0', null, '0', '1');
INSERT INTO `tp_node` VALUES ('4', 'extent', '扩展管理', '1', '', '1', '0', null, '10', '1');
INSERT INTO `tp_node` VALUES ('5', 'article', '内容管理', '1', '', '1', '0', null, '0', '1');
INSERT INTO `tp_node` VALUES ('6', 'Site', '站点设置', '1', '', '2', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('7', 'index', '基本信息设置', '1', '', '6', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('8', 'safe', '安全设置', '1', '', '6', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('9', 'email', '邮箱设置', '1', '', '6', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('10', 'upfile', '附件设置', '1', '', '6', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('11', 'Node', '节点管理', '1', null, '2', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('12', 'add', '添加节点', '1', '', '11', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('13', 'index', '节点列表', '1', '', '11', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('14', 'insert', '写入', '1', '0', '11', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('15', 'edit', '编辑节点', '1', '0', '11', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('16', 'update', '更新节点', '1', '0', '11', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('17', 'del', '删除节点', '1', '0', '11', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('18', 'User', '用户中心', '1', '0', '3', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('19', 'add', '添加用户', '1', '0', '18', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('20', 'index', '用户列表', '1', '0', '18', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('21', 'edit', '编辑用户', '1', '0', '18', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('22', 'insert', '写入数据库', '1', '0', '18', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('23', 'update', '更新用户', '1', '0', '18', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('24', 'del', '删除用户', '1', '0', '18', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('25', 'Group', '管理组', '1', '0', '3', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('26', 'add', '创建用户组', '1', '0', '25', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('27', 'index', '用户组列表', '1', '0', '25', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('28', 'edit', '编辑用户组', '1', '0', '25', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('29', 'del', '删除用户组', '1', '0', '25', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('30', 'insert', '写入数据库', '1', '0', '25', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('31', 'update', '更新用户组', '1', '0', '25', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('32', 'insert', '保存测试', '1', '0', '6', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('36', 'menu', '左侧栏', '1', '0', '35', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('35', 'System', '首页', '1', '0', '2', '2', null, '0', '0');
INSERT INTO `tp_node` VALUES ('37', 'main', '右侧栏目', '1', '0', '35', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('38', 'Img', '微信图文', '1', '0', '5', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('39', 'index', '图文列表', '1', '0', '38', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('40', 'add', '图文添加', '1', '0', '38', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('41', 'edit', '微信图文编辑', '1', '0', '38', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('42', 'del', '微信图文删除', '1', '0', '38', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('80', 'token', '公众号管理', '1', '0', '1', '2', null, '0', '1');
INSERT INTO `tp_node` VALUES ('45', 'Function', '功能模块', '1', '0', '1', '0', null, '0', '1');
INSERT INTO `tp_node` VALUES ('46', 'Function', '功能模块', '1', '0', '45', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('47', 'add', '添加模块', '1', '0', '46', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('48', 'User_group', '会员组', '1', '0', '3', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('49', 'add', '添加会员组', '1', '0', '48', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('50', 'Users', '前台用户', '1', '0', '3', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('51', 'index', '用户列表', '1', '0', '50', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('52', 'add', '添加用户', '1', '0', '50', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('53', 'edit', '编辑用户', '1', '0', '50', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('54', 'del', '删除用户', '1', '0', '50', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('55', 'insert', '写入数据库', '1', '0', '50', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('56', 'upsave', '更新用户', '1', '0', '50', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('57', 'Text', '微信文本', '1', '0', '5', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('58', 'index', '文本列表', '1', '0', '57', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('59', 'del', '删除', '1', '0', '57', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('60', 'Custom', '自定义页面', '1', '0', '5', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('61', 'index', '列表', '1', '0', '60', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('62', 'edit', '编辑', '1', '0', '60', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('63', 'del', '删除', '1', '0', '60', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('64', 'Records', '充值记录', '1', '0', '4', '2', null, '6', '2');
INSERT INTO `tp_node` VALUES ('65', 'index', '充值列表', '1', '0', '64', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('66', 'Case', '用户案例', '1', '0', '4', '2', null, '1', '2');
INSERT INTO `tp_node` VALUES ('67', 'index', '案例列表', '1', '0', '66', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('68', 'add', '添加案例', '1', '0', '66', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('69', 'edit', '编辑案例', '1', '0', '66', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('70', 'del', '删除案例', '1', '0', '66', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('71', 'insert', '写入数据库', '1', '0', '66', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('72', 'upsave', '更新数据库', '1', '0', '66', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('73', 'Links', '友情链接', '1', '0', '4', '2', null, '4', '2');
INSERT INTO `tp_node` VALUES ('74', 'index', '友情链接', '1', '0', '73', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('75', 'add', '添加链接', '1', '0', '73', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('76', 'edit', '编辑链接', '1', '0', '73', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('77', 'insert', '插入数据库', '1', '0', '73', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('78', 'upsave', '更新数据库', '1', '0', '73', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('79', 'del', '删除友情链接', '1', '0', '73', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('81', 'Token', '公众号管理', '1', '0', '80', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('83', 'alipay', '在线支付接口', '1', '0', '6', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('85', 'Article', '文章管理', '1', '0', '4', '2', null, '3', '2');
INSERT INTO `tp_node` VALUES ('86', 'index', '文章列表', '1', '0', '85', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('87', 'add', '增加文章', '1', '0', '85', '3', null, '1', '2');
INSERT INTO `tp_node` VALUES ('88', 'edit', '编辑文章', '1', '0', '85', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('89', 'delete', '删除文章', '1', '0', '85', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('90', 'Case_cate', '案例分类', '1', '0', '4', '2', null, '0', '2');
INSERT INTO `tp_node` VALUES ('91', 'add', '增加分类', '1', '0', '90', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('92', 'index', '分类列表', '1', '0', '90', '3', null, '0', '2');
INSERT INTO `tp_node` VALUES ('93', 'edit', '修改分类', '1', '0', '90', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('94', 'insert', '插入数据库', '1', '0', '90', '3', null, '0', '0');
INSERT INTO `tp_node` VALUES ('95', 'upsave', '更新数据库', '1', '0', '90', '3', null, '0', '0');

-- ----------------------------
-- Table structure for `tp_order`
-- ----------------------------
DROP TABLE IF EXISTS `tp_order`;
CREATE TABLE `tp_order` (
  `id` int(11) NOT NULL auto_increment,
  `user` varchar(255) character set utf8 collate utf8_bin default NULL COMMENT '用户',
  `phone` varchar(100) character set utf8 collate utf8_bin default NULL,
  `come_time` varchar(100) default NULL,
  `type` varchar(50) default NULL,
  `num` int(11) default NULL,
  `old_price` int(11) default NULL,
  `now_price` int(11) default NULL,
  `info` text,
  `add_time` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_order
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_ordering_class`
-- ----------------------------
DROP TABLE IF EXISTS `tp_ordering_class`;
CREATE TABLE `tp_ordering_class` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sort` tinyint(2) NOT NULL,
  `info` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_ordering_class
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_ordering_set`
-- ----------------------------
DROP TABLE IF EXISTS `tp_ordering_set`;
CREATE TABLE `tp_ordering_set` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` varchar(120) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `flash` text NOT NULL,
  `create_time` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_ordering_set
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_other`
-- ----------------------------
DROP TABLE IF EXISTS `tp_other`;
CREATE TABLE `tp_other` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_other
-- ----------------------------
INSERT INTO `tp_other` VALUES ('1', 'cmtlot1390449829', '呵呵', '不会吧');
INSERT INTO `tp_other` VALUES ('2', 'knmdyy1390207240', '', '你回复帮助试试');
INSERT INTO `tp_other` VALUES ('3', 'feedrk1391692825', '', '您好，本平台功能正在完善中，目前还不能解决您提出的问题，抱歉！');
INSERT INTO `tp_other` VALUES ('4', 'btmdkz1392007679', '', '您好，本平台目前处于测试阶段，还无法为您提供相应帮助，请谅解。欢迎您给我们提出宝贵的意见、建议。');
INSERT INTO `tp_other` VALUES ('5', 'usyhhb1392205269', '', '您好，如您需要进一步帮助，可致电：0971-4322069。');
INSERT INTO `tp_other` VALUES ('6', 'tiixha1392039987', '', '本平台目前正在内测，感谢您的关注，期待您的宝贝意见，建议！');

-- ----------------------------
-- Table structure for `tp_panorama`
-- ----------------------------
DROP TABLE IF EXISTS `tp_panorama`;
CREATE TABLE `tp_panorama` (
  `id` int(10) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `intro` varchar(300) NOT NULL default '',
  `music` varchar(100) NOT NULL default '',
  `frontpic` varchar(255) NOT NULL default '',
  `rightpic` varchar(255) NOT NULL default '',
  `backpic` varchar(255) NOT NULL default '',
  `leftpic` varchar(255) NOT NULL default '',
  `toppic` varchar(255) NOT NULL default '',
  `bottompic` varchar(255) NOT NULL default '',
  `keyword` varchar(60) NOT NULL default '',
  `time` int(10) NOT NULL default '0',
  `taxis` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_panorama
-- ----------------------------
INSERT INTO `tp_panorama` VALUES ('1', 'qmxpbf1390048289', '全景测试', '全景描述', '', '/tpl/User/default/common/images/panorama/0.jpg', '/tpl/User/default/common/images/panorama/1.jpg', '/tpl/User/default/common/images/panorama/2.jpg', '/tpl/User/default/common/images/panorama/3.jpg', '/tpl/User/default/common/images/panorama/4.jpg', '/tpl/User/default/common/images/panorama/5.jpg', '全景测试', '0', '1');
INSERT INTO `tp_panorama` VALUES ('2', 'eurggv1390065711', '12222', '', '', '/tpl/User/default/common/images/panorama/0.jpg', '/tpl/User/default/common/images/panorama/1.jpg', '/tpl/User/default/common/images/panorama/2.jpg', '/tpl/User/default/common/images/panorama/3.jpg', '/tpl/User/default/common/images/panorama/4.jpg', '/tpl/User/default/common/images/panorama/5.jpg', '222', '0', '0');
INSERT INTO `tp_panorama` VALUES ('3', 'knmdyy1390207240', '全景', '全景描述', '', '/tpl/User/default/common/images/panorama/0.jpg', '/tpl/User/default/common/images/panorama/1.jpg', '/tpl/User/default/common/images/panorama/2.jpg', '/tpl/User/default/common/images/panorama/3.jpg', '/tpl/User/default/common/images/panorama/4.jpg', '/tpl/User/default/common/images/panorama/5.jpg', '全景', '0', '2');
INSERT INTO `tp_panorama` VALUES ('4', 'knmdyy1390207240', '全景测试', '全景描述', '', '/tpl/User/default/common/images/panorama/0.jpg', '/tpl/User/default/common/images/panorama/1.jpg', '/tpl/User/default/common/images/panorama/2.jpg', '/tpl/User/default/common/images/panorama/3.jpg', '/tpl/User/default/common/images/panorama/4.jpg', '/tpl/User/default/common/images/panorama/5.jpg', '全景', '0', '1');
INSERT INTO `tp_panorama` VALUES ('5', 'btmdkz1392007679', '房产', '', '', '/tpl/User/default/common/images/panorama/0.jpg', '/tpl/User/default/common/images/panorama/1.jpg', '/tpl/User/default/common/images/panorama/2.jpg', '/tpl/User/default/common/images/panorama/3.jpg', '/tpl/User/default/common/images/panorama/4.jpg', '/tpl/User/default/common/images/panorama/5.jpg', '360', '0', '0');

-- ----------------------------
-- Table structure for `tp_photo`
-- ----------------------------
DROP TABLE IF EXISTS `tp_photo`;
CREATE TABLE `tp_photo` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `title` varchar(20) NOT NULL,
  `picurl` varchar(500) NOT NULL,
  `isshoinfo` tinyint(1) NOT NULL,
  `num` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `info` varchar(150) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_photo
-- ----------------------------
INSERT INTO `tp_photo` VALUES ('1', 'jgoken1390204555', '漂亮', 'http://demo.ueat.cn/uploads/j/jgoken1390204555/5/5/6/e/thumb_52df30d5c3c96.jpg', '0', '0', '1', '0', '美女');
INSERT INTO `tp_photo` VALUES ('2', 'usyhhb1392205269', '媒体报道', '/pic/weixin/qhxxjs/gongsidongtai/cyywj.jpg', '0', '1', '1', '0', '2014年2月20日，西宁启鸿信息技术有限公司董事长刘兆云先生，在《西海都市报》的邀请下，与其余9名青海青年创业者，一同前去青海青年创业园参观、学习。');
INSERT INTO `tp_photo` VALUES ('3', 'rzakjq1393673210', '相册', '献策封面', '0', '0', '1', '0', '相册介绍');
INSERT INTO `tp_photo` VALUES ('4', 'gfqlqk1395814571', '逸山伍自转小火锅 产品菜系', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332742733791.jpg', '0', '20', '1', '0', '逸山伍自转小火锅系列菜品介绍，欢迎您前来品尝。\r\n地址：城中区北大街26号。');
INSERT INTO `tp_photo` VALUES ('5', 'wdkszz1395625484', '新标门窗衣柜产品图片展', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332de136f6d2.jpg', '0', '3', '0', '0', '新标门窗衣柜产品图片展');

-- ----------------------------
-- Table structure for `tp_photo_list`
-- ----------------------------
DROP TABLE IF EXISTS `tp_photo_list`;
CREATE TABLE `tp_photo_list` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `picurl` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `info` varchar(120) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_photo_list
-- ----------------------------
INSERT INTO `tp_photo_list` VALUES ('1', 'usyhhb1392205269', '2', '创业园外景', '1', 'http://www.qhtxlt.net/pic/weixin/qhxxjs/gongsidongtai/cyywj.jpg', '0', '1', '创业园外景');
INSERT INTO `tp_photo_list` VALUES ('2', 'gfqlqk1395814571', '4', '产品2', '2', 'http://www.apiying.com/data/ArticleImg/image/20140326/533287387945a.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('3', 'gfqlqk1395814571', '4', '产品1', '1', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332742733791.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('4', 'gfqlqk1395814571', '4', '菜系3', '3', 'http://www.apiying.com/data/ArticleImg/image/20140326/533287c62286e.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('5', 'gfqlqk1395814571', '4', '菜系4', '4', 'http://www.apiying.com/data/ArticleImg/image/20140326/533288b2417c9.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('6', 'gfqlqk1395814571', '4', '菜系5', '5', 'http://www.apiying.com/data/ArticleImg/image/20140326/533288d03fd52.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('7', 'gfqlqk1395814571', '4', '菜系6', '6', 'http://www.apiying.com/data/ArticleImg/image/20140326/533288e9beb2d.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('8', 'gfqlqk1395814571', '4', '菜系7', '7', 'http://www.apiying.com/data/ArticleImg/image/20140326/53328909358be.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('9', 'gfqlqk1395814571', '4', '菜系8', '8', 'http://www.apiying.com/data/ArticleImg/image/20140326/533289250fc4f.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('10', 'gfqlqk1395814571', '4', '菜系9', '9', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332897110fe2.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('11', 'gfqlqk1395814571', '4', '菜系10', '10', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332898d34452.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('12', 'gfqlqk1395814571', '4', '菜系11', '11', 'http://www.apiying.com/data/ArticleImg/image/20140326/533289a9a18c4.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('13', 'gfqlqk1395814571', '4', '菜系14', '14', 'http://www.apiying.com/data/ArticleImg/image/20140326/533289f15c074.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('14', 'gfqlqk1395814571', '4', '菜系13', '0', 'http://www.apiying.com/data/ArticleImg/image/20140326/53328a25d8230.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('15', 'gfqlqk1395814571', '4', '菜系12', '12', 'http://www.apiying.com/data/ArticleImg/image/20140326/53328a81e44c3.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('16', 'gfqlqk1395814571', '4', '菜系13', '13', 'http://www.apiying.com/data/ArticleImg/image/20140326/53328a9fb7ef3.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('17', 'gfqlqk1395814571', '4', '菜系15', '15', 'http://www.apiying.com/data/ArticleImg/image/20140326/53328ac5c708b.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('18', 'gfqlqk1395814571', '4', '菜系16', '16', 'http://www.apiying.com/data/ArticleImg/image/20140326/53328ae78360f.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('19', 'wdkszz1395625484', '5', '布莱克', '1', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332de54080ee.jpg', '0', '1', '');
INSERT INTO `tp_photo_list` VALUES ('20', 'wdkszz1395625484', '5', '阳光房2号', '2', 'http://www.apiying.com/data/ArticleImg/image/20140326/5332de847a871.jpg', '0', '1', '');

-- ----------------------------
-- Table structure for `tp_product`
-- ----------------------------
DROP TABLE IF EXISTS `tp_product`;
CREATE TABLE `tp_product` (
  `id` int(10) NOT NULL auto_increment,
  `catid` mediumint(4) NOT NULL default '0',
  `storeid` mediumint(4) NOT NULL default '0',
  `name` varchar(150) NOT NULL default '',
  `price` float NOT NULL default '0',
  `oprice` float NOT NULL default '0',
  `discount` float NOT NULL default '10',
  `intro` text NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL default '',
  `salecount` mediumint(4) NOT NULL default '0',
  `logourl` varchar(255) NOT NULL default '',
  `dining` tinyint(1) NOT NULL default '0',
  `groupon` tinyint(1) NOT NULL default '0',
  `endtime` int(10) NOT NULL default '0',
  `fakemembercount` mediumint(4) NOT NULL default '0',
  `time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`storeid`),
  KEY `catid_2` (`catid`),
  KEY `storeid` (`storeid`),
  KEY `token` (`token`),
  KEY `price` (`price`),
  KEY `oprice` (`oprice`),
  KEY `discount` (`discount`),
  KEY `dining` (`dining`),
  KEY `groupon` (`groupon`,`endtime`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product
-- ----------------------------
INSERT INTO `tp_product` VALUES ('1', '2', '1', '中华（硬包）', '40', '50', '12.5', '', 'sbhydc1392964286', '中华', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086acf0d118.jpg', '0', '0', '0', '0', '1392972032');
INSERT INTO `tp_product` VALUES ('2', '2', '1', '苏烟（软金砂）', '45', '50', '10', '', 'sbhydc1392964286', '苏烟', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086b4c9d039.jpg', '0', '0', '0', '0', '1393060689');
INSERT INTO `tp_product` VALUES ('3', '2', '1', '泰山（新品）', '20', '22', '10', '', 'sbhydc1392964286', '泰山', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086b7997802.jpg', '0', '0', '0', '0', '1393060736');
INSERT INTO `tp_product` VALUES ('4', '2', '1', '南京（佳品）', '15', '18', '10', '', 'sbhydc1392964286', '南京', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086ba1331f8.jpg', '0', '0', '0', '0', '1393060772');
INSERT INTO `tp_product` VALUES ('5', '2', '1', '南京（红）', '11', '12', '10', '', 'sbhydc1392964286', '南京', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086bc3211cb.jpg', '0', '0', '0', '0', '1393060805');
INSERT INTO `tp_product` VALUES ('6', '2', '1', '泰山（将军）', '20', '22', '10', '', 'sbhydc1392964286', '泰山', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086c1c21a4a.jpg', '0', '0', '0', '0', '1393060894');
INSERT INTO `tp_product` VALUES ('7', '2', '1', '泰山（望岳）', '18', '20', '10', '', 'sbhydc1392964286', '泰山', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086c88c7fa8.jpg', '0', '0', '0', '0', '1393061003');
INSERT INTO `tp_product` VALUES ('8', '2', '1', '泰山（白将军）', '9', '9', '10', '', 'sbhydc1392964286', '泰山', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086cb131cc9.jpg', '0', '0', '0', '0', '1393061047');
INSERT INTO `tp_product` VALUES ('9', '2', '1', '泰山（红将军）', '7', '7', '10', '', 'sbhydc1392964286', '泰山', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086cde4c698.jpg', '0', '0', '0', '0', '1393061088');
INSERT INTO `tp_product` VALUES ('10', '2', '1', '云烟（软紫）', '10', '12', '10', '', 'sbhydc1392964286', '云烟', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086d049ee84.jpg', '0', '0', '0', '0', '1393061128');
INSERT INTO `tp_product` VALUES ('11', '2', '1', '黄鹤楼（雅香）', '20', '22', '10', '', 'sbhydc1392964286', '黄鹤楼', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086d273a261.jpg', '0', '0', '0', '0', '1393061161');
INSERT INTO `tp_product` VALUES ('12', '2', '1', '黄鹤楼（硬金砂）', '15', '18', '10', '', 'sbhydc1392964286', '黄鹤楼', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086d50af878.jpg', '0', '0', '0', '0', '1393061202');
INSERT INTO `tp_product` VALUES ('13', '2', '1', '黄鹤楼（软兰）', '17', '18', '10', '', 'sbhydc1392964286', '黄鹤楼', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086d7217388.jpg', '0', '0', '0', '0', '1393061235');
INSERT INTO `tp_product` VALUES ('14', '2', '1', '利群（蓝天）', '15', '16', '10', '', 'sbhydc1392964286', '利群', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086d904c145.jpg', '0', '0', '0', '0', '1393061266');
INSERT INTO `tp_product` VALUES ('15', '2', '1', '利群（新版）', '13', '15', '10', '', 'sbhydc1392964286', '利群', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086db126322.jpg', '0', '0', '0', '0', '1393061300');
INSERT INTO `tp_product` VALUES ('16', '2', '1', '红塔山（经典100）', '10', '11', '10', '', 'sbhydc1392964286', '红塔山', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086dd426d5a.jpg', '0', '0', '0', '0', '1393061333');
INSERT INTO `tp_product` VALUES ('17', '2', '1', '长白山（软红）', '10', '10', '10', '', 'sbhydc1392964286', '长白山', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086df3b3f20.gif', '0', '0', '0', '0', '1393061366');
INSERT INTO `tp_product` VALUES ('18', '2', '1', '双喜（软国际）', '6', '7', '10', '', 'sbhydc1392964286', '双喜', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086e14f03c5.jpg', '0', '0', '0', '0', '1393061399');
INSERT INTO `tp_product` VALUES ('19', '2', '1', '万宝路（硬红）', '15', '16', '10', '', 'sbhydc1392964286', '万宝路', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086e3ce320f.jpg', '0', '0', '0', '0', '1393061438');
INSERT INTO `tp_product` VALUES ('20', '2', '1', '玉溪（软）', '20', '22', '10', '', 'sbhydc1392964286', '玉溪', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086ecc0753b.jpg', '0', '0', '0', '0', '1393061582');
INSERT INTO `tp_product` VALUES ('21', '2', '1', '娇子（时代阳光）', '7', '8', '10', '', 'sbhydc1392964286', '娇子', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086ef749d21.jpg', '0', '0', '0', '0', '1393061625');
INSERT INTO `tp_product` VALUES ('22', '2', '1', '泰山（宏图）', '10', '11', '10', '', 'sbhydc1392964286', '泰山', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086f1ed4a3c.jpg', '0', '0', '0', '0', '1393061665');
INSERT INTO `tp_product` VALUES ('23', '2', '1', '云烟（软珍品）', '22', '23', '10', '', 'sbhydc1392964286', '云烟', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086f462b357.jpg', '0', '0', '0', '0', '1393061704');
INSERT INTO `tp_product` VALUES ('24', '2', '1', '泰山（华贵）', '10', '11', '10', '', 'sbhydc1392964286', '泰山', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086f666106f.jpg', '0', '0', '0', '0', '1393061735');
INSERT INTO `tp_product` VALUES ('25', '2', '1', '黄金叶（金满堂）', '10', '10', '10', '', 'sbhydc1392964286', '黄金叶', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086f84b858a.png', '0', '0', '0', '0', '1393061766');
INSERT INTO `tp_product` VALUES ('26', '2', '1', '黄金叶（黄金眼）', '13', '15', '10', '', 'sbhydc1392964286', '黄金叶', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086fa050cc8.png', '0', '0', '0', '0', '1393061794');
INSERT INTO `tp_product` VALUES ('27', '2', '1', '中南海（5mg）', '9', '10', '10', '', 'sbhydc1392964286', '中南海', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086fc4c2c3b.jpg', '0', '0', '0', '0', '1393061830');
INSERT INTO `tp_product` VALUES ('28', '2', '1', '中南海（8mg）', '6', '7', '10', '', 'sbhydc1392964286', '中南海', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53086fe338648.jpg', '0', '0', '0', '0', '1393061861');
INSERT INTO `tp_product` VALUES ('29', '2', '1', '泰山（平安）', '10', '10', '10', '', 'sbhydc1392964286', '泰山', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53087001c2fa8.jpg', '0', '0', '0', '0', '1393061891');
INSERT INTO `tp_product` VALUES ('30', '2', '1', '爱喜（薄荷）', '10', '10', '10', '', 'sbhydc1392964286', '爱喜', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/530870277c150.jpg', '0', '0', '0', '0', '1393061929');
INSERT INTO `tp_product` VALUES ('31', '2', '1', '红塔山（软经典）', '7', '7', '10', '', 'sbhydc1392964286', '红塔山', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53087044642d5.jpg', '0', '0', '0', '0', '1393061958');
INSERT INTO `tp_product` VALUES ('32', '2', '1', '七匹狼（豪情）', '5', '5', '10', '', 'sbhydc1392964286', '七匹狼', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/530870620a518.jpg', '0', '0', '0', '0', '1393061988');
INSERT INTO `tp_product` VALUES ('33', '10', '1', '雀巢Nestle脆脆鲨黑芝麻夹心味 480g/盒饼干 24支', '22.8', '24.5', '10', '', 'ymivkz1394500574', '脆脆鲨 黑芝麻夹心味', '0', 'http://www.apiying.com/data/ArticleImg/image/20140311/531e6fce4bd62.png', '0', '0', '0', '0', '1394503785');
INSERT INTO `tp_product` VALUES ('34', '11', '1', '辣椒炒肉', '18', '18', '10', '', 'vbbgps1396228640', '', '0', '', '1', '0', '0', '0', '1396230093');
INSERT INTO `tp_product` VALUES ('35', '11', '1', '红烧肉', '29', '29', '10', '', 'vbbgps1396228640', '', '0', '', '1', '0', '0', '0', '1396230126');
INSERT INTO `tp_product` VALUES ('36', '12', '1', '黄瓜', '8', '8', '10', '', 'vbbgps1396228640', '', '0', '', '1', '0', '0', '0', '1396230147');

-- ----------------------------
-- Table structure for `tp_product_cart`
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_cart`;
CREATE TABLE `tp_product_cart` (
  `id` int(10) NOT NULL auto_increment,
  `token` varchar(50) NOT NULL default '',
  `wecha_id` varchar(60) NOT NULL default '',
  `info` varchar(300) NOT NULL default '',
  `total` mediumint(4) NOT NULL default '0',
  `price` float NOT NULL default '0',
  `truename` varchar(20) NOT NULL default '',
  `tel` varchar(14) NOT NULL default '',
  `address` varchar(100) NOT NULL default '',
  `diningtype` mediumint(2) NOT NULL default '0',
  `tableid` mediumint(4) NOT NULL default '0',
  `time` int(10) NOT NULL default '0',
  `buytime` varchar(100) NOT NULL default '',
  `groupon` tinyint(1) NOT NULL default '0',
  `dining` tinyint(1) NOT NULL default '0',
  `year` mediumint(4) NOT NULL default '0',
  `month` mediumint(4) NOT NULL default '0',
  `day` mediumint(4) NOT NULL default '0',
  `hour` smallint(4) NOT NULL default '0',
  `paid` tinyint(1) NOT NULL default '0',
  `orderid` varchar(40) NOT NULL default '',
  `sent` tinyint(1) NOT NULL default '0',
  `logistics` varchar(70) NOT NULL default '',
  `logisticsid` varchar(50) NOT NULL default '',
  `printed` tinyint(1) NOT NULL default '0',
  `handled` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `token` (`token`,`time`),
  KEY `groupon` (`groupon`),
  KEY `dining` (`dining`),
  KEY `printed` (`printed`),
  KEY `year` (`year`,`month`,`day`,`hour`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_product_cart_list`
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_cart_list`;
CREATE TABLE `tp_product_cart_list` (
  `id` int(10) NOT NULL auto_increment,
  `cartid` int(10) NOT NULL default '0',
  `productid` int(10) NOT NULL default '0',
  `price` float NOT NULL default '0',
  `total` mediumint(4) NOT NULL default '0',
  `wecha_id` varchar(60) NOT NULL default '',
  `token` varchar(50) NOT NULL default '',
  `time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `cartid` (`cartid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product_cart_list
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_product_cat`
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_cat`;
CREATE TABLE `tp_product_cat` (
  `id` mediumint(4) NOT NULL auto_increment,
  `token` varchar(50) NOT NULL default '',
  `name` varchar(50) NOT NULL,
  `des` varchar(500) NOT NULL default '',
  `parentid` mediumint(4) NOT NULL,
  `logourl` varchar(255) NOT NULL,
  `dining` tinyint(1) NOT NULL default '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `parentid` (`parentid`),
  KEY `token` (`token`),
  KEY `dining` (`dining`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product_cat
-- ----------------------------
INSERT INTO `tp_product_cat` VALUES ('1', 'knmdyy1390207240', '分类1', '4567', '0', 'http://demo.ueat.cn/uploads/k/knmdyy1390207240/3/e/2/a/thumb_52dce352f18ee.jpg', '0', '1390208986');
INSERT INTO `tp_product_cat` VALUES ('2', 'sbhydc1392964286', '【香烟类】有害健康，尽早戒烟', '吸烟有害健康，提醒吸烟者尽早戒烟', '0', 'http://www.apiying.com/data/ArticleImg/image/20140221/53070ef1a1d54.jpg', '0', '1392971537');
INSERT INTO `tp_product_cat` VALUES ('10', 'ymivkz1394500574', '休闲食品', '最受欢迎小零食哦', '0', 'http://www.apiying.com/data/ArticleImg/image/20140311/531e6eff5e029.jpg', '0', '1394503452');
INSERT INTO `tp_product_cat` VALUES ('4', 'sbhydc1392964286', '【休闲食品类】好吃你就多吃点', '好吃你就多吃点~', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/530856995aaf9.jpg', '0', '1393055408');
INSERT INTO `tp_product_cat` VALUES ('5', 'sbhydc1392964286', '【酒水、饮料类】喝车不开酒，开酒不喝车！', '喝车不开酒，开酒不喝车！', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/530857791ae0e.jpg', '0', '1393055661');
INSERT INTO `tp_product_cat` VALUES ('6', 'sbhydc1392964286', '【泡面、肉肠类】宅男宅女就好这口！', '宅男宅女就好这口！', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/5308581bd2297.jpg', '0', '1393055832');
INSERT INTO `tp_product_cat` VALUES ('11', 'vbbgps1396228640', '湘菜', '湘菜', '0', '', '1', '1396230057');
INSERT INTO `tp_product_cat` VALUES ('12', 'vbbgps1396228640', '凉菜', '凉菜', '0', '', '1', '1396230067');
INSERT INTO `tp_product_cat` VALUES ('8', 'sbhydc1392964286', '【口香糖、巧克力】吃多了掉牙哦亲~', '吃多了掉牙哦亲~', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53085b0464b15.jpg', '0', '1393056534');
INSERT INTO `tp_product_cat` VALUES ('9', 'sbhydc1392964286', '【箱装商品类】比单品便宜很多哦，送礼必备', '比单品便宜很多哦，送礼必备', '0', 'http://www.apiying.com/data/ArticleImg/image/20140222/53085c4fbaef6.jpg', '0', '1393056854');

-- ----------------------------
-- Table structure for `tp_product_diningtable`
-- ----------------------------
DROP TABLE IF EXISTS `tp_product_diningtable`;
CREATE TABLE `tp_product_diningtable` (
  `id` mediumint(4) NOT NULL auto_increment,
  `token` varchar(50) NOT NULL default '',
  `name` varchar(60) NOT NULL default '',
  `intro` varchar(500) NOT NULL default '',
  `taxis` mediumint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_product_diningtable
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_reply_info`
-- ----------------------------
DROP TABLE IF EXISTS `tp_reply_info`;
CREATE TABLE `tp_reply_info` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL default '',
  `picurl` varchar(255) NOT NULL default '',
  `info` varchar(120) NOT NULL default '',
  `infotype` varchar(20) NOT NULL default '',
  `diningyuding` tinyint(1) NOT NULL default '1',
  `diningwaimai` tinyint(1) NOT NULL default '1',
  `config` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_reply_info
-- ----------------------------
INSERT INTO `tp_reply_info` VALUES ('1', 'qmxpbf1390048289', '欢迎查看全景', 'http://demo.ueat.cn/uploads/q/qmxpbf1390048289/9/1/8/2/thumb_52da8c8c092bc.png', '全景介绍', 'panorama', '1', '1', '');
INSERT INTO `tp_reply_info` VALUES ('2', 'knmdyy1390207240', '商城标题', 'http://demo.ueat.cn/uploads/k/knmdyy1390207240/3/e/1/7/thumb_52dce7f5a6168.jpg', '二恶天宇', 'Shop', '1', '1', '');
INSERT INTO `tp_reply_info` VALUES ('3', 'feedrk1391692825', '您好，请输入您的留言内容，感谢您的参与。', '', '', 'Liuyan', '1', '1', '');
INSERT INTO `tp_reply_info` VALUES ('4', 'sbhydc1392964286', '顺心便利小店，点击开始下单哦亲！', 'http://www.apiying.com/data/ArticleImg/image/20140222/530852ae0a643.jpg', '实惠多多，便利多多，顺心便利小店~\r\n营业时间：早晨8：00-晚上9：00\r\n起送价格：30元（外加配送费2元），50元以上配送免费~\r\n配送区域：王官庄小区', 'Shop', '1', '1', '');
INSERT INTO `tp_reply_info` VALUES ('5', 'usyhhb1392205269', '留言', '', '', 'Liuyan', '1', '1', '');

-- ----------------------------
-- Table structure for `tp_requestdata`
-- ----------------------------
DROP TABLE IF EXISTS `tp_requestdata`;
CREATE TABLE `tp_requestdata` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `time` int(11) NOT NULL,
  `textnum` int(5) NOT NULL,
  `imgnum` int(5) NOT NULL,
  `videonum` int(5) NOT NULL,
  `other` int(5) NOT NULL,
  `follownum` int(5) NOT NULL,
  `unfollownum` int(5) NOT NULL,
  `3g` int(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_requestdata
-- ----------------------------
INSERT INTO `tp_requestdata` VALUES ('1', 'qmxpbf1390048289', '2014', '1', '18', '1390048908', '3', '0', '1', '2', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('2', 'zldyrw1387799564', '2014', '1', '18', '1390060755', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('3', 'eurggv1390065711', '2014', '1', '19', '1390066264', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('4', 'qmxpbf1390048289', '2014', '1', '20', '1390202382', '2', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('5', 'seeebp1390203728', '2014', '1', '20', '1390203887', '27', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('6', 'knmdyy1390207240', '2014', '1', '20', '1390207731', '7', '0', '1', '5', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('7', 'zldyrw1387799564', '2014', '1', '20', '1390212295', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('8', 'xbegxl1390225897', '2014', '1', '20', '1390226291', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('9', 'knmdyy1390207240', '2014', '1', '21', '1390277426', '1', '0', '0', '0', '2', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('10', 'xbegxl1390225897', '2014', '1', '21', '1390279184', '2', '0', '0', '0', '3', '2', '0');
INSERT INTO `tp_requestdata` VALUES ('11', 'xbegxl1390225897', '2014', '1', '22', '1390320584', '0', '0', '0', '0', '0', '2', '0');
INSERT INTO `tp_requestdata` VALUES ('12', 'knmdyy1390207240', '2014', '1', '22', '1390357270', '21', '0', '0', '7', '3', '4', '0');
INSERT INTO `tp_requestdata` VALUES ('13', 'knmdyy1390207240', '2014', '1', '23', '1390407387', '35', '0', '1', '9', '3', '2', '0');
INSERT INTO `tp_requestdata` VALUES ('14', 'knmdyy1390207240', '2014', '1', '24', '1390493055', '3', '0', '1', '12', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('15', 'xreagi1389709724', '2014', '1', '24', '1390543534', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('16', 'zpbqjb1391609865', '2014', '2', '5', '1391612498', '12', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('17', 'zpbqjb1391609865', '2014', '2', '6', '1391660844', '6', '0', '0', '6', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('18', 'feedrk1391692825', '2014', '2', '6', '1391693445', '38', '0', '0', '0', '6', '5', '0');
INSERT INTO `tp_requestdata` VALUES ('19', 'feedrk1391692825', '2014', '2', '7', '1391703208', '104', '0', '0', '0', '12', '11', '0');
INSERT INTO `tp_requestdata` VALUES ('20', 'zpbqjb1391609865', '2014', '2', '7', '1391741551', '7', '0', '0', '2', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('21', 'feedrk1391692825', '2014', '2', '8', '1391823298', '83', '8', '0', '0', '11', '9', '0');
INSERT INTO `tp_requestdata` VALUES ('22', 'zpbqjb1391609865', '2014', '2', '8', '1391829853', '18', '0', '0', '8', '3', '2', '0');
INSERT INTO `tp_requestdata` VALUES ('23', 'feedrk1391692825', '2014', '2', '9', '1391881218', '24', '2', '0', '0', '2', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('24', 'zpbqjb1391609865', '2014', '2', '9', '1391909670', '14', '1', '0', '3', '2', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('25', 'feedrk1391692825', '2014', '2', '10', '1391965294', '12', '0', '0', '0', '8', '9', '0');
INSERT INTO `tp_requestdata` VALUES ('26', 'btmdkz1392007679', '2014', '2', '10', '1392015461', '131', '0', '0', '12', '12', '5', '0');
INSERT INTO `tp_requestdata` VALUES ('27', 'tiixha1392039987', '2014', '2', '10', '1392040631', '8', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('28', 'zpbqjb1391609865', '2014', '2', '10', '1392040986', '4', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('29', 'btmdkz1392007679', '2014', '2', '11', '1392080851', '30', '0', '0', '1', '2', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('30', 'zpbqjb1391609865', '2014', '2', '11', '1392096031', '29', '2', '0', '0', '4', '2', '0');
INSERT INTO `tp_requestdata` VALUES ('31', 'tiixha1392039987', '2014', '2', '11', '1392133952', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('32', 'btmdkz1392007679', '2014', '2', '12', '1392165926', '115', '0', '0', '2', '14', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('33', 'zpbqjb1391609865', '2014', '2', '12', '1392174347', '3', '0', '0', '0', '1', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('34', 'usyhhb1392205269', '2014', '2', '12', '1392205620', '16', '0', '0', '0', '2', '2', '0');
INSERT INTO `tp_requestdata` VALUES ('35', 'zpbqjb1391609865', '2014', '2', '13', '1392223594', '8', '0', '0', '0', '2', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('36', 'btmdkz1392007679', '2014', '2', '13', '1392252102', '67', '0', '0', '3', '4', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('37', 'usyhhb1392205269', '2014', '2', '13', '1392254091', '2', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('38', 'feedrk1391692825', '2014', '2', '13', '1392273989', '4', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('39', 'zpbqjb1391609865', '2014', '2', '14', '1392382891', '30', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('40', 'btmdkz1392007679', '2014', '2', '14', '1392382923', '3', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('41', 'hklteq1392380831', '2014', '2', '14', '1392388521', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('42', 'btmdkz1392007679', '2014', '2', '15', '1392394484', '28', '0', '0', '0', '7', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('43', 'hklteq1392380831', '2014', '2', '15', '1392419393', '0', '0', '0', '0', '6', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('44', 'zpbqjb1391609865', '2014', '2', '15', '1392472997', '33', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('45', 'tiixha1392039987', '2014', '2', '15', '1392475514', '4', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('46', 'hklteq1392380831', '2014', '2', '16', '1392511647', '0', '0', '0', '0', '6', '2', '0');
INSERT INTO `tp_requestdata` VALUES ('47', 'btmdkz1392007679', '2014', '2', '16', '1392512463', '22', '1', '0', '1', '2', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('48', 'zpbqjb1391609865', '2014', '2', '16', '1392518320', '20', '0', '0', '1', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('49', 'tiixha1392039987', '2014', '2', '16', '1392525200', '1', '0', '0', '0', '1', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('50', 'hklteq1392380831', '2014', '2', '17', '1392602985', '0', '0', '0', '0', '3', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('51', 'btmdkz1392007679', '2014', '2', '17', '1392603101', '11', '0', '0', '1', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('52', 'zpbqjb1391609865', '2014', '2', '17', '1392608458', '28', '3', '0', '1', '2', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('53', 'hklteq1392380831', '2014', '2', '18', '1392679311', '0', '0', '0', '0', '7', '3', '0');
INSERT INTO `tp_requestdata` VALUES ('54', 'usyhhb1392205269', '2014', '2', '18', '1392717165', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('55', 'zpbqjb1391609865', '2014', '2', '18', '1392719192', '3', '1', '0', '0', '1', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('56', 'btmdkz1392007679', '2014', '2', '18', '1392732922', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('57', 'hklteq1392380831', '2014', '2', '19', '1392745991', '0', '0', '0', '0', '5', '3', '0');
INSERT INTO `tp_requestdata` VALUES ('58', 'btmdkz1392007679', '2014', '2', '19', '1392793655', '2', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('59', 'zpbqjb1391609865', '2014', '2', '19', '1392794107', '7', '2', '0', '1', '1', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('60', 'zpbqjb1391609865', '2014', '2', '20', '1392869634', '6', '0', '0', '1', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('61', 'hklteq1392380831', '2014', '2', '20', '1392872946', '0', '0', '0', '0', '2', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('62', 'feedrk1391692825', '2014', '2', '20', '1392910961', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('63', 'btmdkz1392007679', '2014', '2', '20', '1392911003', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('64', 'zpbqjb1391609865', '2014', '2', '21', '1392962369', '28', '1', '0', '0', '2', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('65', 'sbhydc1392964286', '2014', '2', '21', '1392965166', '34', '0', '0', '11', '10', '9', '0');
INSERT INTO `tp_requestdata` VALUES ('66', 'feedrk1391692825', '2014', '2', '22', '1393025265', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('67', 'usyhhb1392205269', '2014', '2', '22', '1393025295', '17', '7', '0', '0', '3', '3', '0');
INSERT INTO `tp_requestdata` VALUES ('68', 'sbhydc1392964286', '2014', '2', '22', '1393042952', '18', '0', '0', '21', '15', '15', '0');
INSERT INTO `tp_requestdata` VALUES ('69', 'zpbqjb1391609865', '2014', '2', '22', '1393046959', '30', '0', '0', '0', '5', '4', '0');
INSERT INTO `tp_requestdata` VALUES ('70', 'usyhhb1392205269', '2014', '2', '23', '1393086032', '1', '2', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('71', 'zpbqjb1391609865', '2014', '2', '23', '1393087650', '36', '2', '0', '2', '8', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('72', 'sbhydc1392964286', '2014', '2', '23', '1393119913', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('73', 'btmdkz1392007679', '2014', '2', '23', '1393121867', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('74', 'zpbqjb1391609865', '2014', '2', '24', '1393211071', '20', '1', '0', '1', '4', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('75', 'btmdkz1392007679', '2014', '2', '24', '1393249487', '2', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('76', 'zpbqjb1391609865', '2014', '2', '25', '1393293085', '17', '0', '0', '0', '3', '2', '0');
INSERT INTO `tp_requestdata` VALUES ('77', 'sbhydc1392964286', '2014', '2', '25', '1393322785', '1', '0', '0', '1', '1', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('78', 'zpbqjb1391609865', '2014', '2', '26', '1393396182', '10', '0', '0', '0', '3', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('79', 'zpbqjb1391609865', '2014', '2', '27', '1393466702', '10', '0', '0', '0', '4', '3', '0');
INSERT INTO `tp_requestdata` VALUES ('80', 'feedrk1391692825', '2014', '2', '27', '1393476215', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('81', 'btmdkz1392007679', '2014', '2', '27', '1393480912', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('82', 'lrdbim1393515676', '2014', '2', '27', '1393515928', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('83', 'zpbqjb1391609865', '2014', '2', '28', '1393517370', '6', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('84', 'feedrk1391692825', '2014', '2', '28', '1393549275', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('85', 'usyhhb1392205269', '2014', '2', '28', '1393549304', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('86', 'btmdkz1392007679', '2014', '3', '1', '1393631090', '3', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('87', 'zpbqjb1391609865', '2014', '3', '1', '1393673135', '2', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('88', 'rzakjq1393673210', '2014', '3', '1', '1393674268', '10', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('89', 'btmdkz1392007679', '2014', '3', '2', '1393730348', '2', '3', '0', '3', '1', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('90', 'zpbqjb1391609865', '2014', '3', '2', '1393742960', '9', '1', '0', '1', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('91', 'zpbqjb1391609865', '2014', '3', '3', '1393812337', '14', '0', '0', '0', '5', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('92', 'kkxebf1393860973', '2014', '3', '3', '1393861993', '2', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('93', 'bebwmx1393770649', '2014', '3', '4', '1393871481', '4', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('94', 'zpbqjb1391609865', '2014', '3', '4', '1393896205', '11', '2', '0', '3', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('95', 'usyhhb1392205269', '2014', '3', '4', '1393903288', '1', '2', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('96', 'nrvvht1393908809', '2014', '3', '4', '1393910095', '10', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('97', 'zpbqjb1391609865', '2014', '3', '5', '1393998383', '3', '0', '0', '0', '1', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('98', 'usyhhb1392205269', '2014', '3', '5', '1394010246', '1', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('99', 'egagky1394029884', '2014', '3', '5', '1394030422', '4', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('100', 'zpbqjb1391609865', '2014', '3', '6', '1394050287', '2', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('101', 'bebwmx1393770649', '2014', '3', '6', '1394095276', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('102', 'btmdkz1392007679', '2014', '3', '6', '1394117450', '1', '0', '0', '1', '0', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('103', 'usyhhb1392205269', '2014', '3', '7', '1394170545', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('104', 'zpbqjb1391609865', '2014', '3', '7', '1394172137', '4', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('105', 'msowdl1393998402', '2014', '3', '7', '1394182984', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('106', 'zpbqjb1391609865', '2014', '3', '8', '1394264599', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('107', 'zpbqjb1391609865', '2014', '3', '9', '1394295829', '3', '0', '0', '0', '0', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('108', 'nrvvht1393908809', '2014', '3', '10', '1394423584', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('109', 'usyhhb1392205269', '2014', '3', '10', '1394432557', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('110', 'zpbqjb1391609865', '2014', '3', '10', '1394445696', '1', '0', '0', '0', '0', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('111', 'zpbqjb1391609865', '2014', '3', '11', '1394499475', '2', '0', '0', '0', '0', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('112', 'ymivkz1394500574', '2014', '3', '11', '1394504232', '11', '0', '0', '2', '0', '2', '0');
INSERT INTO `tp_requestdata` VALUES ('113', 'bebwmx1393770649', '2014', '3', '11', '1394537210', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('114', 'nrvvht1393908809', '2014', '3', '12', '1394606273', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('115', 'zpbqjb1391609865', '2014', '3', '12', '1394620892', '5', '0', '0', '0', '1', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('116', 'btmdkz1392007679', '2014', '3', '13', '1394698048', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('117', 'zpbqjb1391609865', '2014', '3', '13', '1394702631', '4', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('118', 'zpbqjb1391609865', '2014', '3', '14', '1394767112', '10', '1', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('119', 'nrvvht1393908809', '2014', '3', '14', '1394767189', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('120', 'usyhhb1392205269', '2014', '3', '14', '1394790708', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('121', 'zpbqjb1391609865', '2014', '3', '15', '1394813959', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('122', 'feedrk1391692825', '2014', '3', '15', '1394850895', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('123', 'feedrk1391692825', '2014', '3', '16', '1394943387', '1', '0', '0', '0', '0', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('124', 'zpbqjb1391609865', '2014', '3', '16', '1394953571', '2', '0', '0', '4', '0', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('125', 'usyhhb1392205269', '2014', '3', '17', '1395046727', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('126', 'msowdl1393998402', '2014', '3', '18', '1395112540', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('127', 'zpbqjb1391609865', '2014', '3', '19', '1395205142', '7', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('128', 'bjjxjc1395216010', '2014', '3', '19', '1395216741', '32', '4', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('129', 'zpbqjb1391609865', '2014', '3', '20', '1395284719', '0', '1', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('130', 'usyhhb1392205269', '2014', '3', '20', '1395285020', '2', '2', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('131', 'bjjxjc1395216010', '2014', '3', '20', '1395297290', '1', '4', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('132', 'bebwmx1393770649', '2014', '3', '20', '1395314375', '4', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('133', 'bjjxjc1395216010', '2014', '3', '21', '1395332846', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('134', 'usyhhb1392205269', '2014', '3', '21', '1395360303', '1', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('135', 'zpbqjb1391609865', '2014', '3', '21', '1395371091', '5', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('136', 'ciscly1395386856', '2014', '3', '21', '1395388277', '7', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('137', 'zpbqjb1391609865', '2014', '3', '22', '1395455516', '8', '1', '0', '3', '5', '4', '0');
INSERT INTO `tp_requestdata` VALUES ('138', 'usyhhb1392205269', '2014', '3', '22', '1395466544', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('139', 'bjjxjc1395216010', '2014', '3', '22', '1395494161', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('140', 'zpbqjb1391609865', '2014', '3', '23', '1395557450', '5', '1', '0', '0', '2', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('141', 'tiixha1392039987', '2014', '3', '23', '1395581586', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('142', 'usyhhb1392205269', '2014', '3', '24', '1395625197', '0', '1', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('143', 'btmdkz1392007679', '2014', '3', '24', '1395641581', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('144', 'zpbqjb1391609865', '2014', '3', '24', '1395665092', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('145', 'qdxqhj1395665354', '2014', '3', '24', '1395667635', '10', '0', '0', '0', '1', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('146', 'wgsiap1395669220', '2014', '3', '24', '1395673615', '0', '1', '0', '0', '2', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('147', 'wgsiap1395669220', '2014', '3', '25', '1395677612', '25', '14', '0', '0', '98', '35', '0');
INSERT INTO `tp_requestdata` VALUES ('148', 'usyhhb1392205269', '2014', '3', '25', '1395679175', '0', '3', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('149', 'zpbqjb1391609865', '2014', '3', '25', '1395707606', '5', '0', '0', '0', '3', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('150', 'qdxqhj1395665354', '2014', '3', '25', '1395716473', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('151', 'wgsiap1395669220', '2014', '3', '26', '1395764406', '24', '49', '0', '0', '19', '11', '0');
INSERT INTO `tp_requestdata` VALUES ('152', 'wdkszz1395625484', '2014', '3', '26', '1395806380', '6', '2', '0', '0', '3', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('153', 'zpbqjb1391609865', '2014', '3', '26', '1395813407', '1', '1', '0', '1', '1', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('154', 'gfqlqk1395814571', '2014', '3', '26', '1395817972', '12', '5', '0', '4', '1', '5', '0');
INSERT INTO `tp_requestdata` VALUES ('155', 'btmdkz1392007679', '2014', '3', '26', '1395833195', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('156', 'wgsiap1395669220', '2014', '3', '27', '1395850009', '5', '9', '0', '0', '2', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('157', 'zpbqjb1391609865', '2014', '3', '27', '1395888681', '6', '0', '0', '1', '9', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('158', 'usyhhb1392205269', '2014', '3', '27', '1395889343', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('159', 'btmdkz1392007679', '2014', '3', '27', '1395889409', '3', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('160', 'gfqlqk1395814571', '2014', '3', '27', '1395890899', '1', '3', '0', '3', '4', '3', '0');
INSERT INTO `tp_requestdata` VALUES ('161', 'wdkszz1395625484', '2014', '3', '27', '1395895724', '1', '1', '0', '2', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('162', 'wgsiap1395669220', '2014', '3', '28', '1395939402', '2', '12', '0', '0', '3', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('163', 'zpbqjb1391609865', '2014', '3', '28', '1395971052', '30', '0', '0', '3', '3', '2', '0');
INSERT INTO `tp_requestdata` VALUES ('164', 'bebwmx1393770649', '2014', '3', '28', '1395981702', '4', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('165', 'zpbqjb1391609865', '2014', '3', '29', '1396023175', '13', '0', '0', '2', '4', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('166', 'wgsiap1395669220', '2014', '3', '29', '1396028635', '3', '11', '0', '0', '2', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('167', 'gfqlqk1395814571', '2014', '3', '29', '1396068052', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('168', 'wgsiap1395669220', '2014', '3', '30', '1396117459', '0', '2', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('169', 'usyhhb1392205269', '2014', '3', '30', '1396143718', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('170', 'gfqlqk1395814571', '2014', '3', '30', '1396163830', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('171', 'zpbqjb1391609865', '2014', '3', '30', '1396167038', '5', '0', '0', '0', '3', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('172', 'zpbqjb1391609865', '2014', '3', '31', '1396196372', '19', '0', '0', '4', '3', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('173', 'wgsiap1395669220', '2014', '3', '31', '1396228163', '1', '5', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('174', 'usyhhb1392205269', '2014', '3', '31', '1396231647', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `tp_requestdata` VALUES ('175', 'msowdl1393998402', '2014', '3', '31', '1396232328', '5', '0', '0', '4', '2', '1', '0');
INSERT INTO `tp_requestdata` VALUES ('176', 'btmdkz1392007679', '2014', '3', '31', '1396233514', '0', '0', '0', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for `tp_reservation`
-- ----------------------------
DROP TABLE IF EXISTS `tp_reservation`;
CREATE TABLE `tp_reservation` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `address` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `lng` varchar(13) NOT NULL,
  `lat` varchar(13) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `headpic` varchar(200) NOT NULL,
  `info` varchar(200) NOT NULL,
  `typename` varchar(50) NOT NULL,
  `typename2` varchar(50) NOT NULL,
  `typename3` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL default '1',
  `date` varchar(50) NOT NULL,
  `allnums` varchar(50) NOT NULL,
  `name_show` tinyint(4) NOT NULL default '1',
  `time_show` tinyint(4) NOT NULL default '1',
  `txt1` varchar(50) NOT NULL,
  `value1` varchar(50) NOT NULL,
  `txt2` varchar(50) NOT NULL,
  `value2` varchar(50) NOT NULL,
  `txt3` varchar(50) NOT NULL,
  `value3` varchar(50) NOT NULL,
  `txt4` varchar(50) NOT NULL,
  `value4` varchar(50) NOT NULL,
  `txt5` varchar(50) NOT NULL,
  `value5` varchar(50) NOT NULL,
  `select1` varchar(50) NOT NULL,
  `svalue1` varchar(100) NOT NULL,
  `select2` varchar(50) NOT NULL,
  `svalue2` varchar(100) NOT NULL,
  `select3` varchar(50) NOT NULL,
  `svalue3` varchar(100) NOT NULL,
  `select4` varchar(50) NOT NULL,
  `svalue4` varchar(100) NOT NULL,
  `select5` varchar(50) NOT NULL,
  `svalue5` varchar(100) NOT NULL,
  `datename` varchar(100) NOT NULL,
  `take` int(11) NOT NULL default '1',
  `email` varchar(30) NOT NULL,
  `open_email` tinyint(4) NOT NULL default '0',
  `sms` varchar(13) NOT NULL,
  `open_sms` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_reservation
-- ----------------------------
INSERT INTO `tp_reservation` VALUES ('8', 'knmdyy1390207240', '预约', '预约测试', 'http://bbs.ueat.cn/template/win8mi_second_windows/src/img//logo.png', '合肥市政务区南二环路3818号万达广场', '', '104.082132', '37.535541', '0551-65371998', 'http://bbs.ueat.cn/template/win8mi_second_windows/src/img//logo.png', '订单详情', '我的订单', '订单说明', '订单电话', '1', '', '', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '0', '', '0');

-- ----------------------------
-- Table structure for `tp_reservebook`
-- ----------------------------
DROP TABLE IF EXISTS `tp_reservebook`;
CREATE TABLE `tp_reservebook` (
  `id` int(11) NOT NULL auto_increment,
  `rid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `truename` varchar(50) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `housetype` varchar(50) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `timepart` varchar(50) NOT NULL,
  `info` varchar(100) NOT NULL,
  `type` char(15) NOT NULL,
  `booktime` int(11) NOT NULL,
  `remate` tinyint(3) NOT NULL default '0',
  `kfinfo` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`),
  KEY `wecha_id` (`wecha_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_reservebook
-- ----------------------------
INSERT INTO `tp_reservebook` VALUES ('1', '0', 'knmdyy1390207240', '', '北京', '18600982295', '三居室', '2014-01-25', '8:00-9:00', '3儿童有', 'house_book', '1390494058', '0', '');

-- ----------------------------
-- Table structure for `tp_role`
-- ----------------------------
DROP TABLE IF EXISTS `tp_role`;
CREATE TABLE `tp_role` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL COMMENT '后台组名',
  `pid` smallint(6) unsigned NOT NULL default '0' COMMENT '父ID',
  `status` tinyint(1) unsigned default '0' COMMENT '是否激活 1：是 0：否',
  `sort` smallint(6) unsigned NOT NULL default '0' COMMENT '排序权重',
  `remark` varchar(255) default NULL COMMENT '备注说明',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_role
-- ----------------------------
INSERT INTO `tp_role` VALUES ('5', '超级管理员', '0', '1', '0', '');
INSERT INTO `tp_role` VALUES ('6', '演示组', '0', '1', '0', '');
INSERT INTO `tp_role` VALUES ('9', '普通会员', '0', '1', '0', '');

-- ----------------------------
-- Table structure for `tp_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_role_user`;
CREATE TABLE `tp_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` smallint(6) unsigned NOT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_selfform`
-- ----------------------------
DROP TABLE IF EXISTS `tp_selfform`;
CREATE TABLE `tp_selfform` (
  `id` int(10) NOT NULL auto_increment,
  `token` varchar(30) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `keyword` varchar(100) NOT NULL default '',
  `intro` varchar(400) NOT NULL default '',
  `content` text NOT NULL,
  `time` int(10) NOT NULL default '0',
  `successtip` varchar(60) NOT NULL default '',
  `failtip` varchar(60) NOT NULL default '',
  `endtime` int(10) NOT NULL default '0',
  `logourl` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `token` (`token`),
  KEY `endtime` (`endtime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_selfform
-- ----------------------------
INSERT INTO `tp_selfform` VALUES ('1', 'zpbqjb1391609865', '酒店订单', '预定', '酒店订单\r\n酒店订单\r\n酒店订单\r\n酒店订单', '酒店订单<br />\r\n酒店订单<br />\r\n酒店订单<br />\r\n<p>\r\n	酒店订单\r\n</p>\r\n<p>\r\n	酒店订单<br />\r\n酒店订单<br />\r\n酒店订单<br />\r\n酒店订单\r\n</p>', '1394968855', '', '', '1401551999', 'http://www.apiying.com/data/ArticleImg/image/20140316/5325890af14f2.png');

-- ----------------------------
-- Table structure for `tp_selfform_input`
-- ----------------------------
DROP TABLE IF EXISTS `tp_selfform_input`;
CREATE TABLE `tp_selfform_input` (
  `id` int(10) NOT NULL auto_increment,
  `formid` int(10) NOT NULL default '0',
  `displayname` varchar(30) NOT NULL default '',
  `fieldname` varchar(30) NOT NULL default '',
  `inputtype` varchar(20) NOT NULL default '',
  `options` varchar(200) NOT NULL default '',
  `require` tinyint(1) NOT NULL default '0',
  `regex` varchar(100) NOT NULL default '',
  `taxis` mediumint(4) NOT NULL default '0',
  `errortip` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `formid` (`formid`,`taxis`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_selfform_input
-- ----------------------------
INSERT INTO `tp_selfform_input` VALUES ('1', '1', '姓名', 'name', 'text', '', '1', '', '0', '');
INSERT INTO `tp_selfform_input` VALUES ('2', '1', '手机', 'phone', 'text', '', '0', '', '0', '');

-- ----------------------------
-- Table structure for `tp_selfform_value`
-- ----------------------------
DROP TABLE IF EXISTS `tp_selfform_value`;
CREATE TABLE `tp_selfform_value` (
  `id` int(10) NOT NULL auto_increment,
  `formid` int(10) NOT NULL default '0',
  `wecha_id` varchar(50) NOT NULL default '',
  `values` varchar(2000) NOT NULL default '',
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `formid` (`formid`,`wecha_id`,`time`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_selfform_value
-- ----------------------------
INSERT INTO `tp_selfform_value` VALUES ('1', '1', 'o8MUTuOaVUIdHgi-RGnIjyAr4jms', 'a:2:{s:4:\"name\";s:6:\"张三\";s:5:\"phone\";s:11:\"15201681111\";}', '1394969256');

-- ----------------------------
-- Table structure for `tp_site_plugmenu`
-- ----------------------------
DROP TABLE IF EXISTS `tp_site_plugmenu`;
CREATE TABLE `tp_site_plugmenu` (
  `token` varchar(60) NOT NULL default '',
  `name` varchar(20) NOT NULL default '',
  `url` varchar(100) default '',
  `taxis` mediumint(4) NOT NULL default '0',
  `display` tinyint(1) NOT NULL default '0',
  KEY `token` (`token`,`taxis`,`display`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_site_plugmenu
-- ----------------------------
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'tel', '48800000000', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'memberinfo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'nav', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'message', null, '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'share', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'home', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'album', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'email', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'shopping', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'membercard', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'activity', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'weibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'tencentweibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'qqzone', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'wechat', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'music', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'video', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'recommend', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('eurggv1390065711', 'other', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'tel', '18600982295', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'memberinfo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'nav', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'message', null, '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'share', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'home', '', '0', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'album', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'email', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'shopping', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'membercard', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'activity', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'weibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'tencentweibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'qqzone', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'wechat', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'music', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'video', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'recommend', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('seeebp1390203728', 'other', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'tel', '11111111111', '0', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'memberinfo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'nav', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'message', null, '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'share', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'home', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'album', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'email', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'shopping', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'membercard', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'activity', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'weibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'tencentweibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'qqzone', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'wechat', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'music', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'video', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'recommend', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('jgoken1390204555', 'other', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'tel', '13525452512', '0', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'memberinfo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'nav', '', '0', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'message', null, '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'share', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'home', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'album', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'email', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'shopping', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'membercard', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'activity', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'weibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'tencentweibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'qqzone', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'wechat', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'music', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'video', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'recommend', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('knmdyy1390207240', 'other', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'tel', '13997137252', '1', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'weibo', 'http://weibo.com/qhxxjs', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'memberinfo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'nav', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'activity', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'membercard', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'shopping', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'email', '800027868@b.qq.com', '0', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'album', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'home', 'http://www.qhit.com.cn', '0', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'share', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'message', null, '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'tencentweibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'qqzone', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'wechat', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'music', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'video', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'recommend', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('usyhhb1392205269', 'other', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'memberinfo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'wechat', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'qqzone', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'tel', '18822188456', '0', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'tencentweibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'weibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'activity', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'membercard', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'shopping', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'email', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'album', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'home', '', '0', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'share', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'message', null, '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'nav', '', '0', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'music', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'video', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'recommend', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('rzakjq1393673210', 'other', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'tel', '18206630007', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'memberinfo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'nav', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'message', null, '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'share', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'home', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'album', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'email', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'shopping', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'membercard', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'activity', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'weibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'tencentweibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'qqzone', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'wechat', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'music', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'video', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'recommend', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('bebwmx1393770649', 'other', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'tel', '', '1', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'memberinfo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'wechat', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'qqzone', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'tencentweibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'weibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'activity', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'membercard', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'shopping', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'email', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'album', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'home', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'share', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'message', null, '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'nav', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'music', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'video', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'recommend', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('qdxqhj1395665354', 'other', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'wechat', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'qqzone', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'recommend', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'video', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'music', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'wechat', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'qqzone', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'tencentweibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'weibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'activity', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'membercard', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'shopping', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'email', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'album', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'home', '', '0', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'share', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'nav', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'message', null, '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'tel', '13897188995', '0', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'memberinfo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'tencentweibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'weibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'memberinfo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'tel', '13099756599', '1', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'activity', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'membercard', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'shopping', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'email', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'album', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'home', '', '0', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'share', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'message', null, '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'nav', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'music', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'video', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'recommend', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('wdkszz1395625484', 'other', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('gfqlqk1395814571', 'other', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'tel', '0730-8111117', '1', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'memberinfo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'nav', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'message', null, '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'share', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'home', 'http://www.yanghuoji.com', '0', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'album', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'email', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'shopping', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'membercard', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'activity', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'weibo', 'http://weibo.com/yyyanghuoji', '0', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'tencentweibo', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'qqzone', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'wechat', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'music', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'video', 'http://v.qq.com/boke/page/s/5/l/s0126drbb5l.html', '0', '1');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'recommend', '', '0', '0');
INSERT INTO `tp_site_plugmenu` VALUES ('msowdl1393998402', 'other', '', '0', '0');

-- ----------------------------
-- Table structure for `tp_snccode`
-- ----------------------------
DROP TABLE IF EXISTS `tp_snccode`;
CREATE TABLE `tp_snccode` (
  `id` int(11) NOT NULL auto_increment,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `caeatetime` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_snccode
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_system_info`
-- ----------------------------
DROP TABLE IF EXISTS `tp_system_info`;
CREATE TABLE `tp_system_info` (
  `lastsqlupdate` int(10) NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_system_info
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_taobao`
-- ----------------------------
DROP TABLE IF EXISTS `tp_taobao`;
CREATE TABLE `tp_taobao` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(64) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `picurl` varchar(300) NOT NULL,
  `homeurl` varchar(300) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_taobao
-- ----------------------------
INSERT INTO `tp_taobao` VALUES ('1', 'btmdkz1392007679', '找家教', '百年菁华家教中心', 'http://test.57lehuo.com/data/ArticleImg/image/20140210/52f8d4cf947c4.jpg', 'http://1049937757.taobao.com', '1392039121');
INSERT INTO `tp_taobao` VALUES ('2', 'ymivkz1394500574', '休闲食品/土特产/粮油副食/酒水饮料', '华联易购', 'http://www.apiying.com/data/ArticleImg/image/20140311/531e711f9fa2d.png', 'http://fyhlyg.taobao.com/', '1394503968');

-- ----------------------------
-- Table structure for `tp_text`
-- ----------------------------
DROP TABLE IF EXISTS `tp_text`;
CREATE TABLE `tp_text` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `type` varchar(1) NOT NULL,
  `text` text NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `catename` varchar(255) default NULL,
  `cateid` int(11) NOT NULL default '0',
  `token` char(30) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_text
-- ----------------------------
INSERT INTO `tp_text` VALUES ('1', '1', '', '1', '1', '你好', '1390207635', '1390207635', '0', null, '0', 'knmdyy1390207240');

-- ----------------------------
-- Table structure for `tp_text_cate`
-- ----------------------------
DROP TABLE IF EXISTS `tp_text_cate`;
CREATE TABLE `tp_text_cate` (
  `id` int(11) NOT NULL auto_increment,
  `fid` int(11) NOT NULL default '0',
  `name` varchar(60) NOT NULL,
  `info` varchar(90) NOT NULL COMMENT '分类描述',
  `sorts` varchar(6) NOT NULL COMMENT '显示顺序',
  `status` varchar(1) NOT NULL,
  `token` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_text_cate
-- ----------------------------
INSERT INTO `tp_text_cate` VALUES ('36', '0', 'phonegap中文', '这是分类描述', '1', '1', 'zpbqjb1391609865');

-- ----------------------------
-- Table structure for `tp_token_open`
-- ----------------------------
DROP TABLE IF EXISTS `tp_token_open`;
CREATE TABLE `tp_token_open` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `queryname` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_token_open
-- ----------------------------
INSERT INTO `tp_token_open` VALUES ('1', '1', 'qmxpbf1390048289', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,peiliao,liaotian,mengjian,yuyin,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,choujiang,userinfo,api,suanming,baike,caipiao,choujiang,gua2,shouye,adma,coupon,shenhe,geci,yuming,host_kev,liuyan,diyform,dx,shop,etuan,diymen_set,Panorama,wedding,zadan,weidiaoyan,huiyuanka,taobao,fanyi');
INSERT INTO `tp_token_open` VALUES ('42', '114', 'vkcycb1400396702', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,choujiang,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,gua2,shouye,adma,huiyuanka,coupon,shenhe,geci,yuming,host_kev,liuyan,diyform,dx,shop,etuan,diymen_set,Panorama,Xitie,zadan,weidiaoyan');

-- ----------------------------
-- Table structure for `tp_upyun_attachement`
-- ----------------------------
DROP TABLE IF EXISTS `tp_upyun_attachement`;
CREATE TABLE `tp_upyun_attachement` (
  `id` int(10) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `url` varchar(160) NOT NULL,
  `code` varchar(10) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_upyun_attachement
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) default NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) default NULL COMMENT '最后登录IP',
  `last_location` varchar(100) default NULL COMMENT '最后登录位置',
  PRIMARY KEY  (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES ('1', 'admin', '7fef6171469e80d32c0559f88b377245', '5', '1', '', '1400397488', '127.0.0.1', '');

-- ----------------------------
-- Table structure for `tp_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `tp_user_group`;
CREATE TABLE `tp_user_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `connectnum` int(11) NOT NULL,
  `iscopyright` tinyint(1) NOT NULL,
  `activitynum` int(3) NOT NULL,
  `price` int(11) NOT NULL,
  `statistics_user` int(11) NOT NULL,
  `create_card_num` int(4) NOT NULL,
  `wechat_card_num` int(4) NOT NULL default '4',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user_group
-- ----------------------------
INSERT INTO `tp_user_group` VALUES ('1', 'vip0', '2000', '2000', '1', '7', '0', '0', '10', '4', '1');
INSERT INTO `tp_user_group` VALUES ('2', 'VIP1', '3000', '3000', '1', '2', '1', '0', '50', '4', '1');
INSERT INTO `tp_user_group` VALUES ('3', 'vip2', '40000', '40000', '1', '4', '50', '0', '80', '99', '1');
INSERT INTO `tp_user_group` VALUES ('4', 'vip3', '5000', '5000', '1', '77', '100', '0', '10000', '99', '1');

-- ----------------------------
-- Table structure for `tp_user_request`
-- ----------------------------
DROP TABLE IF EXISTS `tp_user_request`;
CREATE TABLE `tp_user_request` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `msgtype` varchar(15) NOT NULL default 'text',
  `time` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `msgtype` (`msgtype`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user_request
-- ----------------------------
INSERT INTO `tp_user_request` VALUES ('1', 'xreagi1389709724', 'oIwXTt4gn1sVypb_-W8QQloAFUPE', '113.169854,23.468506', 'location', '1390048224');
INSERT INTO `tp_user_request` VALUES ('2', 'seeebp1390203728', 'oeU76juB9He-CI1ycT2m4lYFl3GY', '附近电影院', 'text', '1390203967');
INSERT INTO `tp_user_request` VALUES ('3', 'seeebp1390203728', 'oeU76juB9He-CI1ycT2m4lYFl3GY', '120.437079,36.099757', 'location', '1390203984');
INSERT INTO `tp_user_request` VALUES ('4', 'knmdyy1390207240', 'oeU76jp015qUOel3UJ2ksU5b1MTE', '附近酒店', 'text', '1390460675');
INSERT INTO `tp_user_request` VALUES ('5', 'knmdyy1390207240', 'oeU76jp015qUOel3UJ2ksU5b1MTE', '109.798393,40.652145', 'location', '1390466268');

-- ----------------------------
-- Table structure for `tp_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `tp_userinfo`;
CREATE TABLE `tp_userinfo` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `truename` varchar(60) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `qq` int(11) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `age` int(3) NOT NULL,
  `birthday` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `getcardtime` int(10) NOT NULL default '0',
  `info` varchar(200) NOT NULL,
  `total_score` int(11) NOT NULL default '0',
  `sign_score` int(11) NOT NULL default '0',
  `expend_score` int(11) NOT NULL default '0',
  `continuous` int(11) NOT NULL default '0',
  `add_expend` int(11) NOT NULL default '0',
  `add_expend_time` int(11) NOT NULL default '0',
  `live_time` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_userinfo
-- ----------------------------
INSERT INTO `tp_userinfo` VALUES ('1', 'sbhydc1392964286', 'oLJkxuIhoHFSaCalZPJR540lLI3I', '', '呵呵', '18754132533', '0', '-1', '0', '', '三区6号楼一单元101', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_userinfo` VALUES ('2', 'sbhydc1392964286', 'oLJkxuJcHiic620Agm0FKc0qOiAw', '', '强子', '13156155865', '0', '-1', '0', '', '好个坑肉上', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tp_userinfo` VALUES ('3', 'sbhydc1392964286', 'oLJkxuMYJCloxdwSs7b5kNB62swc', '', '董凯', '18754132533', '0', '-1', '0', '', '3-6-1-101', '0', '', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `tp_users`
-- ----------------------------
DROP TABLE IF EXISTS `tp_users`;
CREATE TABLE `tp_users` (
  `id` int(11) NOT NULL auto_increment,
  `gid` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `mp` varchar(11) NOT NULL default '',
  `password` varchar(32) NOT NULL,
  `email` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `lasttime` varchar(13) NOT NULL,
  `status` varchar(1) NOT NULL,
  `createip` varchar(30) NOT NULL,
  `lastip` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `activitynum` int(11) NOT NULL,
  `card_num` int(11) NOT NULL,
  `card_create_status` tinyint(1) NOT NULL,
  `wechat_card_num` mediumint(4) NOT NULL default '0',
  `money` int(11) NOT NULL,
  `viptime` varchar(13) NOT NULL,
  `connectnum` int(11) NOT NULL default '0',
  `lastloginmonth` smallint(2) NOT NULL default '0',
  `attachmentsize` int(10) NOT NULL default '0',
  `qq` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_users
-- ----------------------------
INSERT INTO `tp_users` VALUES ('1', '4', 'uutm', '', 'a2902395a7f91b9e3b991d6aa0e447ed', '', '1390048285', '1391660382', '1', '221.8.221.131', '123.124.20.108', '0', '0', '0', '0', '2', '0', '1421337600', '0', '2', '0', null);
INSERT INTO `tp_users` VALUES ('2', '4', 'test', '', '96e79218965eb72c92a549dd5a330112', '', '1390203218', '1390203663', '1', '60.10.69.5', '60.10.69.5', '42', '1', '0', '0', '1', '0', '1421942400', '27', '1', '0', null);
INSERT INTO `tp_users` VALUES ('114', '4', 'apiying', '', '6351623c8cef86fefabfa7da046fc619', 'phonegap100@qq.com', '1400396243', '1400396697', '1', '127.0.0.1', '127.0.0.1', '0', '0', '0', '0', '1', '0', '1400342400', '0', '5', '0', '');

-- ----------------------------
-- Table structure for `tp_voiceresponse`
-- ----------------------------
DROP TABLE IF EXISTS `tp_voiceresponse`;
CREATE TABLE `tp_voiceresponse` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `keyword` char(255) NOT NULL,
  `title` varchar(60) NOT NULL,
  `musicurl` char(255) NOT NULL,
  `hqmusicurl` char(255) NOT NULL,
  `description` char(255) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_voiceresponse
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_vote`
-- ----------------------------
DROP TABLE IF EXISTS `tp_vote`;
CREATE TABLE `tp_vote` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(5) NOT NULL,
  `picurl` varchar(500) NOT NULL,
  `showpic` tinyint(4) NOT NULL,
  `info` varchar(500) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `display` tinyint(4) NOT NULL,
  `cknums` tinyint(3) NOT NULL default '1',
  `status` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_vote
-- ----------------------------
INSERT INTO `tp_vote` VALUES ('3', '投票标题', '投票', 'knmdyy1390207240', 'text', 'http://bbs.ueat.cn/template/win8mi_second_windows/src/img//logo.png', '1', '投票说明', '1390492800', '1391788800', '0', '1', '1');
INSERT INTO `tp_vote` VALUES ('4', '图片投票', '图片投票', 'knmdyy1390207240', 'img', 'http://image.pigcms.com/yicms/2013/12/26/1388041408_1ed0f0591f583869.jpg', '1', '投票图片', '1390492800', '1391788800', '0', '1', '1');
INSERT INTO `tp_vote` VALUES ('5', 'ddddd', '投票', 'jgoken1390204555', 'img', 'http://image.pigcms.com/yicms/2013/12/26/1388041408_1ed0f0591f583869.jpg', '1', 'ddd', '1390492800', '1391097600', '0', '1', '1');
INSERT INTO `tp_vote` VALUES ('6', '大学生活满意度调查', '调查问卷', 'btmdkz1392007679', 'text', 'http://image.pigcms.com/yicms/2013/12/26/1388041408_1ed0f0591f583869.jpg', '1', '您好，本次调查主要是针对您对目前大学生活的满意度开展的，请您如实填写，我们会对您的各项信息进行严格保密。', '1391961600', '1419955200', '0', '1', '1');
INSERT INTO `tp_vote` VALUES ('7', '你最想在“华联易购”上买到什么商品', '投票', 'ymivkz1394500574', 'text', 'http://image.pigcms.com/yicms/2013/12/26/1388041408_1ed0f0591f583869.jpg', '1', '', '1394467200', '1396108800', '0', '3', '1');

-- ----------------------------
-- Table structure for `tp_vote_item`
-- ----------------------------
DROP TABLE IF EXISTS `tp_vote_item`;
CREATE TABLE `tp_vote_item` (
  `id` int(11) NOT NULL auto_increment,
  `vid` int(11) NOT NULL COMMENT 'vote_id',
  `item` varchar(50) NOT NULL,
  `vcount` int(11) NOT NULL,
  `startpicurl` varchar(200) NOT NULL default '',
  `tourl` varchar(200) NOT NULL default '',
  `rank` tinyint(4) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_vote_item
-- ----------------------------
INSERT INTO `tp_vote_item` VALUES ('1', '1', '你好', '0', '', '', '1');
INSERT INTO `tp_vote_item` VALUES ('2', '1', '你坏', '0', '', '', '1');
INSERT INTO `tp_vote_item` VALUES ('8', '3', '3', '0', '', '', '1');
INSERT INTO `tp_vote_item` VALUES ('7', '3', '2', '0', '', '', '1');
INSERT INTO `tp_vote_item` VALUES ('6', '3', '1', '0', '', '', '1');
INSERT INTO `tp_vote_item` VALUES ('9', '3', '4', '1', '', '', '1');
INSERT INTO `tp_vote_item` VALUES ('10', '4', '李德华', '0', '', '#', '1');
INSERT INTO `tp_vote_item` VALUES ('11', '4', '周杰伦', '3', '', 'http://bbs.ueat.cn/template/win8mi_second_windows/src/img//logo.png', '1');
INSERT INTO `tp_vote_item` VALUES ('12', '4', '谢霆锋', '0', '', '#', '1');
INSERT INTO `tp_vote_item` VALUES ('13', '5', '', '0', '', '#', '1');
INSERT INTO `tp_vote_item` VALUES ('14', '6', '非常满意', '0', '', '', '1');
INSERT INTO `tp_vote_item` VALUES ('15', '6', '比较满意', '1', '', '', '2');
INSERT INTO `tp_vote_item` VALUES ('16', '6', '满意', '0', '', '', '3');
INSERT INTO `tp_vote_item` VALUES ('17', '6', '不太满意', '0', '', '', '4');
INSERT INTO `tp_vote_item` VALUES ('18', '6', '不满意', '0', '', '', '5');
INSERT INTO `tp_vote_item` VALUES ('19', '6', '非常不满意', '0', '', '', '6');
INSERT INTO `tp_vote_item` VALUES ('20', '7', '休闲食品', '0', '', '', '1');
INSERT INTO `tp_vote_item` VALUES ('21', '7', '日用品', '0', '', '', '2');
INSERT INTO `tp_vote_item` VALUES ('22', '7', '化妆品', '0', '', '', '3');
INSERT INTO `tp_vote_item` VALUES ('23', '7', '服装', '0', '', '', '4');
INSERT INTO `tp_vote_item` VALUES ('24', '7', '粮油副食', '0', '', '', '5');
INSERT INTO `tp_vote_item` VALUES ('25', '7', '土特产', '0', '', '', '6');

-- ----------------------------
-- Table structure for `tp_vote_record`
-- ----------------------------
DROP TABLE IF EXISTS `tp_vote_record`;
CREATE TABLE `tp_vote_record` (
  `id` int(11) NOT NULL auto_increment,
  `item_id` varchar(50) NOT NULL,
  `vid` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `touched` tinyint(4) NOT NULL,
  `touch_time` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_vote_record
-- ----------------------------
INSERT INTO `tp_vote_record` VALUES ('1', '9', '3', 'oeU76juB9He-CI1ycT2m4lYFl3GY', '1', '1390500204');
INSERT INTO `tp_vote_record` VALUES ('2', '11', '4', 'oeU76juB9He-CI1ycT2m4lYFl3GY', '1', '1390500375');
INSERT INTO `tp_vote_record` VALUES ('3', '15', '6', 'o8x0Bt0tmzjIaPlkss7FV9QunFL0', '1', '1392037281');

-- ----------------------------
-- Table structure for `tp_weather`
-- ----------------------------
DROP TABLE IF EXISTS `tp_weather`;
CREATE TABLE `tp_weather` (
  `id` int(4) NOT NULL auto_increment,
  `code` char(9) NOT NULL,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2502 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_weather
-- ----------------------------
INSERT INTO `tp_weather` VALUES ('1', '101010100', '北京');
INSERT INTO `tp_weather` VALUES ('2', '101010200', '海淀');
INSERT INTO `tp_weather` VALUES ('3', '101010400', '顺义');
INSERT INTO `tp_weather` VALUES ('4', '101010500', '怀柔');
INSERT INTO `tp_weather` VALUES ('5', '101010600', '通州');
INSERT INTO `tp_weather` VALUES ('6', '101010700', '昌平');
INSERT INTO `tp_weather` VALUES ('7', '101010800', '延庆');
INSERT INTO `tp_weather` VALUES ('8', '101010900', '丰台');
INSERT INTO `tp_weather` VALUES ('9', '101011000', '石景山');
INSERT INTO `tp_weather` VALUES ('10', '101011100', '大兴');
INSERT INTO `tp_weather` VALUES ('11', '101011200', '房山');
INSERT INTO `tp_weather` VALUES ('12', '101011300', '密云');
INSERT INTO `tp_weather` VALUES ('13', '101011400', '门头沟');
INSERT INTO `tp_weather` VALUES ('14', '101011500', '平谷');
INSERT INTO `tp_weather` VALUES ('15', '101020100', '上海');
INSERT INTO `tp_weather` VALUES ('16', '101020200', '闵行');
INSERT INTO `tp_weather` VALUES ('17', '101020300', '宝山');
INSERT INTO `tp_weather` VALUES ('18', '101020500', '嘉定');
INSERT INTO `tp_weather` VALUES ('19', '101020600', '浦东南汇');
INSERT INTO `tp_weather` VALUES ('20', '101020700', '金山');
INSERT INTO `tp_weather` VALUES ('21', '101020800', '青浦');
INSERT INTO `tp_weather` VALUES ('22', '101020900', '松江');
INSERT INTO `tp_weather` VALUES ('23', '101021000', '奉贤');
INSERT INTO `tp_weather` VALUES ('24', '101021100', '崇明');
INSERT INTO `tp_weather` VALUES ('25', '101021300', '浦东');
INSERT INTO `tp_weather` VALUES ('26', '101030200', '武清');
INSERT INTO `tp_weather` VALUES ('27', '101030300', '宝坻');
INSERT INTO `tp_weather` VALUES ('28', '101030400', '东丽');
INSERT INTO `tp_weather` VALUES ('29', '101030500', '西青');
INSERT INTO `tp_weather` VALUES ('30', '101030600', '北辰');
INSERT INTO `tp_weather` VALUES ('31', '101030700', '宁河');
INSERT INTO `tp_weather` VALUES ('32', '101030800', '汉沽');
INSERT INTO `tp_weather` VALUES ('33', '101030900', '静海');
INSERT INTO `tp_weather` VALUES ('34', '101031000', '津南');
INSERT INTO `tp_weather` VALUES ('35', '101031100', '塘沽');
INSERT INTO `tp_weather` VALUES ('36', '101031200', '大港');
INSERT INTO `tp_weather` VALUES ('37', '101031400', '蓟县');
INSERT INTO `tp_weather` VALUES ('38', '101040100', '重庆');
INSERT INTO `tp_weather` VALUES ('39', '101040200', '永川');
INSERT INTO `tp_weather` VALUES ('40', '101040300', '合川');
INSERT INTO `tp_weather` VALUES ('41', '101040400', '南川');
INSERT INTO `tp_weather` VALUES ('42', '101040500', '江津');
INSERT INTO `tp_weather` VALUES ('43', '101040600', '万盛');
INSERT INTO `tp_weather` VALUES ('44', '101040700', '渝北');
INSERT INTO `tp_weather` VALUES ('45', '101040800', '北碚');
INSERT INTO `tp_weather` VALUES ('46', '101041000', '长寿');
INSERT INTO `tp_weather` VALUES ('47', '101041100', '黔江');
INSERT INTO `tp_weather` VALUES ('48', '101041300', '万州');
INSERT INTO `tp_weather` VALUES ('49', '101041400', '涪陵');
INSERT INTO `tp_weather` VALUES ('50', '101041500', '开县');
INSERT INTO `tp_weather` VALUES ('51', '101041600', '城口');
INSERT INTO `tp_weather` VALUES ('52', '101041700', '云阳');
INSERT INTO `tp_weather` VALUES ('53', '101041800', '巫溪');
INSERT INTO `tp_weather` VALUES ('54', '101041900', '奉节');
INSERT INTO `tp_weather` VALUES ('55', '101042000', '巫山');
INSERT INTO `tp_weather` VALUES ('56', '101042100', '潼南');
INSERT INTO `tp_weather` VALUES ('57', '101042200', '垫江');
INSERT INTO `tp_weather` VALUES ('58', '101042300', '梁平');
INSERT INTO `tp_weather` VALUES ('59', '101042400', '忠县');
INSERT INTO `tp_weather` VALUES ('60', '101042500', '石柱');
INSERT INTO `tp_weather` VALUES ('61', '101042600', '大足');
INSERT INTO `tp_weather` VALUES ('62', '101042700', '荣昌');
INSERT INTO `tp_weather` VALUES ('63', '101042800', '铜梁');
INSERT INTO `tp_weather` VALUES ('64', '101042900', '璧山');
INSERT INTO `tp_weather` VALUES ('65', '101043000', '丰都');
INSERT INTO `tp_weather` VALUES ('66', '101043100', '武隆');
INSERT INTO `tp_weather` VALUES ('67', '101043200', '彭水');
INSERT INTO `tp_weather` VALUES ('68', '101043300', '綦江');
INSERT INTO `tp_weather` VALUES ('69', '101043400', '酉阳');
INSERT INTO `tp_weather` VALUES ('70', '101043600', '秀山');
INSERT INTO `tp_weather` VALUES ('71', '101050101', '哈尔滨');
INSERT INTO `tp_weather` VALUES ('72', '101050102', '双城');
INSERT INTO `tp_weather` VALUES ('73', '101050103', '呼兰');
INSERT INTO `tp_weather` VALUES ('74', '101050104', '阿城');
INSERT INTO `tp_weather` VALUES ('75', '101050105', '宾县');
INSERT INTO `tp_weather` VALUES ('76', '101050106', '依兰');
INSERT INTO `tp_weather` VALUES ('77', '101050107', '巴彦');
INSERT INTO `tp_weather` VALUES ('78', '101050108', '通河');
INSERT INTO `tp_weather` VALUES ('79', '101050109', '方正');
INSERT INTO `tp_weather` VALUES ('80', '101050110', '延寿');
INSERT INTO `tp_weather` VALUES ('81', '101050111', '尚志');
INSERT INTO `tp_weather` VALUES ('82', '101050112', '五常');
INSERT INTO `tp_weather` VALUES ('83', '101050113', '木兰');
INSERT INTO `tp_weather` VALUES ('84', '101050201', '齐齐哈尔');
INSERT INTO `tp_weather` VALUES ('85', '101050202', '讷河');
INSERT INTO `tp_weather` VALUES ('86', '101050203', '龙江');
INSERT INTO `tp_weather` VALUES ('87', '101050204', '甘南');
INSERT INTO `tp_weather` VALUES ('88', '101050205', '富裕');
INSERT INTO `tp_weather` VALUES ('89', '101050206', '依安');
INSERT INTO `tp_weather` VALUES ('90', '101050207', '拜泉');
INSERT INTO `tp_weather` VALUES ('91', '101050208', '克山');
INSERT INTO `tp_weather` VALUES ('92', '101050209', '克东');
INSERT INTO `tp_weather` VALUES ('93', '101050210', '泰来');
INSERT INTO `tp_weather` VALUES ('94', '101050301', '牡丹江');
INSERT INTO `tp_weather` VALUES ('95', '101050302', '海林');
INSERT INTO `tp_weather` VALUES ('96', '101050303', '穆棱');
INSERT INTO `tp_weather` VALUES ('97', '101050304', '林口');
INSERT INTO `tp_weather` VALUES ('98', '101050305', '绥芬河');
INSERT INTO `tp_weather` VALUES ('99', '101050306', '宁安');
INSERT INTO `tp_weather` VALUES ('100', '101050307', '东宁');
INSERT INTO `tp_weather` VALUES ('101', '101050401', '佳木斯');
INSERT INTO `tp_weather` VALUES ('102', '101050402', '汤原');
INSERT INTO `tp_weather` VALUES ('103', '101050403', '抚远');
INSERT INTO `tp_weather` VALUES ('104', '101050404', '桦川');
INSERT INTO `tp_weather` VALUES ('105', '101050405', '桦南');
INSERT INTO `tp_weather` VALUES ('106', '101050406', '同江');
INSERT INTO `tp_weather` VALUES ('107', '101050407', '富锦');
INSERT INTO `tp_weather` VALUES ('108', '101050501', '绥化');
INSERT INTO `tp_weather` VALUES ('109', '101050502', '肇东');
INSERT INTO `tp_weather` VALUES ('110', '101050503', '安达');
INSERT INTO `tp_weather` VALUES ('111', '101050504', '海伦');
INSERT INTO `tp_weather` VALUES ('112', '101050505', '明水');
INSERT INTO `tp_weather` VALUES ('113', '101050506', '望奎');
INSERT INTO `tp_weather` VALUES ('114', '101050507', '兰西');
INSERT INTO `tp_weather` VALUES ('115', '101050508', '青冈');
INSERT INTO `tp_weather` VALUES ('116', '101050509', '庆安');
INSERT INTO `tp_weather` VALUES ('117', '101050510', '绥棱');
INSERT INTO `tp_weather` VALUES ('118', '101050601', '黑河');
INSERT INTO `tp_weather` VALUES ('119', '101050602', '嫩江');
INSERT INTO `tp_weather` VALUES ('120', '101050603', '孙吴');
INSERT INTO `tp_weather` VALUES ('121', '101050604', '逊克');
INSERT INTO `tp_weather` VALUES ('122', '101050605', '五大连池');
INSERT INTO `tp_weather` VALUES ('123', '101050606', '北安');
INSERT INTO `tp_weather` VALUES ('124', '101050701', '大兴安岭');
INSERT INTO `tp_weather` VALUES ('125', '101050702', '塔河');
INSERT INTO `tp_weather` VALUES ('126', '101050703', '漠河');
INSERT INTO `tp_weather` VALUES ('127', '101050704', '呼玛');
INSERT INTO `tp_weather` VALUES ('128', '101050801', '伊春');
INSERT INTO `tp_weather` VALUES ('129', '101050804', '铁力');
INSERT INTO `tp_weather` VALUES ('130', '101050805', '嘉荫');
INSERT INTO `tp_weather` VALUES ('131', '101050901', '大庆');
INSERT INTO `tp_weather` VALUES ('132', '101050902', '林甸');
INSERT INTO `tp_weather` VALUES ('133', '101050903', '肇州');
INSERT INTO `tp_weather` VALUES ('134', '101050904', '肇源');
INSERT INTO `tp_weather` VALUES ('135', '101050905', '杜蒙');
INSERT INTO `tp_weather` VALUES ('136', '101051002', '七台河');
INSERT INTO `tp_weather` VALUES ('137', '101051003', '勃利');
INSERT INTO `tp_weather` VALUES ('138', '101051101', '鸡西');
INSERT INTO `tp_weather` VALUES ('139', '101051102', '虎林');
INSERT INTO `tp_weather` VALUES ('140', '101051103', '密山');
INSERT INTO `tp_weather` VALUES ('141', '101051104', '鸡东');
INSERT INTO `tp_weather` VALUES ('142', '101051201', '鹤岗');
INSERT INTO `tp_weather` VALUES ('143', '101051202', '绥滨');
INSERT INTO `tp_weather` VALUES ('144', '101051203', '萝北');
INSERT INTO `tp_weather` VALUES ('145', '101051301', '双鸭山');
INSERT INTO `tp_weather` VALUES ('146', '101051302', '集贤');
INSERT INTO `tp_weather` VALUES ('147', '101051303', '宝清');
INSERT INTO `tp_weather` VALUES ('148', '101051304', '饶河');
INSERT INTO `tp_weather` VALUES ('149', '101051305', '友谊');
INSERT INTO `tp_weather` VALUES ('150', '101060101', '长春');
INSERT INTO `tp_weather` VALUES ('151', '101060102', '农安');
INSERT INTO `tp_weather` VALUES ('152', '101060103', '德惠');
INSERT INTO `tp_weather` VALUES ('153', '101060104', '九台');
INSERT INTO `tp_weather` VALUES ('154', '101060105', '榆树');
INSERT INTO `tp_weather` VALUES ('155', '101060201', '吉林');
INSERT INTO `tp_weather` VALUES ('156', '101060202', '舒兰');
INSERT INTO `tp_weather` VALUES ('157', '101060203', '永吉');
INSERT INTO `tp_weather` VALUES ('158', '101060204', '蛟河');
INSERT INTO `tp_weather` VALUES ('159', '101060205', '磐石');
INSERT INTO `tp_weather` VALUES ('160', '101060206', '桦甸');
INSERT INTO `tp_weather` VALUES ('161', '101060302', '敦化');
INSERT INTO `tp_weather` VALUES ('162', '101060303', '安图');
INSERT INTO `tp_weather` VALUES ('163', '101060304', '汪清');
INSERT INTO `tp_weather` VALUES ('164', '101060305', '和龙');
INSERT INTO `tp_weather` VALUES ('165', '101060307', '龙井');
INSERT INTO `tp_weather` VALUES ('166', '101060308', '珲春');
INSERT INTO `tp_weather` VALUES ('167', '101060309', '图们');
INSERT INTO `tp_weather` VALUES ('168', '101060312', '延吉');
INSERT INTO `tp_weather` VALUES ('169', '101060401', '四平');
INSERT INTO `tp_weather` VALUES ('170', '101060402', '双辽');
INSERT INTO `tp_weather` VALUES ('171', '101060403', '梨树');
INSERT INTO `tp_weather` VALUES ('172', '101060404', '公主岭');
INSERT INTO `tp_weather` VALUES ('173', '101060405', '伊通');
INSERT INTO `tp_weather` VALUES ('174', '101060501', '通化');
INSERT INTO `tp_weather` VALUES ('175', '101060502', '梅河口');
INSERT INTO `tp_weather` VALUES ('176', '101060503', '柳河');
INSERT INTO `tp_weather` VALUES ('177', '101060504', '辉南');
INSERT INTO `tp_weather` VALUES ('178', '101060505', '集安');
INSERT INTO `tp_weather` VALUES ('179', '101060601', '白城');
INSERT INTO `tp_weather` VALUES ('180', '101060602', '洮南');
INSERT INTO `tp_weather` VALUES ('181', '101060603', '大安');
INSERT INTO `tp_weather` VALUES ('182', '101060604', '镇赉');
INSERT INTO `tp_weather` VALUES ('183', '101060605', '通榆');
INSERT INTO `tp_weather` VALUES ('184', '101060701', '辽源');
INSERT INTO `tp_weather` VALUES ('185', '101060702', '东丰');
INSERT INTO `tp_weather` VALUES ('186', '101060703', '东辽');
INSERT INTO `tp_weather` VALUES ('187', '101060801', '松原');
INSERT INTO `tp_weather` VALUES ('188', '101060802', '乾安');
INSERT INTO `tp_weather` VALUES ('189', '101060803', '前郭');
INSERT INTO `tp_weather` VALUES ('190', '101060804', '长岭');
INSERT INTO `tp_weather` VALUES ('191', '101060805', '扶余');
INSERT INTO `tp_weather` VALUES ('192', '101060901', '白山');
INSERT INTO `tp_weather` VALUES ('193', '101060902', '靖宇');
INSERT INTO `tp_weather` VALUES ('194', '101060903', '临江');
INSERT INTO `tp_weather` VALUES ('195', '101060905', '长白');
INSERT INTO `tp_weather` VALUES ('196', '101060906', '抚松');
INSERT INTO `tp_weather` VALUES ('197', '101060907', '江源');
INSERT INTO `tp_weather` VALUES ('198', '101070101', '沈阳');
INSERT INTO `tp_weather` VALUES ('199', '101070103', '辽中');
INSERT INTO `tp_weather` VALUES ('200', '101070104', '康平');
INSERT INTO `tp_weather` VALUES ('201', '101070105', '法库');
INSERT INTO `tp_weather` VALUES ('202', '101070106', '新民');
INSERT INTO `tp_weather` VALUES ('203', '101070201', '大连');
INSERT INTO `tp_weather` VALUES ('204', '101070202', '瓦房店');
INSERT INTO `tp_weather` VALUES ('205', '101070204', '普兰店');
INSERT INTO `tp_weather` VALUES ('206', '101070206', '长海');
INSERT INTO `tp_weather` VALUES ('207', '101070207', '庄河');
INSERT INTO `tp_weather` VALUES ('208', '101070301', '鞍山');
INSERT INTO `tp_weather` VALUES ('209', '101070302', '台安');
INSERT INTO `tp_weather` VALUES ('210', '101070303', '岫岩');
INSERT INTO `tp_weather` VALUES ('211', '101070304', '海城');
INSERT INTO `tp_weather` VALUES ('212', '101070401', '抚顺');
INSERT INTO `tp_weather` VALUES ('213', '101070402', '新宾');
INSERT INTO `tp_weather` VALUES ('214', '101070403', '清原');
INSERT INTO `tp_weather` VALUES ('215', '101070501', '本溪');
INSERT INTO `tp_weather` VALUES ('216', '101070504', '桓仁');
INSERT INTO `tp_weather` VALUES ('217', '101070601', '丹东');
INSERT INTO `tp_weather` VALUES ('218', '101070602', '凤城');
INSERT INTO `tp_weather` VALUES ('219', '101070603', '宽甸');
INSERT INTO `tp_weather` VALUES ('220', '101070604', '东港');
INSERT INTO `tp_weather` VALUES ('221', '101070701', '锦州');
INSERT INTO `tp_weather` VALUES ('222', '101070702', '凌海');
INSERT INTO `tp_weather` VALUES ('223', '101070704', '义县');
INSERT INTO `tp_weather` VALUES ('224', '101070705', '黑山');
INSERT INTO `tp_weather` VALUES ('225', '101070706', '北镇');
INSERT INTO `tp_weather` VALUES ('226', '101070801', '营口');
INSERT INTO `tp_weather` VALUES ('227', '101070802', '大石桥');
INSERT INTO `tp_weather` VALUES ('228', '101070803', '盖州');
INSERT INTO `tp_weather` VALUES ('229', '101070901', '阜新');
INSERT INTO `tp_weather` VALUES ('230', '101070902', '彰武');
INSERT INTO `tp_weather` VALUES ('231', '101071001', '辽阳');
INSERT INTO `tp_weather` VALUES ('232', '101071003', '灯塔');
INSERT INTO `tp_weather` VALUES ('233', '101071004', '弓长岭');
INSERT INTO `tp_weather` VALUES ('234', '101071101', '铁岭');
INSERT INTO `tp_weather` VALUES ('235', '101071102', '开原');
INSERT INTO `tp_weather` VALUES ('236', '101071103', '昌图');
INSERT INTO `tp_weather` VALUES ('237', '101071104', '西丰');
INSERT INTO `tp_weather` VALUES ('238', '101071105', '调兵山');
INSERT INTO `tp_weather` VALUES ('239', '101071201', '朝阳');
INSERT INTO `tp_weather` VALUES ('240', '101071203', '凌源');
INSERT INTO `tp_weather` VALUES ('241', '101071204', '喀左');
INSERT INTO `tp_weather` VALUES ('242', '101071205', '北票');
INSERT INTO `tp_weather` VALUES ('243', '101071207', '建平');
INSERT INTO `tp_weather` VALUES ('244', '101071301', '盘锦');
INSERT INTO `tp_weather` VALUES ('245', '101071302', '大洼');
INSERT INTO `tp_weather` VALUES ('246', '101071303', '盘山');
INSERT INTO `tp_weather` VALUES ('247', '101071401', '葫芦岛');
INSERT INTO `tp_weather` VALUES ('248', '101071402', '建昌');
INSERT INTO `tp_weather` VALUES ('249', '101071403', '绥中');
INSERT INTO `tp_weather` VALUES ('250', '101071404', '兴城');
INSERT INTO `tp_weather` VALUES ('251', '101080101', '呼和浩特');
INSERT INTO `tp_weather` VALUES ('252', '101080102', '土左');
INSERT INTO `tp_weather` VALUES ('253', '101080103', '托克托');
INSERT INTO `tp_weather` VALUES ('254', '101080104', '和林格尔');
INSERT INTO `tp_weather` VALUES ('255', '101080105', '清水河');
INSERT INTO `tp_weather` VALUES ('256', '101080107', '武川');
INSERT INTO `tp_weather` VALUES ('257', '101080201', '包头');
INSERT INTO `tp_weather` VALUES ('258', '101080202', '白云鄂博');
INSERT INTO `tp_weather` VALUES ('259', '101080204', '土右');
INSERT INTO `tp_weather` VALUES ('260', '101080205', '固阳');
INSERT INTO `tp_weather` VALUES ('261', '101080206', '达茂');
INSERT INTO `tp_weather` VALUES ('262', '101080301', '乌海');
INSERT INTO `tp_weather` VALUES ('263', '101080401', '乌兰察布');
INSERT INTO `tp_weather` VALUES ('264', '101080402', '卓资');
INSERT INTO `tp_weather` VALUES ('265', '101080403', '化德');
INSERT INTO `tp_weather` VALUES ('266', '101080404', '商都');
INSERT INTO `tp_weather` VALUES ('267', '101080406', '兴和');
INSERT INTO `tp_weather` VALUES ('268', '101080407', '凉城');
INSERT INTO `tp_weather` VALUES ('269', '101080408', '察右前');
INSERT INTO `tp_weather` VALUES ('270', '101080409', '察右中');
INSERT INTO `tp_weather` VALUES ('271', '101080410', '察右后');
INSERT INTO `tp_weather` VALUES ('272', '101080411', '四子王');
INSERT INTO `tp_weather` VALUES ('273', '101080412', '丰镇');
INSERT INTO `tp_weather` VALUES ('274', '101080501', '通辽');
INSERT INTO `tp_weather` VALUES ('275', '101080503', '科左中');
INSERT INTO `tp_weather` VALUES ('276', '101080504', '科左后');
INSERT INTO `tp_weather` VALUES ('277', '101080506', '开鲁');
INSERT INTO `tp_weather` VALUES ('278', '101080507', '库伦');
INSERT INTO `tp_weather` VALUES ('279', '101080508', '奈曼');
INSERT INTO `tp_weather` VALUES ('280', '101080509', '扎鲁特');
INSERT INTO `tp_weather` VALUES ('281', '101080601', '赤峰');
INSERT INTO `tp_weather` VALUES ('282', '101080603', '阿鲁');
INSERT INTO `tp_weather` VALUES ('283', '101080605', '巴林左');
INSERT INTO `tp_weather` VALUES ('284', '101080606', '巴林右');
INSERT INTO `tp_weather` VALUES ('285', '101080607', '林西');
INSERT INTO `tp_weather` VALUES ('286', '101080608', '克什');
INSERT INTO `tp_weather` VALUES ('287', '101080609', '翁牛特');
INSERT INTO `tp_weather` VALUES ('288', '101080611', '喀喇沁');
INSERT INTO `tp_weather` VALUES ('289', '101080613', '宁城');
INSERT INTO `tp_weather` VALUES ('290', '101080614', '敖汉');
INSERT INTO `tp_weather` VALUES ('291', '101080701', '鄂尔多斯');
INSERT INTO `tp_weather` VALUES ('292', '101080703', '达拉特');
INSERT INTO `tp_weather` VALUES ('293', '101080704', '准格尔');
INSERT INTO `tp_weather` VALUES ('294', '101080706', '河南');
INSERT INTO `tp_weather` VALUES ('295', '101080708', '鄂托克');
INSERT INTO `tp_weather` VALUES ('296', '101080709', '杭锦');
INSERT INTO `tp_weather` VALUES ('297', '101080710', '乌审');
INSERT INTO `tp_weather` VALUES ('298', '101080711', '伊金霍洛');
INSERT INTO `tp_weather` VALUES ('299', '101080801', '巴彦淖尔');
INSERT INTO `tp_weather` VALUES ('300', '101080802', '五原');
INSERT INTO `tp_weather` VALUES ('301', '101080803', '磴口');
INSERT INTO `tp_weather` VALUES ('302', '101080804', '乌前');
INSERT INTO `tp_weather` VALUES ('303', '101080806', '乌中');
INSERT INTO `tp_weather` VALUES ('304', '101080807', '乌后');
INSERT INTO `tp_weather` VALUES ('305', '101080810', '杭锦后');
INSERT INTO `tp_weather` VALUES ('306', '101080901', '锡林浩特');
INSERT INTO `tp_weather` VALUES ('307', '101080903', '二连浩特');
INSERT INTO `tp_weather` VALUES ('308', '101080904', '阿巴嘎');
INSERT INTO `tp_weather` VALUES ('309', '101080906', '苏左');
INSERT INTO `tp_weather` VALUES ('310', '101080907', '苏右');
INSERT INTO `tp_weather` VALUES ('311', '101080909', '东乌');
INSERT INTO `tp_weather` VALUES ('312', '101080910', '西乌');
INSERT INTO `tp_weather` VALUES ('313', '101080911', '太仆寺');
INSERT INTO `tp_weather` VALUES ('314', '101080912', '镶黄');
INSERT INTO `tp_weather` VALUES ('315', '101080913', '正镶白');
INSERT INTO `tp_weather` VALUES ('316', '101080914', '正蓝');
INSERT INTO `tp_weather` VALUES ('317', '101080915', '多伦');
INSERT INTO `tp_weather` VALUES ('318', '101081000', '呼伦贝尔');
INSERT INTO `tp_weather` VALUES ('319', '101081001', '海拉尔');
INSERT INTO `tp_weather` VALUES ('320', '101081003', '阿荣');
INSERT INTO `tp_weather` VALUES ('321', '101081004', '莫力达瓦');
INSERT INTO `tp_weather` VALUES ('322', '101081005', '鄂伦春');
INSERT INTO `tp_weather` VALUES ('323', '101081006', '鄂温克');
INSERT INTO `tp_weather` VALUES ('324', '101081007', '陈巴尔虎');
INSERT INTO `tp_weather` VALUES ('325', '101081008', '新左');
INSERT INTO `tp_weather` VALUES ('326', '101081009', '新右');
INSERT INTO `tp_weather` VALUES ('327', '101081010', '满洲里');
INSERT INTO `tp_weather` VALUES ('328', '101081011', '牙克石');
INSERT INTO `tp_weather` VALUES ('329', '101081012', '扎兰屯');
INSERT INTO `tp_weather` VALUES ('330', '101081014', '额尔古纳');
INSERT INTO `tp_weather` VALUES ('331', '101081015', '根河');
INSERT INTO `tp_weather` VALUES ('332', '101081101', '乌兰浩特');
INSERT INTO `tp_weather` VALUES ('333', '101081102', '阿尔山');
INSERT INTO `tp_weather` VALUES ('334', '101081103', '科右中');
INSERT INTO `tp_weather` VALUES ('335', '101081105', '扎赉特');
INSERT INTO `tp_weather` VALUES ('336', '101081107', '突泉');
INSERT INTO `tp_weather` VALUES ('337', '101081108', '霍林郭勒');
INSERT INTO `tp_weather` VALUES ('338', '101081109', '科右前');
INSERT INTO `tp_weather` VALUES ('339', '101081201', '阿拉善');
INSERT INTO `tp_weather` VALUES ('340', '101081202', '阿右');
INSERT INTO `tp_weather` VALUES ('341', '101081203', '额济纳');
INSERT INTO `tp_weather` VALUES ('342', '101090101', '石家庄');
INSERT INTO `tp_weather` VALUES ('343', '101090102', '井陉');
INSERT INTO `tp_weather` VALUES ('344', '101090103', '正定');
INSERT INTO `tp_weather` VALUES ('345', '101090104', '栾城');
INSERT INTO `tp_weather` VALUES ('346', '101090105', '行唐');
INSERT INTO `tp_weather` VALUES ('347', '101090106', '灵寿');
INSERT INTO `tp_weather` VALUES ('348', '101090107', '高邑');
INSERT INTO `tp_weather` VALUES ('349', '101090108', '深泽');
INSERT INTO `tp_weather` VALUES ('350', '101090109', '赞皇');
INSERT INTO `tp_weather` VALUES ('351', '101090110', '无极');
INSERT INTO `tp_weather` VALUES ('352', '101090111', '平山');
INSERT INTO `tp_weather` VALUES ('353', '101090112', '元氏');
INSERT INTO `tp_weather` VALUES ('354', '101090113', '赵县');
INSERT INTO `tp_weather` VALUES ('355', '101090114', '辛集');
INSERT INTO `tp_weather` VALUES ('356', '101090115', '藁城');
INSERT INTO `tp_weather` VALUES ('357', '101090116', '晋州');
INSERT INTO `tp_weather` VALUES ('358', '101090117', '新乐');
INSERT INTO `tp_weather` VALUES ('359', '101090118', '鹿泉');
INSERT INTO `tp_weather` VALUES ('360', '101090201', '保定');
INSERT INTO `tp_weather` VALUES ('361', '101090202', '满城');
INSERT INTO `tp_weather` VALUES ('362', '101090203', '阜平');
INSERT INTO `tp_weather` VALUES ('363', '101090204', '徐水');
INSERT INTO `tp_weather` VALUES ('364', '101090205', '唐县');
INSERT INTO `tp_weather` VALUES ('365', '101090206', '高阳');
INSERT INTO `tp_weather` VALUES ('366', '101090207', '容城');
INSERT INTO `tp_weather` VALUES ('367', '101090209', '涞源');
INSERT INTO `tp_weather` VALUES ('368', '101090210', '望都');
INSERT INTO `tp_weather` VALUES ('369', '101090211', '安新');
INSERT INTO `tp_weather` VALUES ('370', '101090212', '易县');
INSERT INTO `tp_weather` VALUES ('371', '101090214', '曲阳');
INSERT INTO `tp_weather` VALUES ('372', '101090215', '蠡县');
INSERT INTO `tp_weather` VALUES ('373', '101090216', '顺平');
INSERT INTO `tp_weather` VALUES ('374', '101090217', '雄县');
INSERT INTO `tp_weather` VALUES ('375', '101090218', '涿州');
INSERT INTO `tp_weather` VALUES ('376', '101090219', '定州');
INSERT INTO `tp_weather` VALUES ('377', '101090220', '安国');
INSERT INTO `tp_weather` VALUES ('378', '101090221', '高碑店');
INSERT INTO `tp_weather` VALUES ('379', '101090222', '涞水');
INSERT INTO `tp_weather` VALUES ('380', '101090223', '定兴');
INSERT INTO `tp_weather` VALUES ('381', '101090224', '清苑');
INSERT INTO `tp_weather` VALUES ('382', '101090225', '博野');
INSERT INTO `tp_weather` VALUES ('383', '101090301', '张家口');
INSERT INTO `tp_weather` VALUES ('384', '101090302', '宣化');
INSERT INTO `tp_weather` VALUES ('385', '101090303', '张北');
INSERT INTO `tp_weather` VALUES ('386', '101090304', '康保');
INSERT INTO `tp_weather` VALUES ('387', '101090305', '沽源');
INSERT INTO `tp_weather` VALUES ('388', '101090306', '尚义');
INSERT INTO `tp_weather` VALUES ('389', '101090307', '蔚县');
INSERT INTO `tp_weather` VALUES ('390', '101090308', '阳原');
INSERT INTO `tp_weather` VALUES ('391', '101090309', '怀安');
INSERT INTO `tp_weather` VALUES ('392', '101090310', '万全');
INSERT INTO `tp_weather` VALUES ('393', '101090311', '怀来');
INSERT INTO `tp_weather` VALUES ('394', '101090312', '涿鹿');
INSERT INTO `tp_weather` VALUES ('395', '101090313', '赤城');
INSERT INTO `tp_weather` VALUES ('396', '101090314', '崇礼');
INSERT INTO `tp_weather` VALUES ('397', '101090402', '承德');
INSERT INTO `tp_weather` VALUES ('398', '101090404', '兴隆');
INSERT INTO `tp_weather` VALUES ('399', '101090405', '平泉');
INSERT INTO `tp_weather` VALUES ('400', '101090406', '滦平');
INSERT INTO `tp_weather` VALUES ('401', '101090407', '隆化');
INSERT INTO `tp_weather` VALUES ('402', '101090408', '丰宁');
INSERT INTO `tp_weather` VALUES ('403', '101090409', '宽城');
INSERT INTO `tp_weather` VALUES ('404', '101090410', '围场');
INSERT INTO `tp_weather` VALUES ('405', '101090501', '唐山');
INSERT INTO `tp_weather` VALUES ('406', '101090502', '丰南');
INSERT INTO `tp_weather` VALUES ('407', '101090503', '丰润');
INSERT INTO `tp_weather` VALUES ('408', '101090504', '滦县');
INSERT INTO `tp_weather` VALUES ('409', '101090505', '滦南');
INSERT INTO `tp_weather` VALUES ('410', '101090506', '乐亭');
INSERT INTO `tp_weather` VALUES ('411', '101090507', '迁西');
INSERT INTO `tp_weather` VALUES ('412', '101090508', '玉田');
INSERT INTO `tp_weather` VALUES ('413', '101090509', '唐海');
INSERT INTO `tp_weather` VALUES ('414', '101090510', '遵化');
INSERT INTO `tp_weather` VALUES ('415', '101090511', '迁安');
INSERT INTO `tp_weather` VALUES ('416', '101090512', '曹妃甸');
INSERT INTO `tp_weather` VALUES ('417', '101090601', '廊坊');
INSERT INTO `tp_weather` VALUES ('418', '101090602', '固安');
INSERT INTO `tp_weather` VALUES ('419', '101090603', '永清');
INSERT INTO `tp_weather` VALUES ('420', '101090604', '香河');
INSERT INTO `tp_weather` VALUES ('421', '101090605', '大城');
INSERT INTO `tp_weather` VALUES ('422', '101090606', '文安');
INSERT INTO `tp_weather` VALUES ('423', '101090607', '大厂');
INSERT INTO `tp_weather` VALUES ('424', '101090608', '霸州');
INSERT INTO `tp_weather` VALUES ('425', '101090609', '三河');
INSERT INTO `tp_weather` VALUES ('426', '101090701', '沧州');
INSERT INTO `tp_weather` VALUES ('427', '101090702', '青县');
INSERT INTO `tp_weather` VALUES ('428', '101090703', '东光');
INSERT INTO `tp_weather` VALUES ('429', '101090704', '海兴');
INSERT INTO `tp_weather` VALUES ('430', '101090705', '盐山');
INSERT INTO `tp_weather` VALUES ('431', '101090706', '肃宁');
INSERT INTO `tp_weather` VALUES ('432', '101090707', '南皮');
INSERT INTO `tp_weather` VALUES ('433', '101090708', '吴桥');
INSERT INTO `tp_weather` VALUES ('434', '101090709', '献县');
INSERT INTO `tp_weather` VALUES ('435', '101090710', '孟村');
INSERT INTO `tp_weather` VALUES ('436', '101090711', '泊头');
INSERT INTO `tp_weather` VALUES ('437', '101090712', '任丘');
INSERT INTO `tp_weather` VALUES ('438', '101090713', '黄骅');
INSERT INTO `tp_weather` VALUES ('439', '101090714', '河间');
INSERT INTO `tp_weather` VALUES ('440', '101090716', '沧县');
INSERT INTO `tp_weather` VALUES ('441', '101090801', '衡水');
INSERT INTO `tp_weather` VALUES ('442', '101090802', '枣强');
INSERT INTO `tp_weather` VALUES ('443', '101090803', '武邑');
INSERT INTO `tp_weather` VALUES ('444', '101090804', '武强');
INSERT INTO `tp_weather` VALUES ('445', '101090805', '饶阳');
INSERT INTO `tp_weather` VALUES ('446', '101090806', '安平');
INSERT INTO `tp_weather` VALUES ('447', '101090807', '故城');
INSERT INTO `tp_weather` VALUES ('448', '101090808', '景县');
INSERT INTO `tp_weather` VALUES ('449', '101090809', '阜城');
INSERT INTO `tp_weather` VALUES ('450', '101090810', '冀州');
INSERT INTO `tp_weather` VALUES ('451', '101090811', '深州');
INSERT INTO `tp_weather` VALUES ('452', '101090901', '邢台');
INSERT INTO `tp_weather` VALUES ('453', '101090902', '临城');
INSERT INTO `tp_weather` VALUES ('454', '101090905', '柏乡');
INSERT INTO `tp_weather` VALUES ('455', '101090906', '隆尧');
INSERT INTO `tp_weather` VALUES ('456', '101090907', '南和');
INSERT INTO `tp_weather` VALUES ('457', '101090908', '宁晋');
INSERT INTO `tp_weather` VALUES ('458', '101090909', '巨鹿');
INSERT INTO `tp_weather` VALUES ('459', '101090910', '新河');
INSERT INTO `tp_weather` VALUES ('460', '101090911', '广宗');
INSERT INTO `tp_weather` VALUES ('461', '101090912', '平乡');
INSERT INTO `tp_weather` VALUES ('462', '101090913', '威县');
INSERT INTO `tp_weather` VALUES ('463', '101090914', '清河');
INSERT INTO `tp_weather` VALUES ('464', '101090915', '临西');
INSERT INTO `tp_weather` VALUES ('465', '101090916', '南宫');
INSERT INTO `tp_weather` VALUES ('466', '101090917', '沙河');
INSERT INTO `tp_weather` VALUES ('467', '101090918', '任县');
INSERT INTO `tp_weather` VALUES ('468', '101090919', '内丘');
INSERT INTO `tp_weather` VALUES ('469', '101091001', '邯郸');
INSERT INTO `tp_weather` VALUES ('470', '101091002', '峰峰矿');
INSERT INTO `tp_weather` VALUES ('471', '101091003', '临漳');
INSERT INTO `tp_weather` VALUES ('472', '101091004', '成安');
INSERT INTO `tp_weather` VALUES ('473', '101091005', '大名');
INSERT INTO `tp_weather` VALUES ('474', '101091006', '涉县');
INSERT INTO `tp_weather` VALUES ('475', '101091007', '磁县');
INSERT INTO `tp_weather` VALUES ('476', '101091008', '肥乡');
INSERT INTO `tp_weather` VALUES ('477', '101091009', '永年');
INSERT INTO `tp_weather` VALUES ('478', '101091010', '邱县');
INSERT INTO `tp_weather` VALUES ('479', '101091011', '鸡泽');
INSERT INTO `tp_weather` VALUES ('480', '101091012', '广平');
INSERT INTO `tp_weather` VALUES ('481', '101091013', '馆陶');
INSERT INTO `tp_weather` VALUES ('482', '101091014', '魏县');
INSERT INTO `tp_weather` VALUES ('483', '101091015', '曲周');
INSERT INTO `tp_weather` VALUES ('484', '101091016', '武安');
INSERT INTO `tp_weather` VALUES ('485', '101091101', '秦皇岛');
INSERT INTO `tp_weather` VALUES ('486', '101091102', '青龙');
INSERT INTO `tp_weather` VALUES ('487', '101091103', '昌黎');
INSERT INTO `tp_weather` VALUES ('488', '101091104', '抚宁');
INSERT INTO `tp_weather` VALUES ('489', '101091105', '卢龙');
INSERT INTO `tp_weather` VALUES ('490', '101100101', '太原');
INSERT INTO `tp_weather` VALUES ('491', '101100102', '清徐');
INSERT INTO `tp_weather` VALUES ('492', '101100103', '阳曲');
INSERT INTO `tp_weather` VALUES ('493', '101100104', '娄烦');
INSERT INTO `tp_weather` VALUES ('494', '101100105', '古交');
INSERT INTO `tp_weather` VALUES ('495', '101100201', '大同');
INSERT INTO `tp_weather` VALUES ('496', '101100202', '阳高');
INSERT INTO `tp_weather` VALUES ('497', '101100204', '天镇');
INSERT INTO `tp_weather` VALUES ('498', '101100205', '广灵');
INSERT INTO `tp_weather` VALUES ('499', '101100206', '灵丘');
INSERT INTO `tp_weather` VALUES ('500', '101100207', '浑源');
INSERT INTO `tp_weather` VALUES ('501', '101100208', '左云');
INSERT INTO `tp_weather` VALUES ('502', '101100301', '阳泉');
INSERT INTO `tp_weather` VALUES ('503', '101100302', '盂县');
INSERT INTO `tp_weather` VALUES ('504', '101100303', '平定');
INSERT INTO `tp_weather` VALUES ('505', '101100401', '晋中');
INSERT INTO `tp_weather` VALUES ('506', '101100403', '榆社');
INSERT INTO `tp_weather` VALUES ('507', '101100404', '左权');
INSERT INTO `tp_weather` VALUES ('508', '101100405', '和顺');
INSERT INTO `tp_weather` VALUES ('509', '101100406', '昔阳');
INSERT INTO `tp_weather` VALUES ('510', '101100407', '寿阳');
INSERT INTO `tp_weather` VALUES ('511', '101100408', '太谷');
INSERT INTO `tp_weather` VALUES ('512', '101100409', '祁县');
INSERT INTO `tp_weather` VALUES ('513', '101100410', '平遥');
INSERT INTO `tp_weather` VALUES ('514', '101100411', '灵石');
INSERT INTO `tp_weather` VALUES ('515', '101100412', '介休');
INSERT INTO `tp_weather` VALUES ('516', '101100501', '长治');
INSERT INTO `tp_weather` VALUES ('517', '101100502', '黎城');
INSERT INTO `tp_weather` VALUES ('518', '101100503', '屯留');
INSERT INTO `tp_weather` VALUES ('519', '101100504', '潞城');
INSERT INTO `tp_weather` VALUES ('520', '101100505', '襄垣');
INSERT INTO `tp_weather` VALUES ('521', '101100506', '平顺');
INSERT INTO `tp_weather` VALUES ('522', '101100507', '武乡');
INSERT INTO `tp_weather` VALUES ('523', '101100508', '沁县');
INSERT INTO `tp_weather` VALUES ('524', '101100509', '长子');
INSERT INTO `tp_weather` VALUES ('525', '101100510', '沁源');
INSERT INTO `tp_weather` VALUES ('526', '101100511', '壶关');
INSERT INTO `tp_weather` VALUES ('527', '101100601', '晋城');
INSERT INTO `tp_weather` VALUES ('528', '101100602', '沁水');
INSERT INTO `tp_weather` VALUES ('529', '101100603', '阳城');
INSERT INTO `tp_weather` VALUES ('530', '101100604', '陵川');
INSERT INTO `tp_weather` VALUES ('531', '101100605', '高平');
INSERT INTO `tp_weather` VALUES ('532', '101100606', '泽州');
INSERT INTO `tp_weather` VALUES ('533', '101100701', '临汾');
INSERT INTO `tp_weather` VALUES ('534', '101100702', '曲沃');
INSERT INTO `tp_weather` VALUES ('535', '101100703', '永和');
INSERT INTO `tp_weather` VALUES ('536', '101100704', '隰县');
INSERT INTO `tp_weather` VALUES ('537', '101100705', '大宁');
INSERT INTO `tp_weather` VALUES ('538', '101100706', '吉县');
INSERT INTO `tp_weather` VALUES ('539', '101100707', '襄汾');
INSERT INTO `tp_weather` VALUES ('540', '101100708', '蒲县');
INSERT INTO `tp_weather` VALUES ('541', '101100709', '汾西');
INSERT INTO `tp_weather` VALUES ('542', '101100710', '洪洞');
INSERT INTO `tp_weather` VALUES ('543', '101100711', '霍州');
INSERT INTO `tp_weather` VALUES ('544', '101100712', '乡宁');
INSERT INTO `tp_weather` VALUES ('545', '101100713', '翼城');
INSERT INTO `tp_weather` VALUES ('546', '101100714', '侯马');
INSERT INTO `tp_weather` VALUES ('547', '101100715', '浮山');
INSERT INTO `tp_weather` VALUES ('548', '101100716', '安泽');
INSERT INTO `tp_weather` VALUES ('549', '101100717', '古县');
INSERT INTO `tp_weather` VALUES ('550', '101100801', '运城');
INSERT INTO `tp_weather` VALUES ('551', '101100802', '临猗');
INSERT INTO `tp_weather` VALUES ('552', '101100803', '稷山');
INSERT INTO `tp_weather` VALUES ('553', '101100804', '万荣');
INSERT INTO `tp_weather` VALUES ('554', '101100805', '河津');
INSERT INTO `tp_weather` VALUES ('555', '101100806', '新绛');
INSERT INTO `tp_weather` VALUES ('556', '101100807', '绛县');
INSERT INTO `tp_weather` VALUES ('557', '101100808', '闻喜');
INSERT INTO `tp_weather` VALUES ('558', '101100809', '垣曲');
INSERT INTO `tp_weather` VALUES ('559', '101100810', '永济');
INSERT INTO `tp_weather` VALUES ('560', '101100811', '芮城');
INSERT INTO `tp_weather` VALUES ('561', '101100812', '夏县');
INSERT INTO `tp_weather` VALUES ('562', '101100813', '平陆');
INSERT INTO `tp_weather` VALUES ('563', '101100901', '朔州');
INSERT INTO `tp_weather` VALUES ('564', '101100903', '山阴');
INSERT INTO `tp_weather` VALUES ('565', '101100904', '右玉');
INSERT INTO `tp_weather` VALUES ('566', '101100905', '应县');
INSERT INTO `tp_weather` VALUES ('567', '101100906', '怀仁');
INSERT INTO `tp_weather` VALUES ('568', '101101001', '忻州');
INSERT INTO `tp_weather` VALUES ('569', '101101002', '定襄');
INSERT INTO `tp_weather` VALUES ('570', '101101003', '五台');
INSERT INTO `tp_weather` VALUES ('571', '101101004', '河曲');
INSERT INTO `tp_weather` VALUES ('572', '101101005', '偏关');
INSERT INTO `tp_weather` VALUES ('573', '101101006', '神池');
INSERT INTO `tp_weather` VALUES ('574', '101101007', '宁武');
INSERT INTO `tp_weather` VALUES ('575', '101101008', '代县');
INSERT INTO `tp_weather` VALUES ('576', '101101009', '繁峙');
INSERT INTO `tp_weather` VALUES ('577', '101101011', '保德');
INSERT INTO `tp_weather` VALUES ('578', '101101012', '静乐');
INSERT INTO `tp_weather` VALUES ('579', '101101013', '岢岚');
INSERT INTO `tp_weather` VALUES ('580', '101101014', '五寨');
INSERT INTO `tp_weather` VALUES ('581', '101101015', '原平');
INSERT INTO `tp_weather` VALUES ('582', '101101100', '吕梁');
INSERT INTO `tp_weather` VALUES ('583', '101101101', '离石');
INSERT INTO `tp_weather` VALUES ('584', '101101102', '临县');
INSERT INTO `tp_weather` VALUES ('585', '101101103', '兴县');
INSERT INTO `tp_weather` VALUES ('586', '101101104', '岚县');
INSERT INTO `tp_weather` VALUES ('587', '101101105', '柳林');
INSERT INTO `tp_weather` VALUES ('588', '101101106', '石楼');
INSERT INTO `tp_weather` VALUES ('589', '101101107', '方山');
INSERT INTO `tp_weather` VALUES ('590', '101101108', '交口');
INSERT INTO `tp_weather` VALUES ('591', '101101109', '中阳');
INSERT INTO `tp_weather` VALUES ('592', '101101110', '孝义');
INSERT INTO `tp_weather` VALUES ('593', '101101111', '汾阳');
INSERT INTO `tp_weather` VALUES ('594', '101101112', '文水');
INSERT INTO `tp_weather` VALUES ('595', '101101113', '交城');
INSERT INTO `tp_weather` VALUES ('596', '101110101', '西安');
INSERT INTO `tp_weather` VALUES ('597', '101110102', '长安');
INSERT INTO `tp_weather` VALUES ('598', '101110104', '蓝田');
INSERT INTO `tp_weather` VALUES ('599', '101110105', '周至');
INSERT INTO `tp_weather` VALUES ('600', '101110106', '户县');
INSERT INTO `tp_weather` VALUES ('601', '101110107', '高陵');
INSERT INTO `tp_weather` VALUES ('602', '101110200', '咸阳');
INSERT INTO `tp_weather` VALUES ('603', '101110201', '三原');
INSERT INTO `tp_weather` VALUES ('604', '101110202', '礼泉');
INSERT INTO `tp_weather` VALUES ('605', '101110203', '永寿');
INSERT INTO `tp_weather` VALUES ('606', '101110204', '淳化');
INSERT INTO `tp_weather` VALUES ('607', '101110205', '泾阳');
INSERT INTO `tp_weather` VALUES ('608', '101110206', '武功');
INSERT INTO `tp_weather` VALUES ('609', '101110207', '乾县');
INSERT INTO `tp_weather` VALUES ('610', '101110208', '彬县');
INSERT INTO `tp_weather` VALUES ('611', '101110209', '长武');
INSERT INTO `tp_weather` VALUES ('612', '101110210', '旬邑');
INSERT INTO `tp_weather` VALUES ('613', '101110211', '兴平');
INSERT INTO `tp_weather` VALUES ('614', '101110300', '延安');
INSERT INTO `tp_weather` VALUES ('615', '101110401', '榆林');
INSERT INTO `tp_weather` VALUES ('616', '101110402', '府谷');
INSERT INTO `tp_weather` VALUES ('617', '101110403', '神木');
INSERT INTO `tp_weather` VALUES ('618', '101110404', '佳县');
INSERT INTO `tp_weather` VALUES ('619', '101110405', '定边');
INSERT INTO `tp_weather` VALUES ('620', '101110406', '靖边');
INSERT INTO `tp_weather` VALUES ('621', '101110407', '横山');
INSERT INTO `tp_weather` VALUES ('622', '101110408', '米脂');
INSERT INTO `tp_weather` VALUES ('623', '101110409', '子洲');
INSERT INTO `tp_weather` VALUES ('624', '101110410', '绥德');
INSERT INTO `tp_weather` VALUES ('625', '101110411', '吴堡');
INSERT INTO `tp_weather` VALUES ('626', '101110412', '清涧');
INSERT INTO `tp_weather` VALUES ('627', '101110501', '渭南');
INSERT INTO `tp_weather` VALUES ('628', '101110502', '华县');
INSERT INTO `tp_weather` VALUES ('629', '101110503', '潼关');
INSERT INTO `tp_weather` VALUES ('630', '101110504', '大荔');
INSERT INTO `tp_weather` VALUES ('631', '101110505', '白水');
INSERT INTO `tp_weather` VALUES ('632', '101110506', '富平');
INSERT INTO `tp_weather` VALUES ('633', '101110507', '蒲城');
INSERT INTO `tp_weather` VALUES ('634', '101110508', '澄城');
INSERT INTO `tp_weather` VALUES ('635', '101110509', '合阳');
INSERT INTO `tp_weather` VALUES ('636', '101110510', '韩城');
INSERT INTO `tp_weather` VALUES ('637', '101110511', '华阴');
INSERT INTO `tp_weather` VALUES ('638', '101110601', '商洛');
INSERT INTO `tp_weather` VALUES ('639', '101110602', '洛南');
INSERT INTO `tp_weather` VALUES ('640', '101110603', '柞水');
INSERT INTO `tp_weather` VALUES ('641', '101110604', '商州');
INSERT INTO `tp_weather` VALUES ('642', '101110605', '镇安');
INSERT INTO `tp_weather` VALUES ('643', '101110606', '丹凤');
INSERT INTO `tp_weather` VALUES ('644', '101110607', '商南');
INSERT INTO `tp_weather` VALUES ('645', '101110608', '山阳');
INSERT INTO `tp_weather` VALUES ('646', '101110701', '安康');
INSERT INTO `tp_weather` VALUES ('647', '101110702', '紫阳');
INSERT INTO `tp_weather` VALUES ('648', '101110703', '石泉');
INSERT INTO `tp_weather` VALUES ('649', '101110704', '汉阴');
INSERT INTO `tp_weather` VALUES ('650', '101110705', '旬阳');
INSERT INTO `tp_weather` VALUES ('651', '101110706', '岚皋');
INSERT INTO `tp_weather` VALUES ('652', '101110707', '平利');
INSERT INTO `tp_weather` VALUES ('653', '101110708', '白河');
INSERT INTO `tp_weather` VALUES ('654', '101110709', '镇坪');
INSERT INTO `tp_weather` VALUES ('655', '101110710', '宁陕');
INSERT INTO `tp_weather` VALUES ('656', '101110801', '汉中');
INSERT INTO `tp_weather` VALUES ('657', '101110802', '略阳');
INSERT INTO `tp_weather` VALUES ('658', '101110803', '勉县');
INSERT INTO `tp_weather` VALUES ('659', '101110804', '留坝');
INSERT INTO `tp_weather` VALUES ('660', '101110805', '洋县');
INSERT INTO `tp_weather` VALUES ('661', '101110806', '城固');
INSERT INTO `tp_weather` VALUES ('662', '101110807', '西乡');
INSERT INTO `tp_weather` VALUES ('663', '101110808', '佛坪');
INSERT INTO `tp_weather` VALUES ('664', '101110809', '宁强');
INSERT INTO `tp_weather` VALUES ('665', '101110810', '南郑');
INSERT INTO `tp_weather` VALUES ('666', '101110811', '镇巴');
INSERT INTO `tp_weather` VALUES ('667', '101110901', '宝鸡');
INSERT INTO `tp_weather` VALUES ('668', '101110903', '千阳');
INSERT INTO `tp_weather` VALUES ('669', '101110904', '麟游');
INSERT INTO `tp_weather` VALUES ('670', '101110905', '岐山');
INSERT INTO `tp_weather` VALUES ('671', '101110906', '凤翔');
INSERT INTO `tp_weather` VALUES ('672', '101110907', '扶风');
INSERT INTO `tp_weather` VALUES ('673', '101110908', '眉县');
INSERT INTO `tp_weather` VALUES ('674', '101110909', '太白');
INSERT INTO `tp_weather` VALUES ('675', '101110910', '凤县');
INSERT INTO `tp_weather` VALUES ('676', '101110911', '陇县');
INSERT INTO `tp_weather` VALUES ('677', '101111001', '铜川');
INSERT INTO `tp_weather` VALUES ('678', '101111003', '宜君');
INSERT INTO `tp_weather` VALUES ('679', '101111101', '杨凌');
INSERT INTO `tp_weather` VALUES ('680', '101120101', '济南');
INSERT INTO `tp_weather` VALUES ('681', '101120103', '商河');
INSERT INTO `tp_weather` VALUES ('682', '101120104', '章丘');
INSERT INTO `tp_weather` VALUES ('683', '101120105', '平阴');
INSERT INTO `tp_weather` VALUES ('684', '101120106', '济阳');
INSERT INTO `tp_weather` VALUES ('685', '101120201', '青岛');
INSERT INTO `tp_weather` VALUES ('686', '101120204', '即墨');
INSERT INTO `tp_weather` VALUES ('687', '101120205', '胶州');
INSERT INTO `tp_weather` VALUES ('688', '101120206', '胶南');
INSERT INTO `tp_weather` VALUES ('689', '101120207', '莱西');
INSERT INTO `tp_weather` VALUES ('690', '101120208', '平度');
INSERT INTO `tp_weather` VALUES ('691', '101120301', '淄博');
INSERT INTO `tp_weather` VALUES ('692', '101120304', '高青');
INSERT INTO `tp_weather` VALUES ('693', '101120306', '沂源');
INSERT INTO `tp_weather` VALUES ('694', '101120307', '桓台');
INSERT INTO `tp_weather` VALUES ('695', '101120401', '德州');
INSERT INTO `tp_weather` VALUES ('696', '101120402', '武城');
INSERT INTO `tp_weather` VALUES ('697', '101120403', '临邑');
INSERT INTO `tp_weather` VALUES ('698', '101120404', '陵县');
INSERT INTO `tp_weather` VALUES ('699', '101120405', '齐河');
INSERT INTO `tp_weather` VALUES ('700', '101120406', '乐陵');
INSERT INTO `tp_weather` VALUES ('701', '101120407', '庆云');
INSERT INTO `tp_weather` VALUES ('702', '101120408', '平原');
INSERT INTO `tp_weather` VALUES ('703', '101120409', '宁津');
INSERT INTO `tp_weather` VALUES ('704', '101120410', '夏津');
INSERT INTO `tp_weather` VALUES ('705', '101120411', '禹城');
INSERT INTO `tp_weather` VALUES ('706', '101120501', '烟台');
INSERT INTO `tp_weather` VALUES ('707', '101120502', '莱州');
INSERT INTO `tp_weather` VALUES ('708', '101120503', '长岛');
INSERT INTO `tp_weather` VALUES ('709', '101120504', '蓬莱');
INSERT INTO `tp_weather` VALUES ('710', '101120505', '龙口');
INSERT INTO `tp_weather` VALUES ('711', '101120506', '招远');
INSERT INTO `tp_weather` VALUES ('712', '101120507', '栖霞');
INSERT INTO `tp_weather` VALUES ('713', '101120510', '莱阳');
INSERT INTO `tp_weather` VALUES ('714', '101120511', '海阳');
INSERT INTO `tp_weather` VALUES ('715', '101120601', '潍坊');
INSERT INTO `tp_weather` VALUES ('716', '101120602', '青州');
INSERT INTO `tp_weather` VALUES ('717', '101120603', '寿光');
INSERT INTO `tp_weather` VALUES ('718', '101120604', '临朐');
INSERT INTO `tp_weather` VALUES ('719', '101120605', '昌乐');
INSERT INTO `tp_weather` VALUES ('720', '101120606', '昌邑');
INSERT INTO `tp_weather` VALUES ('721', '101120607', '安丘');
INSERT INTO `tp_weather` VALUES ('722', '101120608', '高密');
INSERT INTO `tp_weather` VALUES ('723', '101120609', '诸城');
INSERT INTO `tp_weather` VALUES ('724', '101120701', '济宁');
INSERT INTO `tp_weather` VALUES ('725', '101120702', '嘉祥');
INSERT INTO `tp_weather` VALUES ('726', '101120703', '微山');
INSERT INTO `tp_weather` VALUES ('727', '101120704', '鱼台');
INSERT INTO `tp_weather` VALUES ('728', '101120705', '兖州');
INSERT INTO `tp_weather` VALUES ('729', '101120706', '金乡');
INSERT INTO `tp_weather` VALUES ('730', '101120707', '汶上');
INSERT INTO `tp_weather` VALUES ('731', '101120708', '泗水');
INSERT INTO `tp_weather` VALUES ('732', '101120709', '梁山');
INSERT INTO `tp_weather` VALUES ('733', '101120710', '曲阜');
INSERT INTO `tp_weather` VALUES ('734', '101120711', '邹城');
INSERT INTO `tp_weather` VALUES ('735', '101120801', '泰安');
INSERT INTO `tp_weather` VALUES ('736', '101120802', '新泰');
INSERT INTO `tp_weather` VALUES ('737', '101120804', '肥城');
INSERT INTO `tp_weather` VALUES ('738', '101120805', '东平');
INSERT INTO `tp_weather` VALUES ('739', '101120806', '宁阳');
INSERT INTO `tp_weather` VALUES ('740', '101120901', '临沂');
INSERT INTO `tp_weather` VALUES ('741', '101120902', '莒南');
INSERT INTO `tp_weather` VALUES ('742', '101120903', '沂南');
INSERT INTO `tp_weather` VALUES ('743', '101120904', '苍山');
INSERT INTO `tp_weather` VALUES ('744', '101120905', '临沭');
INSERT INTO `tp_weather` VALUES ('745', '101120906', '郯城');
INSERT INTO `tp_weather` VALUES ('746', '101120907', '蒙阴');
INSERT INTO `tp_weather` VALUES ('747', '101120908', '平邑');
INSERT INTO `tp_weather` VALUES ('748', '101120909', '费县');
INSERT INTO `tp_weather` VALUES ('749', '101120910', '沂水');
INSERT INTO `tp_weather` VALUES ('750', '101121001', '菏泽');
INSERT INTO `tp_weather` VALUES ('751', '101121002', '鄄城');
INSERT INTO `tp_weather` VALUES ('752', '101121003', '郓城');
INSERT INTO `tp_weather` VALUES ('753', '101121004', '东明');
INSERT INTO `tp_weather` VALUES ('754', '101121005', '定陶');
INSERT INTO `tp_weather` VALUES ('755', '101121006', '巨野');
INSERT INTO `tp_weather` VALUES ('756', '101121007', '曹县');
INSERT INTO `tp_weather` VALUES ('757', '101121008', '成武');
INSERT INTO `tp_weather` VALUES ('758', '101121009', '单县');
INSERT INTO `tp_weather` VALUES ('759', '101121101', '滨州');
INSERT INTO `tp_weather` VALUES ('760', '101121102', '博兴');
INSERT INTO `tp_weather` VALUES ('761', '101121103', '无棣');
INSERT INTO `tp_weather` VALUES ('762', '101121104', '阳信');
INSERT INTO `tp_weather` VALUES ('763', '101121105', '惠民');
INSERT INTO `tp_weather` VALUES ('764', '101121106', '沾化');
INSERT INTO `tp_weather` VALUES ('765', '101121107', '邹平');
INSERT INTO `tp_weather` VALUES ('766', '101121201', '东营');
INSERT INTO `tp_weather` VALUES ('767', '101121203', '垦利');
INSERT INTO `tp_weather` VALUES ('768', '101121204', '利津');
INSERT INTO `tp_weather` VALUES ('769', '101121205', '广饶');
INSERT INTO `tp_weather` VALUES ('770', '101121301', '威海');
INSERT INTO `tp_weather` VALUES ('771', '101121302', '文登');
INSERT INTO `tp_weather` VALUES ('772', '101121303', '荣成');
INSERT INTO `tp_weather` VALUES ('773', '101121304', '乳山');
INSERT INTO `tp_weather` VALUES ('774', '101121401', '枣庄');
INSERT INTO `tp_weather` VALUES ('775', '101121405', '滕州');
INSERT INTO `tp_weather` VALUES ('776', '101121501', '日照');
INSERT INTO `tp_weather` VALUES ('777', '101121502', '五莲');
INSERT INTO `tp_weather` VALUES ('778', '101121503', '莒县');
INSERT INTO `tp_weather` VALUES ('779', '101121601', '莱芜');
INSERT INTO `tp_weather` VALUES ('780', '101121701', '聊城');
INSERT INTO `tp_weather` VALUES ('781', '101121702', '冠县');
INSERT INTO `tp_weather` VALUES ('782', '101121703', '阳谷');
INSERT INTO `tp_weather` VALUES ('783', '101121704', '高唐');
INSERT INTO `tp_weather` VALUES ('784', '101121705', '茌平');
INSERT INTO `tp_weather` VALUES ('785', '101121706', '东阿');
INSERT INTO `tp_weather` VALUES ('786', '101121707', '临清');
INSERT INTO `tp_weather` VALUES ('787', '101121709', '莘县');
INSERT INTO `tp_weather` VALUES ('788', '101130101', '乌鲁木齐');
INSERT INTO `tp_weather` VALUES ('789', '101130105', '达坂城');
INSERT INTO `tp_weather` VALUES ('790', '101130201', '克拉玛依');
INSERT INTO `tp_weather` VALUES ('791', '101130202', '乌尔禾');
INSERT INTO `tp_weather` VALUES ('792', '101130203', '白碱滩');
INSERT INTO `tp_weather` VALUES ('793', '101130301', '石河子');
INSERT INTO `tp_weather` VALUES ('794', '101130401', '昌吉');
INSERT INTO `tp_weather` VALUES ('795', '101130402', '呼图壁');
INSERT INTO `tp_weather` VALUES ('796', '101130403', '米泉');
INSERT INTO `tp_weather` VALUES ('797', '101130404', '阜康');
INSERT INTO `tp_weather` VALUES ('798', '101130405', '吉木萨尔');
INSERT INTO `tp_weather` VALUES ('799', '101130406', '奇台');
INSERT INTO `tp_weather` VALUES ('800', '101130407', '玛纳斯');
INSERT INTO `tp_weather` VALUES ('801', '101130408', '木垒');
INSERT INTO `tp_weather` VALUES ('802', '101130501', '吐鲁番');
INSERT INTO `tp_weather` VALUES ('803', '101130503', '克州');
INSERT INTO `tp_weather` VALUES ('804', '101130504', '鄯善');
INSERT INTO `tp_weather` VALUES ('805', '101130601', '库尔勒');
INSERT INTO `tp_weather` VALUES ('806', '101130602', '轮台');
INSERT INTO `tp_weather` VALUES ('807', '101130603', '尉犁');
INSERT INTO `tp_weather` VALUES ('808', '101130604', '若羌');
INSERT INTO `tp_weather` VALUES ('809', '101130605', '且末');
INSERT INTO `tp_weather` VALUES ('810', '101130606', '和静');
INSERT INTO `tp_weather` VALUES ('811', '101130607', '焉耆');
INSERT INTO `tp_weather` VALUES ('812', '101130608', '和硕');
INSERT INTO `tp_weather` VALUES ('813', '101130612', '博湖');
INSERT INTO `tp_weather` VALUES ('814', '101130701', '阿拉尔');
INSERT INTO `tp_weather` VALUES ('815', '101130801', '阿克苏');
INSERT INTO `tp_weather` VALUES ('816', '101130802', '乌什');
INSERT INTO `tp_weather` VALUES ('817', '101130803', '温宿');
INSERT INTO `tp_weather` VALUES ('818', '101130804', '拜城');
INSERT INTO `tp_weather` VALUES ('819', '101130805', '新和');
INSERT INTO `tp_weather` VALUES ('820', '101130806', '沙雅');
INSERT INTO `tp_weather` VALUES ('821', '101130807', '库车');
INSERT INTO `tp_weather` VALUES ('822', '101130808', '柯坪');
INSERT INTO `tp_weather` VALUES ('823', '101130809', '阿瓦提');
INSERT INTO `tp_weather` VALUES ('824', '101130901', '喀什');
INSERT INTO `tp_weather` VALUES ('825', '101130902', '英吉沙');
INSERT INTO `tp_weather` VALUES ('826', '101130903', '塔什库尔干');
INSERT INTO `tp_weather` VALUES ('827', '101130904', '麦盖提');
INSERT INTO `tp_weather` VALUES ('828', '101130905', '莎车');
INSERT INTO `tp_weather` VALUES ('829', '101130906', '叶城');
INSERT INTO `tp_weather` VALUES ('830', '101130907', '泽普');
INSERT INTO `tp_weather` VALUES ('831', '101130908', '巴楚');
INSERT INTO `tp_weather` VALUES ('832', '101130909', '岳普湖');
INSERT INTO `tp_weather` VALUES ('833', '101130910', '伽师');
INSERT INTO `tp_weather` VALUES ('834', '101130911', '疏附');
INSERT INTO `tp_weather` VALUES ('835', '101130912', '疏勒');
INSERT INTO `tp_weather` VALUES ('836', '101131001', '伊宁');
INSERT INTO `tp_weather` VALUES ('837', '101131002', '察布查尔');
INSERT INTO `tp_weather` VALUES ('838', '101131003', '尼勒克');
INSERT INTO `tp_weather` VALUES ('839', '101131005', '巩留');
INSERT INTO `tp_weather` VALUES ('840', '101131006', '新源');
INSERT INTO `tp_weather` VALUES ('841', '101131007', '昭苏');
INSERT INTO `tp_weather` VALUES ('842', '101131008', '特克斯');
INSERT INTO `tp_weather` VALUES ('843', '101131009', '霍城');
INSERT INTO `tp_weather` VALUES ('844', '101131011', '奎屯');
INSERT INTO `tp_weather` VALUES ('845', '101131101', '塔城');
INSERT INTO `tp_weather` VALUES ('846', '101131102', '裕民');
INSERT INTO `tp_weather` VALUES ('847', '101131103', '额敏');
INSERT INTO `tp_weather` VALUES ('848', '101131104', '和布克赛尔');
INSERT INTO `tp_weather` VALUES ('849', '101131105', '托里');
INSERT INTO `tp_weather` VALUES ('850', '101131106', '乌苏');
INSERT INTO `tp_weather` VALUES ('851', '101131107', '沙湾');
INSERT INTO `tp_weather` VALUES ('852', '101131201', '哈密');
INSERT INTO `tp_weather` VALUES ('853', '101131203', '巴里坤');
INSERT INTO `tp_weather` VALUES ('854', '101131204', '伊吾');
INSERT INTO `tp_weather` VALUES ('855', '101131301', '和田');
INSERT INTO `tp_weather` VALUES ('856', '101131302', '皮山');
INSERT INTO `tp_weather` VALUES ('857', '101131303', '策勒');
INSERT INTO `tp_weather` VALUES ('858', '101131304', '墨玉');
INSERT INTO `tp_weather` VALUES ('859', '101131305', '洛浦');
INSERT INTO `tp_weather` VALUES ('860', '101131306', '民丰');
INSERT INTO `tp_weather` VALUES ('861', '101131307', '于田');
INSERT INTO `tp_weather` VALUES ('862', '101131401', '阿勒泰');
INSERT INTO `tp_weather` VALUES ('863', '101131402', '哈巴河');
INSERT INTO `tp_weather` VALUES ('864', '101131405', '吉木乃');
INSERT INTO `tp_weather` VALUES ('865', '101131406', '布尔津');
INSERT INTO `tp_weather` VALUES ('866', '101131407', '福海');
INSERT INTO `tp_weather` VALUES ('867', '101131408', '富蕴');
INSERT INTO `tp_weather` VALUES ('868', '101131409', '青河');
INSERT INTO `tp_weather` VALUES ('869', '101131501', '阿图什');
INSERT INTO `tp_weather` VALUES ('870', '101131502', '乌恰');
INSERT INTO `tp_weather` VALUES ('871', '101131503', '阿克陶');
INSERT INTO `tp_weather` VALUES ('872', '101131504', '阿合奇');
INSERT INTO `tp_weather` VALUES ('873', '101131601', '博乐');
INSERT INTO `tp_weather` VALUES ('874', '101131602', '温泉');
INSERT INTO `tp_weather` VALUES ('875', '101131603', '精河');
INSERT INTO `tp_weather` VALUES ('876', '101140101', '拉萨');
INSERT INTO `tp_weather` VALUES ('877', '101140102', '当雄');
INSERT INTO `tp_weather` VALUES ('878', '101140103', '尼木');
INSERT INTO `tp_weather` VALUES ('879', '101140104', '林周');
INSERT INTO `tp_weather` VALUES ('880', '101140105', '堆龙德庆');
INSERT INTO `tp_weather` VALUES ('881', '101140106', '曲水');
INSERT INTO `tp_weather` VALUES ('882', '101140107', '达孜');
INSERT INTO `tp_weather` VALUES ('883', '101140108', '墨竹工卡');
INSERT INTO `tp_weather` VALUES ('884', '101140201', '日喀则');
INSERT INTO `tp_weather` VALUES ('885', '101140202', '拉孜');
INSERT INTO `tp_weather` VALUES ('886', '101140204', '聂拉木');
INSERT INTO `tp_weather` VALUES ('887', '101140205', '定日');
INSERT INTO `tp_weather` VALUES ('888', '101140206', '江孜');
INSERT INTO `tp_weather` VALUES ('889', '101140208', '仲巴');
INSERT INTO `tp_weather` VALUES ('890', '101140209', '萨嘎');
INSERT INTO `tp_weather` VALUES ('891', '101140210', '吉隆');
INSERT INTO `tp_weather` VALUES ('892', '101140211', '昂仁');
INSERT INTO `tp_weather` VALUES ('893', '101140212', '定结');
INSERT INTO `tp_weather` VALUES ('894', '101140213', '萨迦');
INSERT INTO `tp_weather` VALUES ('895', '101140214', '谢通门');
INSERT INTO `tp_weather` VALUES ('896', '101140215', '楠木林');
INSERT INTO `tp_weather` VALUES ('897', '101140216', '岗巴');
INSERT INTO `tp_weather` VALUES ('898', '101140217', '白朗');
INSERT INTO `tp_weather` VALUES ('899', '101140218', '亚东');
INSERT INTO `tp_weather` VALUES ('900', '101140219', '康马');
INSERT INTO `tp_weather` VALUES ('901', '101140220', '仁布');
INSERT INTO `tp_weather` VALUES ('902', '101140301', '山南');
INSERT INTO `tp_weather` VALUES ('903', '101140302', '贡嘎');
INSERT INTO `tp_weather` VALUES ('904', '101140303', '札囊');
INSERT INTO `tp_weather` VALUES ('905', '101140304', '加查');
INSERT INTO `tp_weather` VALUES ('906', '101140305', '浪卡子');
INSERT INTO `tp_weather` VALUES ('907', '101140306', '错那');
INSERT INTO `tp_weather` VALUES ('908', '101140307', '隆子');
INSERT INTO `tp_weather` VALUES ('909', '101140309', '乃东');
INSERT INTO `tp_weather` VALUES ('910', '101140310', '桑日');
INSERT INTO `tp_weather` VALUES ('911', '101140311', '洛扎');
INSERT INTO `tp_weather` VALUES ('912', '101140312', '措美');
INSERT INTO `tp_weather` VALUES ('913', '101140313', '琼结');
INSERT INTO `tp_weather` VALUES ('914', '101140314', '曲松');
INSERT INTO `tp_weather` VALUES ('915', '101140401', '林芝');
INSERT INTO `tp_weather` VALUES ('916', '101140402', '波密');
INSERT INTO `tp_weather` VALUES ('917', '101140403', '米林');
INSERT INTO `tp_weather` VALUES ('918', '101140404', '察隅');
INSERT INTO `tp_weather` VALUES ('919', '101140405', '工布江达');
INSERT INTO `tp_weather` VALUES ('920', '101140406', '朗县');
INSERT INTO `tp_weather` VALUES ('921', '101140407', '墨脱');
INSERT INTO `tp_weather` VALUES ('922', '101140501', '昌都');
INSERT INTO `tp_weather` VALUES ('923', '101140502', '丁青');
INSERT INTO `tp_weather` VALUES ('924', '101140503', '边坝');
INSERT INTO `tp_weather` VALUES ('925', '101140504', '洛隆');
INSERT INTO `tp_weather` VALUES ('926', '101140505', '左贡');
INSERT INTO `tp_weather` VALUES ('927', '101140506', '芒康');
INSERT INTO `tp_weather` VALUES ('928', '101140507', '类乌齐');
INSERT INTO `tp_weather` VALUES ('929', '101140508', '八宿');
INSERT INTO `tp_weather` VALUES ('930', '101140509', '江达');
INSERT INTO `tp_weather` VALUES ('931', '101140510', '察雅');
INSERT INTO `tp_weather` VALUES ('932', '101140511', '贡觉');
INSERT INTO `tp_weather` VALUES ('933', '101140601', '那曲');
INSERT INTO `tp_weather` VALUES ('934', '101140602', '尼玛');
INSERT INTO `tp_weather` VALUES ('935', '101140603', '嘉黎');
INSERT INTO `tp_weather` VALUES ('936', '101140604', '班戈');
INSERT INTO `tp_weather` VALUES ('937', '101140605', '安多');
INSERT INTO `tp_weather` VALUES ('938', '101140606', '索县');
INSERT INTO `tp_weather` VALUES ('939', '101140607', '聂荣');
INSERT INTO `tp_weather` VALUES ('940', '101140608', '巴青');
INSERT INTO `tp_weather` VALUES ('941', '101140609', '比如');
INSERT INTO `tp_weather` VALUES ('942', '101140610', '双湖');
INSERT INTO `tp_weather` VALUES ('943', '101140701', '阿里');
INSERT INTO `tp_weather` VALUES ('944', '101140702', '改则');
INSERT INTO `tp_weather` VALUES ('945', '101140703', '申扎');
INSERT INTO `tp_weather` VALUES ('946', '101140705', '普兰');
INSERT INTO `tp_weather` VALUES ('947', '101140706', '札达');
INSERT INTO `tp_weather` VALUES ('948', '101140707', '噶尔');
INSERT INTO `tp_weather` VALUES ('949', '101140708', '日土');
INSERT INTO `tp_weather` VALUES ('950', '101140709', '革吉');
INSERT INTO `tp_weather` VALUES ('951', '101140710', '措勤');
INSERT INTO `tp_weather` VALUES ('952', '101150101', '西宁');
INSERT INTO `tp_weather` VALUES ('953', '101150102', '大通');
INSERT INTO `tp_weather` VALUES ('954', '101150103', '湟源');
INSERT INTO `tp_weather` VALUES ('955', '101150104', '湟中');
INSERT INTO `tp_weather` VALUES ('956', '101150201', '海东');
INSERT INTO `tp_weather` VALUES ('957', '101150202', '乐都');
INSERT INTO `tp_weather` VALUES ('958', '101150203', '民和');
INSERT INTO `tp_weather` VALUES ('959', '101150204', '互助');
INSERT INTO `tp_weather` VALUES ('960', '101150205', '化隆');
INSERT INTO `tp_weather` VALUES ('961', '101150206', '循化');
INSERT INTO `tp_weather` VALUES ('962', '101150208', '平安');
INSERT INTO `tp_weather` VALUES ('963', '101150301', '黄南');
INSERT INTO `tp_weather` VALUES ('964', '101150302', '尖扎');
INSERT INTO `tp_weather` VALUES ('965', '101150303', '泽库');
INSERT INTO `tp_weather` VALUES ('966', '101150305', '同仁');
INSERT INTO `tp_weather` VALUES ('967', '101150401', '海南');
INSERT INTO `tp_weather` VALUES ('968', '101150404', '贵德');
INSERT INTO `tp_weather` VALUES ('969', '101150406', '兴海');
INSERT INTO `tp_weather` VALUES ('970', '101150407', '贵南');
INSERT INTO `tp_weather` VALUES ('971', '101150408', '同德');
INSERT INTO `tp_weather` VALUES ('972', '101150409', '共和');
INSERT INTO `tp_weather` VALUES ('973', '101150501', '果洛');
INSERT INTO `tp_weather` VALUES ('974', '101150502', '班玛');
INSERT INTO `tp_weather` VALUES ('975', '101150503', '甘德');
INSERT INTO `tp_weather` VALUES ('976', '101150504', '达日');
INSERT INTO `tp_weather` VALUES ('977', '101150505', '久治');
INSERT INTO `tp_weather` VALUES ('978', '101150506', '玛多');
INSERT INTO `tp_weather` VALUES ('979', '101150508', '玛沁');
INSERT INTO `tp_weather` VALUES ('980', '101150601', '玉树');
INSERT INTO `tp_weather` VALUES ('981', '101150602', '称多');
INSERT INTO `tp_weather` VALUES ('982', '101150603', '治多');
INSERT INTO `tp_weather` VALUES ('983', '101150604', '杂多');
INSERT INTO `tp_weather` VALUES ('984', '101150605', '囊谦');
INSERT INTO `tp_weather` VALUES ('985', '101150606', '曲麻莱');
INSERT INTO `tp_weather` VALUES ('986', '101150701', '海西');
INSERT INTO `tp_weather` VALUES ('987', '101150708', '天峻');
INSERT INTO `tp_weather` VALUES ('988', '101150709', '乌兰');
INSERT INTO `tp_weather` VALUES ('989', '101150716', '德令哈');
INSERT INTO `tp_weather` VALUES ('990', '101150801', '海北');
INSERT INTO `tp_weather` VALUES ('991', '101150802', '门源');
INSERT INTO `tp_weather` VALUES ('992', '101150803', '祁连');
INSERT INTO `tp_weather` VALUES ('993', '101150804', '海晏');
INSERT INTO `tp_weather` VALUES ('994', '101150806', '刚察');
INSERT INTO `tp_weather` VALUES ('995', '101150901', '格尔木');
INSERT INTO `tp_weather` VALUES ('996', '101150902', '都兰');
INSERT INTO `tp_weather` VALUES ('997', '101160101', '兰州');
INSERT INTO `tp_weather` VALUES ('998', '101160102', '皋兰');
INSERT INTO `tp_weather` VALUES ('999', '101160103', '永登');
INSERT INTO `tp_weather` VALUES ('1000', '101160104', '榆中');
INSERT INTO `tp_weather` VALUES ('1001', '101160201', '定西');
INSERT INTO `tp_weather` VALUES ('1002', '101160202', '通渭');
INSERT INTO `tp_weather` VALUES ('1003', '101160203', '陇西');
INSERT INTO `tp_weather` VALUES ('1004', '101160204', '渭源');
INSERT INTO `tp_weather` VALUES ('1005', '101160205', '临洮');
INSERT INTO `tp_weather` VALUES ('1006', '101160206', '漳县');
INSERT INTO `tp_weather` VALUES ('1007', '101160207', '岷县');
INSERT INTO `tp_weather` VALUES ('1008', '101160301', '平凉');
INSERT INTO `tp_weather` VALUES ('1009', '101160302', '泾川');
INSERT INTO `tp_weather` VALUES ('1010', '101160303', '灵台');
INSERT INTO `tp_weather` VALUES ('1011', '101160304', '崇信');
INSERT INTO `tp_weather` VALUES ('1012', '101160305', '华亭');
INSERT INTO `tp_weather` VALUES ('1013', '101160306', '庄浪');
INSERT INTO `tp_weather` VALUES ('1014', '101160307', '静宁');
INSERT INTO `tp_weather` VALUES ('1015', '101160401', '庆阳');
INSERT INTO `tp_weather` VALUES ('1016', '101160402', '西峰');
INSERT INTO `tp_weather` VALUES ('1017', '101160403', '环县');
INSERT INTO `tp_weather` VALUES ('1018', '101160404', '华池');
INSERT INTO `tp_weather` VALUES ('1019', '101160405', '合水');
INSERT INTO `tp_weather` VALUES ('1020', '101160406', '正宁');
INSERT INTO `tp_weather` VALUES ('1021', '101160407', '宁县');
INSERT INTO `tp_weather` VALUES ('1022', '101160408', '镇原');
INSERT INTO `tp_weather` VALUES ('1023', '101160409', '庆城');
INSERT INTO `tp_weather` VALUES ('1024', '101160501', '武威');
INSERT INTO `tp_weather` VALUES ('1025', '101160502', '民勤');
INSERT INTO `tp_weather` VALUES ('1026', '101160503', '古浪');
INSERT INTO `tp_weather` VALUES ('1027', '101160505', '天祝');
INSERT INTO `tp_weather` VALUES ('1028', '101160601', '金昌');
INSERT INTO `tp_weather` VALUES ('1029', '101160602', '永昌');
INSERT INTO `tp_weather` VALUES ('1030', '101160701', '张掖');
INSERT INTO `tp_weather` VALUES ('1031', '101160702', '肃南');
INSERT INTO `tp_weather` VALUES ('1032', '101160703', '民乐');
INSERT INTO `tp_weather` VALUES ('1033', '101160704', '临泽');
INSERT INTO `tp_weather` VALUES ('1034', '101160705', '高台');
INSERT INTO `tp_weather` VALUES ('1035', '101160706', '山丹');
INSERT INTO `tp_weather` VALUES ('1036', '101160801', '酒泉');
INSERT INTO `tp_weather` VALUES ('1037', '101160803', '金塔');
INSERT INTO `tp_weather` VALUES ('1038', '101160804', '阿克塞');
INSERT INTO `tp_weather` VALUES ('1039', '101160805', '瓜州');
INSERT INTO `tp_weather` VALUES ('1040', '101160806', '肃北');
INSERT INTO `tp_weather` VALUES ('1041', '101160807', '玉门');
INSERT INTO `tp_weather` VALUES ('1042', '101160808', '敦煌');
INSERT INTO `tp_weather` VALUES ('1043', '101160901', '天水');
INSERT INTO `tp_weather` VALUES ('1044', '101160903', '清水');
INSERT INTO `tp_weather` VALUES ('1045', '101160904', '秦安');
INSERT INTO `tp_weather` VALUES ('1046', '101160905', '甘谷');
INSERT INTO `tp_weather` VALUES ('1047', '101160906', '武山');
INSERT INTO `tp_weather` VALUES ('1048', '101160907', '张家川');
INSERT INTO `tp_weather` VALUES ('1049', '101161001', '陇南');
INSERT INTO `tp_weather` VALUES ('1050', '101161002', '成县');
INSERT INTO `tp_weather` VALUES ('1051', '101161003', '文县');
INSERT INTO `tp_weather` VALUES ('1052', '101161004', '宕昌');
INSERT INTO `tp_weather` VALUES ('1053', '101161005', '康县');
INSERT INTO `tp_weather` VALUES ('1054', '101161006', '西和');
INSERT INTO `tp_weather` VALUES ('1055', '101161007', '礼县');
INSERT INTO `tp_weather` VALUES ('1056', '101161008', '徽县');
INSERT INTO `tp_weather` VALUES ('1057', '101161009', '两当');
INSERT INTO `tp_weather` VALUES ('1058', '101161101', '临夏');
INSERT INTO `tp_weather` VALUES ('1059', '101161102', '康乐');
INSERT INTO `tp_weather` VALUES ('1060', '101161103', '永靖');
INSERT INTO `tp_weather` VALUES ('1061', '101161104', '广河');
INSERT INTO `tp_weather` VALUES ('1062', '101161105', '和政');
INSERT INTO `tp_weather` VALUES ('1063', '101161107', '积石山');
INSERT INTO `tp_weather` VALUES ('1064', '101161201', '合作');
INSERT INTO `tp_weather` VALUES ('1065', '101161202', '临潭');
INSERT INTO `tp_weather` VALUES ('1066', '101161203', '卓尼');
INSERT INTO `tp_weather` VALUES ('1067', '101161204', '舟曲');
INSERT INTO `tp_weather` VALUES ('1068', '101161205', '迭部');
INSERT INTO `tp_weather` VALUES ('1069', '101161206', '玛曲');
INSERT INTO `tp_weather` VALUES ('1070', '101161207', '碌曲');
INSERT INTO `tp_weather` VALUES ('1071', '101161208', '夏河');
INSERT INTO `tp_weather` VALUES ('1072', '101161301', '白银');
INSERT INTO `tp_weather` VALUES ('1073', '101161302', '靖远');
INSERT INTO `tp_weather` VALUES ('1074', '101161303', '会宁');
INSERT INTO `tp_weather` VALUES ('1075', '101161304', '平川');
INSERT INTO `tp_weather` VALUES ('1076', '101161305', '景泰');
INSERT INTO `tp_weather` VALUES ('1077', '101161401', '嘉峪关');
INSERT INTO `tp_weather` VALUES ('1078', '101170101', '银川');
INSERT INTO `tp_weather` VALUES ('1079', '101170102', '永宁');
INSERT INTO `tp_weather` VALUES ('1080', '101170103', '灵武');
INSERT INTO `tp_weather` VALUES ('1081', '101170104', '贺兰');
INSERT INTO `tp_weather` VALUES ('1082', '101170201', '石嘴山');
INSERT INTO `tp_weather` VALUES ('1083', '101170203', '平罗');
INSERT INTO `tp_weather` VALUES ('1084', '101170301', '吴忠');
INSERT INTO `tp_weather` VALUES ('1085', '101170302', '同心');
INSERT INTO `tp_weather` VALUES ('1086', '101170303', '盐池');
INSERT INTO `tp_weather` VALUES ('1087', '101170306', '青铜峡');
INSERT INTO `tp_weather` VALUES ('1088', '101170401', '固原');
INSERT INTO `tp_weather` VALUES ('1089', '101170402', '西吉');
INSERT INTO `tp_weather` VALUES ('1090', '101170403', '隆德');
INSERT INTO `tp_weather` VALUES ('1091', '101170404', '泾源');
INSERT INTO `tp_weather` VALUES ('1092', '101170406', '彭阳');
INSERT INTO `tp_weather` VALUES ('1093', '101170501', '中卫');
INSERT INTO `tp_weather` VALUES ('1094', '101170502', '中宁');
INSERT INTO `tp_weather` VALUES ('1095', '101170504', '海原');
INSERT INTO `tp_weather` VALUES ('1096', '101180101', '郑州');
INSERT INTO `tp_weather` VALUES ('1097', '101180102', '巩义');
INSERT INTO `tp_weather` VALUES ('1098', '101180103', '荥阳');
INSERT INTO `tp_weather` VALUES ('1099', '101180104', '登封');
INSERT INTO `tp_weather` VALUES ('1100', '101180105', '新密');
INSERT INTO `tp_weather` VALUES ('1101', '101180106', '新郑');
INSERT INTO `tp_weather` VALUES ('1102', '101180107', '中牟');
INSERT INTO `tp_weather` VALUES ('1103', '101180108', '上街');
INSERT INTO `tp_weather` VALUES ('1104', '101180201', '安阳');
INSERT INTO `tp_weather` VALUES ('1105', '101180202', '汤阴');
INSERT INTO `tp_weather` VALUES ('1106', '101180203', '滑县');
INSERT INTO `tp_weather` VALUES ('1107', '101180204', '内黄');
INSERT INTO `tp_weather` VALUES ('1108', '101180205', '林州');
INSERT INTO `tp_weather` VALUES ('1109', '101180301', '新乡');
INSERT INTO `tp_weather` VALUES ('1110', '101180302', '获嘉');
INSERT INTO `tp_weather` VALUES ('1111', '101180303', '原阳');
INSERT INTO `tp_weather` VALUES ('1112', '101180304', '辉县');
INSERT INTO `tp_weather` VALUES ('1113', '101180305', '卫辉');
INSERT INTO `tp_weather` VALUES ('1114', '101180306', '延津');
INSERT INTO `tp_weather` VALUES ('1115', '101180307', '封丘');
INSERT INTO `tp_weather` VALUES ('1116', '101180308', '长垣');
INSERT INTO `tp_weather` VALUES ('1117', '101180401', '许昌');
INSERT INTO `tp_weather` VALUES ('1118', '101180402', '鄢陵');
INSERT INTO `tp_weather` VALUES ('1119', '101180403', '襄城');
INSERT INTO `tp_weather` VALUES ('1120', '101180404', '长葛');
INSERT INTO `tp_weather` VALUES ('1121', '101180405', '禹州');
INSERT INTO `tp_weather` VALUES ('1122', '101180501', '平顶山');
INSERT INTO `tp_weather` VALUES ('1123', '101180502', '郏县');
INSERT INTO `tp_weather` VALUES ('1124', '101180503', '宝丰');
INSERT INTO `tp_weather` VALUES ('1125', '101180504', '汝州');
INSERT INTO `tp_weather` VALUES ('1126', '101180505', '叶县');
INSERT INTO `tp_weather` VALUES ('1127', '101180506', '舞钢');
INSERT INTO `tp_weather` VALUES ('1128', '101180507', '鲁山');
INSERT INTO `tp_weather` VALUES ('1129', '101180508', '石龙');
INSERT INTO `tp_weather` VALUES ('1130', '101180601', '信阳');
INSERT INTO `tp_weather` VALUES ('1131', '101180602', '息县');
INSERT INTO `tp_weather` VALUES ('1132', '101180603', '罗山');
INSERT INTO `tp_weather` VALUES ('1133', '101180604', '光山');
INSERT INTO `tp_weather` VALUES ('1134', '101180605', '新县');
INSERT INTO `tp_weather` VALUES ('1135', '101180606', '淮滨');
INSERT INTO `tp_weather` VALUES ('1136', '101180607', '潢川');
INSERT INTO `tp_weather` VALUES ('1137', '101180608', '固始');
INSERT INTO `tp_weather` VALUES ('1138', '101180609', '商城');
INSERT INTO `tp_weather` VALUES ('1139', '101180701', '南阳');
INSERT INTO `tp_weather` VALUES ('1140', '101180702', '南召');
INSERT INTO `tp_weather` VALUES ('1141', '101180703', '方城');
INSERT INTO `tp_weather` VALUES ('1142', '101180704', '社旗');
INSERT INTO `tp_weather` VALUES ('1143', '101180705', '西峡');
INSERT INTO `tp_weather` VALUES ('1144', '101180706', '内乡');
INSERT INTO `tp_weather` VALUES ('1145', '101180707', '镇平');
INSERT INTO `tp_weather` VALUES ('1146', '101180708', '淅川');
INSERT INTO `tp_weather` VALUES ('1147', '101180709', '新野');
INSERT INTO `tp_weather` VALUES ('1148', '101180710', '唐河');
INSERT INTO `tp_weather` VALUES ('1149', '101180711', '邓州');
INSERT INTO `tp_weather` VALUES ('1150', '101180712', '桐柏');
INSERT INTO `tp_weather` VALUES ('1151', '101180801', '开封');
INSERT INTO `tp_weather` VALUES ('1152', '101180802', '杞县');
INSERT INTO `tp_weather` VALUES ('1153', '101180803', '尉氏');
INSERT INTO `tp_weather` VALUES ('1154', '101180804', '通许');
INSERT INTO `tp_weather` VALUES ('1155', '101180805', '兰考');
INSERT INTO `tp_weather` VALUES ('1156', '101180901', '洛阳');
INSERT INTO `tp_weather` VALUES ('1157', '101180902', '新安');
INSERT INTO `tp_weather` VALUES ('1158', '101180903', '孟津');
INSERT INTO `tp_weather` VALUES ('1159', '101180904', '宜阳');
INSERT INTO `tp_weather` VALUES ('1160', '101180905', '洛宁');
INSERT INTO `tp_weather` VALUES ('1161', '101180906', '伊川');
INSERT INTO `tp_weather` VALUES ('1162', '101180907', '嵩县');
INSERT INTO `tp_weather` VALUES ('1163', '101180908', '偃师');
INSERT INTO `tp_weather` VALUES ('1164', '101180909', '栾川');
INSERT INTO `tp_weather` VALUES ('1165', '101180910', '汝阳');
INSERT INTO `tp_weather` VALUES ('1166', '101180911', '吉利');
INSERT INTO `tp_weather` VALUES ('1167', '101181001', '商丘');
INSERT INTO `tp_weather` VALUES ('1168', '101181003', '睢县');
INSERT INTO `tp_weather` VALUES ('1169', '101181004', '民权');
INSERT INTO `tp_weather` VALUES ('1170', '101181005', '虞城');
INSERT INTO `tp_weather` VALUES ('1171', '101181006', '柘城');
INSERT INTO `tp_weather` VALUES ('1172', '101181007', '宁陵');
INSERT INTO `tp_weather` VALUES ('1173', '101181008', '夏邑');
INSERT INTO `tp_weather` VALUES ('1174', '101181009', '永城');
INSERT INTO `tp_weather` VALUES ('1175', '101181101', '焦作');
INSERT INTO `tp_weather` VALUES ('1176', '101181102', '修武');
INSERT INTO `tp_weather` VALUES ('1177', '101181103', '武陟');
INSERT INTO `tp_weather` VALUES ('1178', '101181104', '沁阳');
INSERT INTO `tp_weather` VALUES ('1179', '101181106', '博爱');
INSERT INTO `tp_weather` VALUES ('1180', '101181107', '温县');
INSERT INTO `tp_weather` VALUES ('1181', '101181108', '孟州');
INSERT INTO `tp_weather` VALUES ('1182', '101181201', '鹤壁');
INSERT INTO `tp_weather` VALUES ('1183', '101181202', '浚县');
INSERT INTO `tp_weather` VALUES ('1184', '101181203', '淇县');
INSERT INTO `tp_weather` VALUES ('1185', '101181301', '濮阳');
INSERT INTO `tp_weather` VALUES ('1186', '101181302', '台前');
INSERT INTO `tp_weather` VALUES ('1187', '101181303', '南乐');
INSERT INTO `tp_weather` VALUES ('1188', '101181304', '清丰');
INSERT INTO `tp_weather` VALUES ('1189', '101181305', '范县');
INSERT INTO `tp_weather` VALUES ('1190', '101181401', '周口');
INSERT INTO `tp_weather` VALUES ('1191', '101181402', '扶沟');
INSERT INTO `tp_weather` VALUES ('1192', '101181403', '太康');
INSERT INTO `tp_weather` VALUES ('1193', '101181404', '淮阳');
INSERT INTO `tp_weather` VALUES ('1194', '101181405', '西华');
INSERT INTO `tp_weather` VALUES ('1195', '101181406', '商水');
INSERT INTO `tp_weather` VALUES ('1196', '101181407', '项城');
INSERT INTO `tp_weather` VALUES ('1197', '101181408', '郸城');
INSERT INTO `tp_weather` VALUES ('1198', '101181409', '鹿邑');
INSERT INTO `tp_weather` VALUES ('1199', '101181410', '沈丘');
INSERT INTO `tp_weather` VALUES ('1200', '101181501', '漯河');
INSERT INTO `tp_weather` VALUES ('1201', '101181502', '临颍');
INSERT INTO `tp_weather` VALUES ('1202', '101181503', '舞阳');
INSERT INTO `tp_weather` VALUES ('1203', '101181504', '临颖');
INSERT INTO `tp_weather` VALUES ('1204', '101181601', '驻马店');
INSERT INTO `tp_weather` VALUES ('1205', '101181602', '西平');
INSERT INTO `tp_weather` VALUES ('1206', '101181603', '遂平');
INSERT INTO `tp_weather` VALUES ('1207', '101181604', '上蔡');
INSERT INTO `tp_weather` VALUES ('1208', '101181605', '汝南');
INSERT INTO `tp_weather` VALUES ('1209', '101181606', '泌阳');
INSERT INTO `tp_weather` VALUES ('1210', '101181607', '平舆');
INSERT INTO `tp_weather` VALUES ('1211', '101181608', '新蔡');
INSERT INTO `tp_weather` VALUES ('1212', '101181609', '确山');
INSERT INTO `tp_weather` VALUES ('1213', '101181610', '正阳');
INSERT INTO `tp_weather` VALUES ('1214', '101181701', '三门峡');
INSERT INTO `tp_weather` VALUES ('1215', '101181702', '灵宝');
INSERT INTO `tp_weather` VALUES ('1216', '101181703', '渑池');
INSERT INTO `tp_weather` VALUES ('1217', '101181704', '卢氏');
INSERT INTO `tp_weather` VALUES ('1218', '101181705', '义马');
INSERT INTO `tp_weather` VALUES ('1219', '101181706', '陕县');
INSERT INTO `tp_weather` VALUES ('1220', '101181801', '济源');
INSERT INTO `tp_weather` VALUES ('1221', '101190101', '南京');
INSERT INTO `tp_weather` VALUES ('1222', '101190102', '溧水');
INSERT INTO `tp_weather` VALUES ('1223', '101190103', '高淳');
INSERT INTO `tp_weather` VALUES ('1224', '101190104', '江宁');
INSERT INTO `tp_weather` VALUES ('1225', '101190105', '六合');
INSERT INTO `tp_weather` VALUES ('1226', '101190107', '浦口');
INSERT INTO `tp_weather` VALUES ('1227', '101190201', '无锡');
INSERT INTO `tp_weather` VALUES ('1228', '101190202', '江阴');
INSERT INTO `tp_weather` VALUES ('1229', '101190203', '宜兴');
INSERT INTO `tp_weather` VALUES ('1230', '101190204', '锡山');
INSERT INTO `tp_weather` VALUES ('1231', '101190301', '镇江');
INSERT INTO `tp_weather` VALUES ('1232', '101190302', '丹阳');
INSERT INTO `tp_weather` VALUES ('1233', '101190303', '扬中');
INSERT INTO `tp_weather` VALUES ('1234', '101190304', '句容');
INSERT INTO `tp_weather` VALUES ('1235', '101190305', '丹徒');
INSERT INTO `tp_weather` VALUES ('1236', '101190401', '苏州');
INSERT INTO `tp_weather` VALUES ('1237', '101190402', '常熟');
INSERT INTO `tp_weather` VALUES ('1238', '101190403', '张家港');
INSERT INTO `tp_weather` VALUES ('1239', '101190404', '昆山');
INSERT INTO `tp_weather` VALUES ('1240', '101190405', '吴中');
INSERT INTO `tp_weather` VALUES ('1241', '101190407', '吴江');
INSERT INTO `tp_weather` VALUES ('1242', '101190408', '太仓');
INSERT INTO `tp_weather` VALUES ('1243', '101190501', '南通');
INSERT INTO `tp_weather` VALUES ('1244', '101190502', '海安');
INSERT INTO `tp_weather` VALUES ('1245', '101190503', '如皋');
INSERT INTO `tp_weather` VALUES ('1246', '101190504', '如东');
INSERT INTO `tp_weather` VALUES ('1247', '101190507', '启东');
INSERT INTO `tp_weather` VALUES ('1248', '101190508', '海门');
INSERT INTO `tp_weather` VALUES ('1249', '101190601', '扬州');
INSERT INTO `tp_weather` VALUES ('1250', '101190602', '宝应');
INSERT INTO `tp_weather` VALUES ('1251', '101190603', '仪征');
INSERT INTO `tp_weather` VALUES ('1252', '101190604', '高邮');
INSERT INTO `tp_weather` VALUES ('1253', '101190605', '江都');
INSERT INTO `tp_weather` VALUES ('1254', '101190606', '邗江');
INSERT INTO `tp_weather` VALUES ('1255', '101190701', '盐城');
INSERT INTO `tp_weather` VALUES ('1256', '101190702', '响水');
INSERT INTO `tp_weather` VALUES ('1257', '101190703', '滨海');
INSERT INTO `tp_weather` VALUES ('1258', '101190704', '阜宁');
INSERT INTO `tp_weather` VALUES ('1259', '101190705', '射阳');
INSERT INTO `tp_weather` VALUES ('1260', '101190706', '建湖');
INSERT INTO `tp_weather` VALUES ('1261', '101190707', '东台');
INSERT INTO `tp_weather` VALUES ('1262', '101190708', '大丰');
INSERT INTO `tp_weather` VALUES ('1263', '101190709', '盐都');
INSERT INTO `tp_weather` VALUES ('1264', '101190801', '徐州');
INSERT INTO `tp_weather` VALUES ('1265', '101190802', '铜山');
INSERT INTO `tp_weather` VALUES ('1266', '101190803', '丰县');
INSERT INTO `tp_weather` VALUES ('1267', '101190804', '沛县');
INSERT INTO `tp_weather` VALUES ('1268', '101190805', '邳州');
INSERT INTO `tp_weather` VALUES ('1269', '101190806', '睢宁');
INSERT INTO `tp_weather` VALUES ('1270', '101190807', '新沂');
INSERT INTO `tp_weather` VALUES ('1271', '101190901', '淮安');
INSERT INTO `tp_weather` VALUES ('1272', '101190902', '金湖');
INSERT INTO `tp_weather` VALUES ('1273', '101190903', '盱眙');
INSERT INTO `tp_weather` VALUES ('1274', '101190904', '洪泽');
INSERT INTO `tp_weather` VALUES ('1275', '101190905', '涟水');
INSERT INTO `tp_weather` VALUES ('1276', '101191001', '连云港');
INSERT INTO `tp_weather` VALUES ('1277', '101191002', '东海');
INSERT INTO `tp_weather` VALUES ('1278', '101191003', '赣榆');
INSERT INTO `tp_weather` VALUES ('1279', '101191004', '灌云');
INSERT INTO `tp_weather` VALUES ('1280', '101191005', '灌南');
INSERT INTO `tp_weather` VALUES ('1281', '101191101', '常州');
INSERT INTO `tp_weather` VALUES ('1282', '101191102', '溧阳');
INSERT INTO `tp_weather` VALUES ('1283', '101191103', '金坛');
INSERT INTO `tp_weather` VALUES ('1284', '101191104', '武进');
INSERT INTO `tp_weather` VALUES ('1285', '101191201', '泰州');
INSERT INTO `tp_weather` VALUES ('1286', '101191202', '兴化');
INSERT INTO `tp_weather` VALUES ('1287', '101191203', '泰兴');
INSERT INTO `tp_weather` VALUES ('1288', '101191204', '姜堰');
INSERT INTO `tp_weather` VALUES ('1289', '101191205', '靖江');
INSERT INTO `tp_weather` VALUES ('1290', '101191301', '宿迁');
INSERT INTO `tp_weather` VALUES ('1291', '101191302', '沭阳');
INSERT INTO `tp_weather` VALUES ('1292', '101191303', '泗阳');
INSERT INTO `tp_weather` VALUES ('1293', '101191304', '泗洪');
INSERT INTO `tp_weather` VALUES ('1294', '101191305', '宿豫');
INSERT INTO `tp_weather` VALUES ('1295', '101200101', '武汉');
INSERT INTO `tp_weather` VALUES ('1296', '101200102', '蔡甸');
INSERT INTO `tp_weather` VALUES ('1297', '101200103', '黄陂');
INSERT INTO `tp_weather` VALUES ('1298', '101200104', '新洲');
INSERT INTO `tp_weather` VALUES ('1299', '101200105', '江夏');
INSERT INTO `tp_weather` VALUES ('1300', '101200106', '东西湖');
INSERT INTO `tp_weather` VALUES ('1301', '101200201', '襄阳');
INSERT INTO `tp_weather` VALUES ('1302', '101200202', '襄州');
INSERT INTO `tp_weather` VALUES ('1303', '101200203', '保康');
INSERT INTO `tp_weather` VALUES ('1304', '101200204', '南漳');
INSERT INTO `tp_weather` VALUES ('1305', '101200205', '宜城');
INSERT INTO `tp_weather` VALUES ('1306', '101200206', '老河口');
INSERT INTO `tp_weather` VALUES ('1307', '101200207', '谷城');
INSERT INTO `tp_weather` VALUES ('1308', '101200208', '枣阳');
INSERT INTO `tp_weather` VALUES ('1309', '101200301', '鄂州');
INSERT INTO `tp_weather` VALUES ('1310', '101200302', '梁子湖');
INSERT INTO `tp_weather` VALUES ('1311', '101200401', '孝感');
INSERT INTO `tp_weather` VALUES ('1312', '101200402', '安陆');
INSERT INTO `tp_weather` VALUES ('1313', '101200403', '云梦');
INSERT INTO `tp_weather` VALUES ('1314', '101200404', '大悟');
INSERT INTO `tp_weather` VALUES ('1315', '101200405', '应城');
INSERT INTO `tp_weather` VALUES ('1316', '101200406', '汉川');
INSERT INTO `tp_weather` VALUES ('1317', '101200407', '孝昌');
INSERT INTO `tp_weather` VALUES ('1318', '101200501', '黄冈');
INSERT INTO `tp_weather` VALUES ('1319', '101200502', '红安');
INSERT INTO `tp_weather` VALUES ('1320', '101200503', '麻城');
INSERT INTO `tp_weather` VALUES ('1321', '101200504', '罗田');
INSERT INTO `tp_weather` VALUES ('1322', '101200505', '英山');
INSERT INTO `tp_weather` VALUES ('1323', '101200506', '浠水');
INSERT INTO `tp_weather` VALUES ('1324', '101200507', '蕲春');
INSERT INTO `tp_weather` VALUES ('1325', '101200508', '黄梅');
INSERT INTO `tp_weather` VALUES ('1326', '101200509', '武穴');
INSERT INTO `tp_weather` VALUES ('1327', '101200510', '团风');
INSERT INTO `tp_weather` VALUES ('1328', '101200601', '黄石');
INSERT INTO `tp_weather` VALUES ('1329', '101200602', '大冶');
INSERT INTO `tp_weather` VALUES ('1330', '101200603', '阳新');
INSERT INTO `tp_weather` VALUES ('1331', '101200604', '铁山');
INSERT INTO `tp_weather` VALUES ('1332', '101200605', '下陆');
INSERT INTO `tp_weather` VALUES ('1333', '101200606', '西塞山');
INSERT INTO `tp_weather` VALUES ('1334', '101200701', '咸宁');
INSERT INTO `tp_weather` VALUES ('1335', '101200702', '赤壁');
INSERT INTO `tp_weather` VALUES ('1336', '101200703', '嘉鱼');
INSERT INTO `tp_weather` VALUES ('1337', '101200704', '崇阳');
INSERT INTO `tp_weather` VALUES ('1338', '101200705', '通城');
INSERT INTO `tp_weather` VALUES ('1339', '101200706', '通山');
INSERT INTO `tp_weather` VALUES ('1340', '101200801', '荆州');
INSERT INTO `tp_weather` VALUES ('1341', '101200802', '江陵');
INSERT INTO `tp_weather` VALUES ('1342', '101200803', '公安');
INSERT INTO `tp_weather` VALUES ('1343', '101200804', '石首');
INSERT INTO `tp_weather` VALUES ('1344', '101200805', '监利');
INSERT INTO `tp_weather` VALUES ('1345', '101200806', '洪湖');
INSERT INTO `tp_weather` VALUES ('1346', '101200807', '松滋');
INSERT INTO `tp_weather` VALUES ('1347', '101200901', '宜昌');
INSERT INTO `tp_weather` VALUES ('1348', '101200902', '远安');
INSERT INTO `tp_weather` VALUES ('1349', '101200903', '秭归');
INSERT INTO `tp_weather` VALUES ('1350', '101200904', '兴山');
INSERT INTO `tp_weather` VALUES ('1351', '101200906', '五峰');
INSERT INTO `tp_weather` VALUES ('1352', '101200907', '当阳');
INSERT INTO `tp_weather` VALUES ('1353', '101200908', '长阳');
INSERT INTO `tp_weather` VALUES ('1354', '101200909', '宜都');
INSERT INTO `tp_weather` VALUES ('1355', '101200910', '枝江');
INSERT INTO `tp_weather` VALUES ('1356', '101201001', '恩施');
INSERT INTO `tp_weather` VALUES ('1357', '101201002', '利川');
INSERT INTO `tp_weather` VALUES ('1358', '101201003', '建始');
INSERT INTO `tp_weather` VALUES ('1359', '101201004', '咸丰');
INSERT INTO `tp_weather` VALUES ('1360', '101201005', '宣恩');
INSERT INTO `tp_weather` VALUES ('1361', '101201006', '鹤峰');
INSERT INTO `tp_weather` VALUES ('1362', '101201007', '来凤');
INSERT INTO `tp_weather` VALUES ('1363', '101201008', '巴东');
INSERT INTO `tp_weather` VALUES ('1364', '101201101', '十堰');
INSERT INTO `tp_weather` VALUES ('1365', '101201102', '竹溪');
INSERT INTO `tp_weather` VALUES ('1366', '101201103', '郧西');
INSERT INTO `tp_weather` VALUES ('1367', '101201104', '郧县');
INSERT INTO `tp_weather` VALUES ('1368', '101201105', '竹山');
INSERT INTO `tp_weather` VALUES ('1369', '101201106', '房县');
INSERT INTO `tp_weather` VALUES ('1370', '101201107', '丹江口');
INSERT INTO `tp_weather` VALUES ('1371', '101201108', '茅箭');
INSERT INTO `tp_weather` VALUES ('1372', '101201109', '张湾');
INSERT INTO `tp_weather` VALUES ('1373', '101201201', '神农架');
INSERT INTO `tp_weather` VALUES ('1374', '101201301', '随州');
INSERT INTO `tp_weather` VALUES ('1375', '101201302', '广水');
INSERT INTO `tp_weather` VALUES ('1376', '101201401', '荆门');
INSERT INTO `tp_weather` VALUES ('1377', '101201402', '钟祥');
INSERT INTO `tp_weather` VALUES ('1378', '101201403', '京山');
INSERT INTO `tp_weather` VALUES ('1379', '101201404', '掇刀');
INSERT INTO `tp_weather` VALUES ('1380', '101201405', '沙洋');
INSERT INTO `tp_weather` VALUES ('1381', '101201406', '沙市');
INSERT INTO `tp_weather` VALUES ('1382', '101201501', '天门');
INSERT INTO `tp_weather` VALUES ('1383', '101201601', '仙桃');
INSERT INTO `tp_weather` VALUES ('1384', '101201701', '潜江');
INSERT INTO `tp_weather` VALUES ('1385', '101210101', '杭州');
INSERT INTO `tp_weather` VALUES ('1386', '101210102', '萧山');
INSERT INTO `tp_weather` VALUES ('1387', '101210103', '桐庐');
INSERT INTO `tp_weather` VALUES ('1388', '101210104', '淳安');
INSERT INTO `tp_weather` VALUES ('1389', '101210105', '建德');
INSERT INTO `tp_weather` VALUES ('1390', '101210106', '余杭');
INSERT INTO `tp_weather` VALUES ('1391', '101210107', '临安');
INSERT INTO `tp_weather` VALUES ('1392', '101210108', '富阳');
INSERT INTO `tp_weather` VALUES ('1393', '101210201', '湖州');
INSERT INTO `tp_weather` VALUES ('1394', '101210202', '长兴');
INSERT INTO `tp_weather` VALUES ('1395', '101210203', '安吉');
INSERT INTO `tp_weather` VALUES ('1396', '101210204', '德清');
INSERT INTO `tp_weather` VALUES ('1397', '101210301', '嘉兴');
INSERT INTO `tp_weather` VALUES ('1398', '101210302', '嘉善');
INSERT INTO `tp_weather` VALUES ('1399', '101210303', '海宁');
INSERT INTO `tp_weather` VALUES ('1400', '101210304', '桐乡');
INSERT INTO `tp_weather` VALUES ('1401', '101210305', '平湖');
INSERT INTO `tp_weather` VALUES ('1402', '101210306', '海盐');
INSERT INTO `tp_weather` VALUES ('1403', '101210401', '宁波');
INSERT INTO `tp_weather` VALUES ('1404', '101210403', '慈溪');
INSERT INTO `tp_weather` VALUES ('1405', '101210404', '余姚');
INSERT INTO `tp_weather` VALUES ('1406', '101210405', '奉化');
INSERT INTO `tp_weather` VALUES ('1407', '101210406', '象山');
INSERT INTO `tp_weather` VALUES ('1408', '101210408', '宁海');
INSERT INTO `tp_weather` VALUES ('1409', '101210410', '北仑');
INSERT INTO `tp_weather` VALUES ('1410', '101210411', '鄞州');
INSERT INTO `tp_weather` VALUES ('1411', '101210501', '绍兴');
INSERT INTO `tp_weather` VALUES ('1412', '101210502', '诸暨');
INSERT INTO `tp_weather` VALUES ('1413', '101210503', '上虞');
INSERT INTO `tp_weather` VALUES ('1414', '101210504', '新昌');
INSERT INTO `tp_weather` VALUES ('1415', '101210505', '嵊州');
INSERT INTO `tp_weather` VALUES ('1416', '101210601', '台州');
INSERT INTO `tp_weather` VALUES ('1417', '101210603', '玉环');
INSERT INTO `tp_weather` VALUES ('1418', '101210604', '三门');
INSERT INTO `tp_weather` VALUES ('1419', '101210605', '天台');
INSERT INTO `tp_weather` VALUES ('1420', '101210606', '仙居');
INSERT INTO `tp_weather` VALUES ('1421', '101210607', '温岭');
INSERT INTO `tp_weather` VALUES ('1422', '101210610', '临海');
INSERT INTO `tp_weather` VALUES ('1423', '101210701', '温州');
INSERT INTO `tp_weather` VALUES ('1424', '101210702', '泰顺');
INSERT INTO `tp_weather` VALUES ('1425', '101210703', '文成');
INSERT INTO `tp_weather` VALUES ('1426', '101210704', '平阳');
INSERT INTO `tp_weather` VALUES ('1427', '101210705', '瑞安');
INSERT INTO `tp_weather` VALUES ('1428', '101210706', '洞头');
INSERT INTO `tp_weather` VALUES ('1429', '101210707', '乐清');
INSERT INTO `tp_weather` VALUES ('1430', '101210708', '永嘉');
INSERT INTO `tp_weather` VALUES ('1431', '101210709', '苍南');
INSERT INTO `tp_weather` VALUES ('1432', '101210801', '丽水');
INSERT INTO `tp_weather` VALUES ('1433', '101210802', '遂昌');
INSERT INTO `tp_weather` VALUES ('1434', '101210803', '龙泉');
INSERT INTO `tp_weather` VALUES ('1435', '101210804', '缙云');
INSERT INTO `tp_weather` VALUES ('1436', '101210805', '青田');
INSERT INTO `tp_weather` VALUES ('1437', '101210806', '云和');
INSERT INTO `tp_weather` VALUES ('1438', '101210807', '庆元');
INSERT INTO `tp_weather` VALUES ('1439', '101210808', '松阳');
INSERT INTO `tp_weather` VALUES ('1440', '101210809', '景宁');
INSERT INTO `tp_weather` VALUES ('1441', '101210901', '金华');
INSERT INTO `tp_weather` VALUES ('1442', '101210902', '浦江');
INSERT INTO `tp_weather` VALUES ('1443', '101210903', '兰溪');
INSERT INTO `tp_weather` VALUES ('1444', '101210904', '义乌');
INSERT INTO `tp_weather` VALUES ('1445', '101210905', '东阳');
INSERT INTO `tp_weather` VALUES ('1446', '101210906', '武义');
INSERT INTO `tp_weather` VALUES ('1447', '101210907', '永康');
INSERT INTO `tp_weather` VALUES ('1448', '101210908', '磐安');
INSERT INTO `tp_weather` VALUES ('1449', '101211001', '衢州');
INSERT INTO `tp_weather` VALUES ('1450', '101211002', '常山');
INSERT INTO `tp_weather` VALUES ('1451', '101211003', '开化');
INSERT INTO `tp_weather` VALUES ('1452', '101211004', '龙游');
INSERT INTO `tp_weather` VALUES ('1453', '101211005', '江山');
INSERT INTO `tp_weather` VALUES ('1454', '101211101', '舟山');
INSERT INTO `tp_weather` VALUES ('1455', '101211102', '嵊泗');
INSERT INTO `tp_weather` VALUES ('1456', '101211104', '岱山');
INSERT INTO `tp_weather` VALUES ('1457', '101220101', '合肥');
INSERT INTO `tp_weather` VALUES ('1458', '101220102', '长丰');
INSERT INTO `tp_weather` VALUES ('1459', '101220103', '肥东');
INSERT INTO `tp_weather` VALUES ('1460', '101220104', '肥西');
INSERT INTO `tp_weather` VALUES ('1461', '101220201', '蚌埠');
INSERT INTO `tp_weather` VALUES ('1462', '101220202', '怀远');
INSERT INTO `tp_weather` VALUES ('1463', '101220203', '固镇');
INSERT INTO `tp_weather` VALUES ('1464', '101220204', '五河');
INSERT INTO `tp_weather` VALUES ('1465', '101220301', '芜湖');
INSERT INTO `tp_weather` VALUES ('1466', '101220302', '繁昌');
INSERT INTO `tp_weather` VALUES ('1467', '101220304', '南陵');
INSERT INTO `tp_weather` VALUES ('1468', '101220401', '淮南');
INSERT INTO `tp_weather` VALUES ('1469', '101220402', '凤台');
INSERT INTO `tp_weather` VALUES ('1470', '101220403', '潘集');
INSERT INTO `tp_weather` VALUES ('1471', '101220501', '马鞍山');
INSERT INTO `tp_weather` VALUES ('1472', '101220502', '当涂');
INSERT INTO `tp_weather` VALUES ('1473', '101220601', '安庆');
INSERT INTO `tp_weather` VALUES ('1474', '101220602', '枞阳');
INSERT INTO `tp_weather` VALUES ('1475', '101220603', '太湖');
INSERT INTO `tp_weather` VALUES ('1476', '101220604', '潜山');
INSERT INTO `tp_weather` VALUES ('1477', '101220605', '怀宁');
INSERT INTO `tp_weather` VALUES ('1478', '101220606', '宿松');
INSERT INTO `tp_weather` VALUES ('1479', '101220607', '望江');
INSERT INTO `tp_weather` VALUES ('1480', '101220608', '岳西');
INSERT INTO `tp_weather` VALUES ('1481', '101220609', '桐城');
INSERT INTO `tp_weather` VALUES ('1482', '101220701', '宿州');
INSERT INTO `tp_weather` VALUES ('1483', '101220702', '砀山');
INSERT INTO `tp_weather` VALUES ('1484', '101220703', '灵璧');
INSERT INTO `tp_weather` VALUES ('1485', '101220704', '泗县');
INSERT INTO `tp_weather` VALUES ('1486', '101220705', '萧县');
INSERT INTO `tp_weather` VALUES ('1487', '101220801', '阜阳');
INSERT INTO `tp_weather` VALUES ('1488', '101220802', '阜南');
INSERT INTO `tp_weather` VALUES ('1489', '101220803', '颍上');
INSERT INTO `tp_weather` VALUES ('1490', '101220804', '临泉');
INSERT INTO `tp_weather` VALUES ('1491', '101220805', '界首');
INSERT INTO `tp_weather` VALUES ('1492', '101220806', '太和');
INSERT INTO `tp_weather` VALUES ('1493', '101220901', '亳州');
INSERT INTO `tp_weather` VALUES ('1494', '101220902', '涡阳');
INSERT INTO `tp_weather` VALUES ('1495', '101220903', '利辛');
INSERT INTO `tp_weather` VALUES ('1496', '101220904', '蒙城');
INSERT INTO `tp_weather` VALUES ('1497', '101221001', '黄山');
INSERT INTO `tp_weather` VALUES ('1498', '101221004', '祁门');
INSERT INTO `tp_weather` VALUES ('1499', '101221005', '黟县');
INSERT INTO `tp_weather` VALUES ('1500', '101221006', '歙县');
INSERT INTO `tp_weather` VALUES ('1501', '101221007', '休宁');
INSERT INTO `tp_weather` VALUES ('1502', '101221101', '滁州');
INSERT INTO `tp_weather` VALUES ('1503', '101221102', '凤阳');
INSERT INTO `tp_weather` VALUES ('1504', '101221103', '明光');
INSERT INTO `tp_weather` VALUES ('1505', '101221104', '定远');
INSERT INTO `tp_weather` VALUES ('1506', '101221105', '全椒');
INSERT INTO `tp_weather` VALUES ('1507', '101221106', '来安');
INSERT INTO `tp_weather` VALUES ('1508', '101221107', '天长');
INSERT INTO `tp_weather` VALUES ('1509', '101221201', '淮北');
INSERT INTO `tp_weather` VALUES ('1510', '101221202', '濉溪');
INSERT INTO `tp_weather` VALUES ('1511', '101221301', '铜陵');
INSERT INTO `tp_weather` VALUES ('1512', '101221401', '宣城');
INSERT INTO `tp_weather` VALUES ('1513', '101221402', '泾县');
INSERT INTO `tp_weather` VALUES ('1514', '101221403', '旌德');
INSERT INTO `tp_weather` VALUES ('1515', '101221404', '宁国');
INSERT INTO `tp_weather` VALUES ('1516', '101221405', '绩溪');
INSERT INTO `tp_weather` VALUES ('1517', '101221406', '广德');
INSERT INTO `tp_weather` VALUES ('1518', '101221407', '郎溪');
INSERT INTO `tp_weather` VALUES ('1519', '101221501', '六安');
INSERT INTO `tp_weather` VALUES ('1520', '101221502', '霍邱');
INSERT INTO `tp_weather` VALUES ('1521', '101221503', '寿县');
INSERT INTO `tp_weather` VALUES ('1522', '101221505', '金寨');
INSERT INTO `tp_weather` VALUES ('1523', '101221506', '霍山');
INSERT INTO `tp_weather` VALUES ('1524', '101221507', '舒城');
INSERT INTO `tp_weather` VALUES ('1525', '101221601', '巢湖');
INSERT INTO `tp_weather` VALUES ('1526', '101221602', '庐江');
INSERT INTO `tp_weather` VALUES ('1527', '101221603', '无为');
INSERT INTO `tp_weather` VALUES ('1528', '101221604', '含山');
INSERT INTO `tp_weather` VALUES ('1529', '101221605', '和县');
INSERT INTO `tp_weather` VALUES ('1530', '101221701', '池州');
INSERT INTO `tp_weather` VALUES ('1531', '101221702', '东至');
INSERT INTO `tp_weather` VALUES ('1532', '101221703', '青阳');
INSERT INTO `tp_weather` VALUES ('1533', '101221705', '石台');
INSERT INTO `tp_weather` VALUES ('1534', '101230101', '福州');
INSERT INTO `tp_weather` VALUES ('1535', '101230102', '闽清');
INSERT INTO `tp_weather` VALUES ('1536', '101230103', '闽侯');
INSERT INTO `tp_weather` VALUES ('1537', '101230104', '罗源');
INSERT INTO `tp_weather` VALUES ('1538', '101230105', '连江');
INSERT INTO `tp_weather` VALUES ('1539', '101230107', '永泰');
INSERT INTO `tp_weather` VALUES ('1540', '101230108', '平潭');
INSERT INTO `tp_weather` VALUES ('1541', '101230110', '长乐');
INSERT INTO `tp_weather` VALUES ('1542', '101230111', '福清');
INSERT INTO `tp_weather` VALUES ('1543', '101230201', '厦门');
INSERT INTO `tp_weather` VALUES ('1544', '101230301', '宁德');
INSERT INTO `tp_weather` VALUES ('1545', '101230302', '古田');
INSERT INTO `tp_weather` VALUES ('1546', '101230303', '霞浦');
INSERT INTO `tp_weather` VALUES ('1547', '101230304', '寿宁');
INSERT INTO `tp_weather` VALUES ('1548', '101230305', '周宁');
INSERT INTO `tp_weather` VALUES ('1549', '101230306', '福安');
INSERT INTO `tp_weather` VALUES ('1550', '101230307', '柘荣');
INSERT INTO `tp_weather` VALUES ('1551', '101230308', '福鼎');
INSERT INTO `tp_weather` VALUES ('1552', '101230309', '屏南');
INSERT INTO `tp_weather` VALUES ('1553', '101230401', '莆田');
INSERT INTO `tp_weather` VALUES ('1554', '101230402', '仙游');
INSERT INTO `tp_weather` VALUES ('1555', '101230404', '涵江');
INSERT INTO `tp_weather` VALUES ('1556', '101230405', '秀屿');
INSERT INTO `tp_weather` VALUES ('1557', '101230406', '荔城');
INSERT INTO `tp_weather` VALUES ('1558', '101230407', '城厢');
INSERT INTO `tp_weather` VALUES ('1559', '101230501', '泉州');
INSERT INTO `tp_weather` VALUES ('1560', '101230502', '安溪');
INSERT INTO `tp_weather` VALUES ('1561', '101230504', '永春');
INSERT INTO `tp_weather` VALUES ('1562', '101230505', '德化');
INSERT INTO `tp_weather` VALUES ('1563', '101230506', '南安');
INSERT INTO `tp_weather` VALUES ('1564', '101230508', '惠安');
INSERT INTO `tp_weather` VALUES ('1565', '101230509', '晋江');
INSERT INTO `tp_weather` VALUES ('1566', '101230510', '石狮');
INSERT INTO `tp_weather` VALUES ('1567', '101230601', '漳州');
INSERT INTO `tp_weather` VALUES ('1568', '101230602', '长泰');
INSERT INTO `tp_weather` VALUES ('1569', '101230603', '南靖');
INSERT INTO `tp_weather` VALUES ('1570', '101230604', '平和');
INSERT INTO `tp_weather` VALUES ('1571', '101230605', '龙海');
INSERT INTO `tp_weather` VALUES ('1572', '101230606', '漳浦');
INSERT INTO `tp_weather` VALUES ('1573', '101230607', '诏安');
INSERT INTO `tp_weather` VALUES ('1574', '101230609', '云霄');
INSERT INTO `tp_weather` VALUES ('1575', '101230610', '华安');
INSERT INTO `tp_weather` VALUES ('1576', '101230701', '龙岩');
INSERT INTO `tp_weather` VALUES ('1577', '101230702', '长汀');
INSERT INTO `tp_weather` VALUES ('1578', '101230703', '连城');
INSERT INTO `tp_weather` VALUES ('1579', '101230704', '武平');
INSERT INTO `tp_weather` VALUES ('1580', '101230705', '上杭');
INSERT INTO `tp_weather` VALUES ('1581', '101230706', '永定');
INSERT INTO `tp_weather` VALUES ('1582', '101230707', '漳平');
INSERT INTO `tp_weather` VALUES ('1583', '101230801', '三明');
INSERT INTO `tp_weather` VALUES ('1584', '101230802', '宁化');
INSERT INTO `tp_weather` VALUES ('1585', '101230803', '清流');
INSERT INTO `tp_weather` VALUES ('1586', '101230804', '泰宁');
INSERT INTO `tp_weather` VALUES ('1587', '101230805', '将乐');
INSERT INTO `tp_weather` VALUES ('1588', '101230806', '建宁');
INSERT INTO `tp_weather` VALUES ('1589', '101230807', '明溪');
INSERT INTO `tp_weather` VALUES ('1590', '101230808', '沙县');
INSERT INTO `tp_weather` VALUES ('1591', '101230809', '尤溪');
INSERT INTO `tp_weather` VALUES ('1592', '101230810', '永安');
INSERT INTO `tp_weather` VALUES ('1593', '101230811', '大田');
INSERT INTO `tp_weather` VALUES ('1594', '101230901', '南平');
INSERT INTO `tp_weather` VALUES ('1595', '101230902', '顺昌');
INSERT INTO `tp_weather` VALUES ('1596', '101230903', '光泽');
INSERT INTO `tp_weather` VALUES ('1597', '101230904', '邵武');
INSERT INTO `tp_weather` VALUES ('1598', '101230905', '武夷山');
INSERT INTO `tp_weather` VALUES ('1599', '101230906', '浦城');
INSERT INTO `tp_weather` VALUES ('1600', '101230907', '建阳');
INSERT INTO `tp_weather` VALUES ('1601', '101230908', '松溪');
INSERT INTO `tp_weather` VALUES ('1602', '101230909', '政和');
INSERT INTO `tp_weather` VALUES ('1603', '101230910', '建瓯');
INSERT INTO `tp_weather` VALUES ('1604', '101231001', '钓鱼岛');
INSERT INTO `tp_weather` VALUES ('1605', '101240101', '南昌');
INSERT INTO `tp_weather` VALUES ('1606', '101240102', '新建');
INSERT INTO `tp_weather` VALUES ('1607', '101240104', '安义');
INSERT INTO `tp_weather` VALUES ('1608', '101240105', '进贤');
INSERT INTO `tp_weather` VALUES ('1609', '101240201', '九江');
INSERT INTO `tp_weather` VALUES ('1610', '101240202', '瑞昌');
INSERT INTO `tp_weather` VALUES ('1611', '101240204', '武宁');
INSERT INTO `tp_weather` VALUES ('1612', '101240205', '德安');
INSERT INTO `tp_weather` VALUES ('1613', '101240206', '永修');
INSERT INTO `tp_weather` VALUES ('1614', '101240207', '湖口');
INSERT INTO `tp_weather` VALUES ('1615', '101240208', '彭泽');
INSERT INTO `tp_weather` VALUES ('1616', '101240209', '星子');
INSERT INTO `tp_weather` VALUES ('1617', '101240210', '都昌');
INSERT INTO `tp_weather` VALUES ('1618', '101240212', '修水');
INSERT INTO `tp_weather` VALUES ('1619', '101240301', '上饶');
INSERT INTO `tp_weather` VALUES ('1620', '101240302', '鄱阳');
INSERT INTO `tp_weather` VALUES ('1621', '101240303', '婺源');
INSERT INTO `tp_weather` VALUES ('1622', '101240305', '余干');
INSERT INTO `tp_weather` VALUES ('1623', '101240306', '万年');
INSERT INTO `tp_weather` VALUES ('1624', '101240307', '德兴');
INSERT INTO `tp_weather` VALUES ('1625', '101240309', '弋阳');
INSERT INTO `tp_weather` VALUES ('1626', '101240310', '横峰');
INSERT INTO `tp_weather` VALUES ('1627', '101240311', '铅山');
INSERT INTO `tp_weather` VALUES ('1628', '101240312', '玉山');
INSERT INTO `tp_weather` VALUES ('1629', '101240313', '广丰');
INSERT INTO `tp_weather` VALUES ('1630', '101240401', '抚州');
INSERT INTO `tp_weather` VALUES ('1631', '101240402', '广昌');
INSERT INTO `tp_weather` VALUES ('1632', '101240403', '乐安');
INSERT INTO `tp_weather` VALUES ('1633', '101240404', '崇仁');
INSERT INTO `tp_weather` VALUES ('1634', '101240405', '金溪');
INSERT INTO `tp_weather` VALUES ('1635', '101240406', '资溪');
INSERT INTO `tp_weather` VALUES ('1636', '101240407', '宜黄');
INSERT INTO `tp_weather` VALUES ('1637', '101240408', '南城');
INSERT INTO `tp_weather` VALUES ('1638', '101240409', '南丰');
INSERT INTO `tp_weather` VALUES ('1639', '101240410', '黎川');
INSERT INTO `tp_weather` VALUES ('1640', '101240411', '东乡');
INSERT INTO `tp_weather` VALUES ('1641', '101240501', '宜春');
INSERT INTO `tp_weather` VALUES ('1642', '101240502', '铜鼓');
INSERT INTO `tp_weather` VALUES ('1643', '101240503', '宜丰');
INSERT INTO `tp_weather` VALUES ('1644', '101240504', '万载');
INSERT INTO `tp_weather` VALUES ('1645', '101240505', '上高');
INSERT INTO `tp_weather` VALUES ('1646', '101240506', '靖安');
INSERT INTO `tp_weather` VALUES ('1647', '101240507', '奉新');
INSERT INTO `tp_weather` VALUES ('1648', '101240508', '高安');
INSERT INTO `tp_weather` VALUES ('1649', '101240509', '樟树');
INSERT INTO `tp_weather` VALUES ('1650', '101240510', '丰城');
INSERT INTO `tp_weather` VALUES ('1651', '101240601', '吉安');
INSERT INTO `tp_weather` VALUES ('1652', '101240603', '吉水');
INSERT INTO `tp_weather` VALUES ('1653', '101240604', '新干');
INSERT INTO `tp_weather` VALUES ('1654', '101240605', '峡江');
INSERT INTO `tp_weather` VALUES ('1655', '101240606', '永丰');
INSERT INTO `tp_weather` VALUES ('1656', '101240607', '永新');
INSERT INTO `tp_weather` VALUES ('1657', '101240608', '井冈山');
INSERT INTO `tp_weather` VALUES ('1658', '101240609', '万安');
INSERT INTO `tp_weather` VALUES ('1659', '101240610', '遂川');
INSERT INTO `tp_weather` VALUES ('1660', '101240611', '泰和');
INSERT INTO `tp_weather` VALUES ('1661', '101240612', '安福');
INSERT INTO `tp_weather` VALUES ('1662', '101240701', '赣州');
INSERT INTO `tp_weather` VALUES ('1663', '101240702', '崇义');
INSERT INTO `tp_weather` VALUES ('1664', '101240703', '上犹');
INSERT INTO `tp_weather` VALUES ('1665', '101240704', '南康');
INSERT INTO `tp_weather` VALUES ('1666', '101240705', '大余');
INSERT INTO `tp_weather` VALUES ('1667', '101240706', '信丰');
INSERT INTO `tp_weather` VALUES ('1668', '101240707', '宁都');
INSERT INTO `tp_weather` VALUES ('1669', '101240708', '石城');
INSERT INTO `tp_weather` VALUES ('1670', '101240709', '瑞金');
INSERT INTO `tp_weather` VALUES ('1671', '101240710', '于都');
INSERT INTO `tp_weather` VALUES ('1672', '101240711', '会昌');
INSERT INTO `tp_weather` VALUES ('1673', '101240712', '安远');
INSERT INTO `tp_weather` VALUES ('1674', '101240713', '全南');
INSERT INTO `tp_weather` VALUES ('1675', '101240714', '龙南');
INSERT INTO `tp_weather` VALUES ('1676', '101240715', '定南');
INSERT INTO `tp_weather` VALUES ('1677', '101240716', '寻乌');
INSERT INTO `tp_weather` VALUES ('1678', '101240717', '兴国');
INSERT INTO `tp_weather` VALUES ('1679', '101240718', '赣县');
INSERT INTO `tp_weather` VALUES ('1680', '101240801', '景德镇');
INSERT INTO `tp_weather` VALUES ('1681', '101240802', '乐平');
INSERT INTO `tp_weather` VALUES ('1682', '101240803', '浮梁');
INSERT INTO `tp_weather` VALUES ('1683', '101240901', '萍乡');
INSERT INTO `tp_weather` VALUES ('1684', '101240902', '莲花');
INSERT INTO `tp_weather` VALUES ('1685', '101240903', '上栗');
INSERT INTO `tp_weather` VALUES ('1686', '101240905', '芦溪');
INSERT INTO `tp_weather` VALUES ('1687', '101240906', '湘东');
INSERT INTO `tp_weather` VALUES ('1688', '101241001', '新余');
INSERT INTO `tp_weather` VALUES ('1689', '101241002', '分宜');
INSERT INTO `tp_weather` VALUES ('1690', '101241101', '鹰潭');
INSERT INTO `tp_weather` VALUES ('1691', '101241102', '余江');
INSERT INTO `tp_weather` VALUES ('1692', '101241103', '贵溪');
INSERT INTO `tp_weather` VALUES ('1693', '101250101', '长沙');
INSERT INTO `tp_weather` VALUES ('1694', '101250102', '宁乡');
INSERT INTO `tp_weather` VALUES ('1695', '101250103', '浏阳');
INSERT INTO `tp_weather` VALUES ('1696', '101250105', '望城');
INSERT INTO `tp_weather` VALUES ('1697', '101250201', '湘潭');
INSERT INTO `tp_weather` VALUES ('1698', '101250202', '韶山');
INSERT INTO `tp_weather` VALUES ('1699', '101250203', '湘乡');
INSERT INTO `tp_weather` VALUES ('1700', '101250301', '株洲');
INSERT INTO `tp_weather` VALUES ('1701', '101250302', '攸县');
INSERT INTO `tp_weather` VALUES ('1702', '101250303', '醴陵');
INSERT INTO `tp_weather` VALUES ('1703', '101250305', '茶陵');
INSERT INTO `tp_weather` VALUES ('1704', '101250306', '炎陵');
INSERT INTO `tp_weather` VALUES ('1705', '101250401', '衡阳');
INSERT INTO `tp_weather` VALUES ('1706', '101250402', '衡山');
INSERT INTO `tp_weather` VALUES ('1707', '101250403', '衡东');
INSERT INTO `tp_weather` VALUES ('1708', '101250404', '祁东');
INSERT INTO `tp_weather` VALUES ('1709', '101250406', '常宁');
INSERT INTO `tp_weather` VALUES ('1710', '101250407', '衡南');
INSERT INTO `tp_weather` VALUES ('1711', '101250408', '耒阳');
INSERT INTO `tp_weather` VALUES ('1712', '101250501', '郴州');
INSERT INTO `tp_weather` VALUES ('1713', '101250502', '桂阳');
INSERT INTO `tp_weather` VALUES ('1714', '101250503', '嘉禾');
INSERT INTO `tp_weather` VALUES ('1715', '101250504', '宜章');
INSERT INTO `tp_weather` VALUES ('1716', '101250505', '临武');
INSERT INTO `tp_weather` VALUES ('1717', '101250507', '资兴');
INSERT INTO `tp_weather` VALUES ('1718', '101250508', '汝城');
INSERT INTO `tp_weather` VALUES ('1719', '101250509', '安仁');
INSERT INTO `tp_weather` VALUES ('1720', '101250510', '永兴');
INSERT INTO `tp_weather` VALUES ('1721', '101250511', '桂东');
INSERT INTO `tp_weather` VALUES ('1722', '101250512', '苏仙');
INSERT INTO `tp_weather` VALUES ('1723', '101250601', '常德');
INSERT INTO `tp_weather` VALUES ('1724', '101250602', '安乡');
INSERT INTO `tp_weather` VALUES ('1725', '101250603', '桃源');
INSERT INTO `tp_weather` VALUES ('1726', '101250604', '汉寿');
INSERT INTO `tp_weather` VALUES ('1727', '101250605', '澧县');
INSERT INTO `tp_weather` VALUES ('1728', '101250606', '临澧');
INSERT INTO `tp_weather` VALUES ('1729', '101250607', '石门');
INSERT INTO `tp_weather` VALUES ('1730', '101250608', '津市');
INSERT INTO `tp_weather` VALUES ('1731', '101250700', '益阳');
INSERT INTO `tp_weather` VALUES ('1732', '101250702', '南县');
INSERT INTO `tp_weather` VALUES ('1733', '101250703', '桃江');
INSERT INTO `tp_weather` VALUES ('1734', '101250704', '安化');
INSERT INTO `tp_weather` VALUES ('1735', '101250705', '沅江');
INSERT INTO `tp_weather` VALUES ('1736', '101250801', '娄底');
INSERT INTO `tp_weather` VALUES ('1737', '101250802', '双峰');
INSERT INTO `tp_weather` VALUES ('1738', '101250803', '冷水江');
INSERT INTO `tp_weather` VALUES ('1739', '101250805', '新化');
INSERT INTO `tp_weather` VALUES ('1740', '101250806', '涟源');
INSERT INTO `tp_weather` VALUES ('1741', '101250901', '邵阳');
INSERT INTO `tp_weather` VALUES ('1742', '101250902', '隆回');
INSERT INTO `tp_weather` VALUES ('1743', '101250903', '洞口');
INSERT INTO `tp_weather` VALUES ('1744', '101250904', '新邵');
INSERT INTO `tp_weather` VALUES ('1745', '101250905', '邵东');
INSERT INTO `tp_weather` VALUES ('1746', '101250906', '绥宁');
INSERT INTO `tp_weather` VALUES ('1747', '101250907', '新宁');
INSERT INTO `tp_weather` VALUES ('1748', '101250908', '武冈');
INSERT INTO `tp_weather` VALUES ('1749', '101250909', '城步');
INSERT INTO `tp_weather` VALUES ('1750', '101251001', '岳阳');
INSERT INTO `tp_weather` VALUES ('1751', '101251002', '华容');
INSERT INTO `tp_weather` VALUES ('1752', '101251003', '湘阴');
INSERT INTO `tp_weather` VALUES ('1753', '101251004', '汨罗');
INSERT INTO `tp_weather` VALUES ('1754', '101251005', '平江');
INSERT INTO `tp_weather` VALUES ('1755', '101251006', '临湘');
INSERT INTO `tp_weather` VALUES ('1756', '101251101', '张家界');
INSERT INTO `tp_weather` VALUES ('1757', '101251102', '桑植');
INSERT INTO `tp_weather` VALUES ('1758', '101251103', '慈利');
INSERT INTO `tp_weather` VALUES ('1759', '101251104', '武陵源');
INSERT INTO `tp_weather` VALUES ('1760', '101251201', '怀化');
INSERT INTO `tp_weather` VALUES ('1761', '101251203', '沅陵');
INSERT INTO `tp_weather` VALUES ('1762', '101251204', '辰溪');
INSERT INTO `tp_weather` VALUES ('1763', '101251205', '靖州');
INSERT INTO `tp_weather` VALUES ('1764', '101251206', '会同');
INSERT INTO `tp_weather` VALUES ('1765', '101251207', '通道');
INSERT INTO `tp_weather` VALUES ('1766', '101251208', '麻阳');
INSERT INTO `tp_weather` VALUES ('1767', '101251209', '新晃');
INSERT INTO `tp_weather` VALUES ('1768', '101251210', '芷江');
INSERT INTO `tp_weather` VALUES ('1769', '101251211', '溆浦');
INSERT INTO `tp_weather` VALUES ('1770', '101251212', '中方');
INSERT INTO `tp_weather` VALUES ('1771', '101251213', '洪江');
INSERT INTO `tp_weather` VALUES ('1772', '101251401', '永州');
INSERT INTO `tp_weather` VALUES ('1773', '101251402', '祁阳');
INSERT INTO `tp_weather` VALUES ('1774', '101251403', '东安');
INSERT INTO `tp_weather` VALUES ('1775', '101251404', '双牌');
INSERT INTO `tp_weather` VALUES ('1776', '101251405', '道县');
INSERT INTO `tp_weather` VALUES ('1777', '101251406', '宁远');
INSERT INTO `tp_weather` VALUES ('1778', '101251407', '江永');
INSERT INTO `tp_weather` VALUES ('1779', '101251408', '蓝山');
INSERT INTO `tp_weather` VALUES ('1780', '101251409', '新田');
INSERT INTO `tp_weather` VALUES ('1781', '101251410', '江华');
INSERT INTO `tp_weather` VALUES ('1782', '101251501', '吉首');
INSERT INTO `tp_weather` VALUES ('1783', '101251502', '保靖');
INSERT INTO `tp_weather` VALUES ('1784', '101251503', '永顺');
INSERT INTO `tp_weather` VALUES ('1785', '101251504', '古丈');
INSERT INTO `tp_weather` VALUES ('1786', '101251505', '凤凰');
INSERT INTO `tp_weather` VALUES ('1787', '101251506', '泸溪');
INSERT INTO `tp_weather` VALUES ('1788', '101251507', '龙山');
INSERT INTO `tp_weather` VALUES ('1789', '101251508', '花垣');
INSERT INTO `tp_weather` VALUES ('1790', '101260101', '贵阳');
INSERT INTO `tp_weather` VALUES ('1791', '101260102', '白云');
INSERT INTO `tp_weather` VALUES ('1792', '101260103', '花溪');
INSERT INTO `tp_weather` VALUES ('1793', '101260104', '乌当');
INSERT INTO `tp_weather` VALUES ('1794', '101260105', '息烽');
INSERT INTO `tp_weather` VALUES ('1795', '101260106', '开阳');
INSERT INTO `tp_weather` VALUES ('1796', '101260107', '修文');
INSERT INTO `tp_weather` VALUES ('1797', '101260108', '清镇');
INSERT INTO `tp_weather` VALUES ('1798', '101260109', '小河');
INSERT INTO `tp_weather` VALUES ('1799', '101260110', '云岩');
INSERT INTO `tp_weather` VALUES ('1800', '101260111', '南明');
INSERT INTO `tp_weather` VALUES ('1801', '101260201', '遵义');
INSERT INTO `tp_weather` VALUES ('1802', '101260203', '仁怀');
INSERT INTO `tp_weather` VALUES ('1803', '101260204', '绥阳');
INSERT INTO `tp_weather` VALUES ('1804', '101260205', '湄潭');
INSERT INTO `tp_weather` VALUES ('1805', '101260206', '凤冈');
INSERT INTO `tp_weather` VALUES ('1806', '101260207', '桐梓');
INSERT INTO `tp_weather` VALUES ('1807', '101260208', '赤水');
INSERT INTO `tp_weather` VALUES ('1808', '101260209', '习水');
INSERT INTO `tp_weather` VALUES ('1809', '101260210', '道真');
INSERT INTO `tp_weather` VALUES ('1810', '101260211', '正安');
INSERT INTO `tp_weather` VALUES ('1811', '101260212', '务川');
INSERT INTO `tp_weather` VALUES ('1812', '101260213', '余庆');
INSERT INTO `tp_weather` VALUES ('1813', '101260214', '汇川');
INSERT INTO `tp_weather` VALUES ('1814', '101260215', '红花岗');
INSERT INTO `tp_weather` VALUES ('1815', '101260301', '安顺');
INSERT INTO `tp_weather` VALUES ('1816', '101260302', '普定');
INSERT INTO `tp_weather` VALUES ('1817', '101260303', '镇宁');
INSERT INTO `tp_weather` VALUES ('1818', '101260304', '平坝');
INSERT INTO `tp_weather` VALUES ('1819', '101260305', '紫云');
INSERT INTO `tp_weather` VALUES ('1820', '101260306', '关岭');
INSERT INTO `tp_weather` VALUES ('1821', '101260401', '都匀');
INSERT INTO `tp_weather` VALUES ('1822', '101260402', '贵定');
INSERT INTO `tp_weather` VALUES ('1823', '101260403', '瓮安');
INSERT INTO `tp_weather` VALUES ('1824', '101260404', '长顺');
INSERT INTO `tp_weather` VALUES ('1825', '101260405', '福泉');
INSERT INTO `tp_weather` VALUES ('1826', '101260406', '惠水');
INSERT INTO `tp_weather` VALUES ('1827', '101260407', '龙里');
INSERT INTO `tp_weather` VALUES ('1828', '101260408', '罗甸');
INSERT INTO `tp_weather` VALUES ('1829', '101260409', '平塘');
INSERT INTO `tp_weather` VALUES ('1830', '101260410', '独山');
INSERT INTO `tp_weather` VALUES ('1831', '101260411', '三都');
INSERT INTO `tp_weather` VALUES ('1832', '101260412', '荔波');
INSERT INTO `tp_weather` VALUES ('1833', '101260501', '凯里');
INSERT INTO `tp_weather` VALUES ('1834', '101260502', '岑巩');
INSERT INTO `tp_weather` VALUES ('1835', '101260503', '施秉');
INSERT INTO `tp_weather` VALUES ('1836', '101260504', '镇远');
INSERT INTO `tp_weather` VALUES ('1837', '101260505', '黄平');
INSERT INTO `tp_weather` VALUES ('1838', '101260507', '麻江');
INSERT INTO `tp_weather` VALUES ('1839', '101260508', '丹寨');
INSERT INTO `tp_weather` VALUES ('1840', '101260509', '三穗');
INSERT INTO `tp_weather` VALUES ('1841', '101260510', '台江');
INSERT INTO `tp_weather` VALUES ('1842', '101260511', '剑河');
INSERT INTO `tp_weather` VALUES ('1843', '101260512', '雷山');
INSERT INTO `tp_weather` VALUES ('1844', '101260513', '黎平');
INSERT INTO `tp_weather` VALUES ('1845', '101260514', '天柱');
INSERT INTO `tp_weather` VALUES ('1846', '101260515', '锦屏');
INSERT INTO `tp_weather` VALUES ('1847', '101260516', '榕江');
INSERT INTO `tp_weather` VALUES ('1848', '101260517', '从江');
INSERT INTO `tp_weather` VALUES ('1849', '101260601', '铜仁');
INSERT INTO `tp_weather` VALUES ('1850', '101260602', '江口');
INSERT INTO `tp_weather` VALUES ('1851', '101260603', '玉屏');
INSERT INTO `tp_weather` VALUES ('1852', '101260604', '万山特');
INSERT INTO `tp_weather` VALUES ('1853', '101260605', '思南');
INSERT INTO `tp_weather` VALUES ('1854', '101260607', '印江');
INSERT INTO `tp_weather` VALUES ('1855', '101260608', '石阡');
INSERT INTO `tp_weather` VALUES ('1856', '101260609', '沿河');
INSERT INTO `tp_weather` VALUES ('1857', '101260610', '德江');
INSERT INTO `tp_weather` VALUES ('1858', '101260611', '松桃');
INSERT INTO `tp_weather` VALUES ('1859', '101260701', '毕节');
INSERT INTO `tp_weather` VALUES ('1860', '101260702', '赫章');
INSERT INTO `tp_weather` VALUES ('1861', '101260703', '金沙');
INSERT INTO `tp_weather` VALUES ('1862', '101260704', '威宁');
INSERT INTO `tp_weather` VALUES ('1863', '101260705', '大方');
INSERT INTO `tp_weather` VALUES ('1864', '101260706', '纳雍');
INSERT INTO `tp_weather` VALUES ('1865', '101260707', '织金');
INSERT INTO `tp_weather` VALUES ('1866', '101260708', '黔西');
INSERT INTO `tp_weather` VALUES ('1867', '101260801', '水城');
INSERT INTO `tp_weather` VALUES ('1868', '101260802', '六枝特');
INSERT INTO `tp_weather` VALUES ('1869', '101260804', '盘县');
INSERT INTO `tp_weather` VALUES ('1870', '101260901', '兴义');
INSERT INTO `tp_weather` VALUES ('1871', '101260902', '晴隆');
INSERT INTO `tp_weather` VALUES ('1872', '101260903', '兴仁');
INSERT INTO `tp_weather` VALUES ('1873', '101260904', '贞丰');
INSERT INTO `tp_weather` VALUES ('1874', '101260905', '望谟');
INSERT INTO `tp_weather` VALUES ('1875', '101260907', '安龙');
INSERT INTO `tp_weather` VALUES ('1876', '101260908', '册亨');
INSERT INTO `tp_weather` VALUES ('1877', '101260909', '普安');
INSERT INTO `tp_weather` VALUES ('1878', '101270101', '成都');
INSERT INTO `tp_weather` VALUES ('1879', '101270103', '新都');
INSERT INTO `tp_weather` VALUES ('1880', '101270104', '温江');
INSERT INTO `tp_weather` VALUES ('1881', '101270105', '金堂');
INSERT INTO `tp_weather` VALUES ('1882', '101270106', '双流');
INSERT INTO `tp_weather` VALUES ('1883', '101270107', '郫县');
INSERT INTO `tp_weather` VALUES ('1884', '101270108', '大邑');
INSERT INTO `tp_weather` VALUES ('1885', '101270109', '蒲江');
INSERT INTO `tp_weather` VALUES ('1886', '101270110', '新津');
INSERT INTO `tp_weather` VALUES ('1887', '101270111', '都江堰');
INSERT INTO `tp_weather` VALUES ('1888', '101270112', '彭州');
INSERT INTO `tp_weather` VALUES ('1889', '101270113', '邛崃');
INSERT INTO `tp_weather` VALUES ('1890', '101270114', '崇州');
INSERT INTO `tp_weather` VALUES ('1891', '101270201', '攀枝花');
INSERT INTO `tp_weather` VALUES ('1892', '101270203', '米易');
INSERT INTO `tp_weather` VALUES ('1893', '101270204', '盐边');
INSERT INTO `tp_weather` VALUES ('1894', '101270301', '自贡');
INSERT INTO `tp_weather` VALUES ('1895', '101270302', '富顺');
INSERT INTO `tp_weather` VALUES ('1896', '101270303', '荣县');
INSERT INTO `tp_weather` VALUES ('1897', '101270401', '绵阳');
INSERT INTO `tp_weather` VALUES ('1898', '101270402', '三台');
INSERT INTO `tp_weather` VALUES ('1899', '101270403', '盐亭');
INSERT INTO `tp_weather` VALUES ('1900', '101270404', '安县');
INSERT INTO `tp_weather` VALUES ('1901', '101270405', '梓潼');
INSERT INTO `tp_weather` VALUES ('1902', '101270406', '北川');
INSERT INTO `tp_weather` VALUES ('1903', '101270407', '平武');
INSERT INTO `tp_weather` VALUES ('1904', '101270408', '江油');
INSERT INTO `tp_weather` VALUES ('1905', '101270501', '南充');
INSERT INTO `tp_weather` VALUES ('1906', '101270502', '南部');
INSERT INTO `tp_weather` VALUES ('1907', '101270503', '营山');
INSERT INTO `tp_weather` VALUES ('1908', '101270504', '蓬安');
INSERT INTO `tp_weather` VALUES ('1909', '101270505', '仪陇');
INSERT INTO `tp_weather` VALUES ('1910', '101270506', '西充');
INSERT INTO `tp_weather` VALUES ('1911', '101270507', '阆中');
INSERT INTO `tp_weather` VALUES ('1912', '101270601', '达州');
INSERT INTO `tp_weather` VALUES ('1913', '101270602', '宣汉');
INSERT INTO `tp_weather` VALUES ('1914', '101270603', '开江');
INSERT INTO `tp_weather` VALUES ('1915', '101270604', '大竹');
INSERT INTO `tp_weather` VALUES ('1916', '101270605', '渠县');
INSERT INTO `tp_weather` VALUES ('1917', '101270606', '万源');
INSERT INTO `tp_weather` VALUES ('1918', '101270608', '达县');
INSERT INTO `tp_weather` VALUES ('1919', '101270701', '遂宁');
INSERT INTO `tp_weather` VALUES ('1920', '101270702', '蓬溪');
INSERT INTO `tp_weather` VALUES ('1921', '101270703', '射洪');
INSERT INTO `tp_weather` VALUES ('1922', '101270801', '广安');
INSERT INTO `tp_weather` VALUES ('1923', '101270802', '岳池');
INSERT INTO `tp_weather` VALUES ('1924', '101270803', '武胜');
INSERT INTO `tp_weather` VALUES ('1925', '101270804', '邻水');
INSERT INTO `tp_weather` VALUES ('1926', '101270805', '华蓥');
INSERT INTO `tp_weather` VALUES ('1927', '101270901', '巴中');
INSERT INTO `tp_weather` VALUES ('1928', '101270902', '通江');
INSERT INTO `tp_weather` VALUES ('1929', '101270903', '南江');
INSERT INTO `tp_weather` VALUES ('1930', '101270904', '平昌');
INSERT INTO `tp_weather` VALUES ('1931', '101271001', '泸州');
INSERT INTO `tp_weather` VALUES ('1932', '101271003', '泸县');
INSERT INTO `tp_weather` VALUES ('1933', '101271004', '合江');
INSERT INTO `tp_weather` VALUES ('1934', '101271005', '叙永');
INSERT INTO `tp_weather` VALUES ('1935', '101271006', '古蔺');
INSERT INTO `tp_weather` VALUES ('1936', '101271101', '宜宾');
INSERT INTO `tp_weather` VALUES ('1937', '101271104', '南溪');
INSERT INTO `tp_weather` VALUES ('1938', '101271105', '江安');
INSERT INTO `tp_weather` VALUES ('1939', '101271106', '长宁');
INSERT INTO `tp_weather` VALUES ('1940', '101271107', '高县');
INSERT INTO `tp_weather` VALUES ('1941', '101271108', '珙县');
INSERT INTO `tp_weather` VALUES ('1942', '101271109', '筠连');
INSERT INTO `tp_weather` VALUES ('1943', '101271110', '兴文');
INSERT INTO `tp_weather` VALUES ('1944', '101271111', '屏山');
INSERT INTO `tp_weather` VALUES ('1945', '101271201', '内江');
INSERT INTO `tp_weather` VALUES ('1946', '101271203', '威远');
INSERT INTO `tp_weather` VALUES ('1947', '101271204', '资中');
INSERT INTO `tp_weather` VALUES ('1948', '101271205', '隆昌');
INSERT INTO `tp_weather` VALUES ('1949', '101271301', '资阳');
INSERT INTO `tp_weather` VALUES ('1950', '101271302', '安岳');
INSERT INTO `tp_weather` VALUES ('1951', '101271303', '乐至');
INSERT INTO `tp_weather` VALUES ('1952', '101271304', '简阳');
INSERT INTO `tp_weather` VALUES ('1953', '101271401', '乐山');
INSERT INTO `tp_weather` VALUES ('1954', '101271402', '犍为');
INSERT INTO `tp_weather` VALUES ('1955', '101271403', '井研');
INSERT INTO `tp_weather` VALUES ('1956', '101271404', '夹江');
INSERT INTO `tp_weather` VALUES ('1957', '101271405', '沐川');
INSERT INTO `tp_weather` VALUES ('1958', '101271406', '峨边');
INSERT INTO `tp_weather` VALUES ('1959', '101271407', '马边');
INSERT INTO `tp_weather` VALUES ('1960', '101271409', '峨眉山');
INSERT INTO `tp_weather` VALUES ('1961', '101271501', '眉山');
INSERT INTO `tp_weather` VALUES ('1962', '101271502', '仁寿');
INSERT INTO `tp_weather` VALUES ('1963', '101271503', '彭山');
INSERT INTO `tp_weather` VALUES ('1964', '101271504', '洪雅');
INSERT INTO `tp_weather` VALUES ('1965', '101271505', '丹棱');
INSERT INTO `tp_weather` VALUES ('1966', '101271506', '青神');
INSERT INTO `tp_weather` VALUES ('1967', '101271601', '凉山');
INSERT INTO `tp_weather` VALUES ('1968', '101271603', '木里');
INSERT INTO `tp_weather` VALUES ('1969', '101271604', '盐源');
INSERT INTO `tp_weather` VALUES ('1970', '101271605', '德昌');
INSERT INTO `tp_weather` VALUES ('1971', '101271606', '会理');
INSERT INTO `tp_weather` VALUES ('1972', '101271607', '会东');
INSERT INTO `tp_weather` VALUES ('1973', '101271608', '宁南');
INSERT INTO `tp_weather` VALUES ('1974', '101271609', '普格');
INSERT INTO `tp_weather` VALUES ('1975', '101271610', '西昌');
INSERT INTO `tp_weather` VALUES ('1976', '101271611', '金阳');
INSERT INTO `tp_weather` VALUES ('1977', '101271612', '昭觉');
INSERT INTO `tp_weather` VALUES ('1978', '101271613', '喜德');
INSERT INTO `tp_weather` VALUES ('1979', '101271614', '冕宁');
INSERT INTO `tp_weather` VALUES ('1980', '101271615', '越西');
INSERT INTO `tp_weather` VALUES ('1981', '101271616', '甘洛');
INSERT INTO `tp_weather` VALUES ('1982', '101271617', '雷波');
INSERT INTO `tp_weather` VALUES ('1983', '101271618', '美姑');
INSERT INTO `tp_weather` VALUES ('1984', '101271619', '布拖');
INSERT INTO `tp_weather` VALUES ('1985', '101271701', '雅安');
INSERT INTO `tp_weather` VALUES ('1986', '101271702', '名山');
INSERT INTO `tp_weather` VALUES ('1987', '101271703', '荥经');
INSERT INTO `tp_weather` VALUES ('1988', '101271704', '汉源');
INSERT INTO `tp_weather` VALUES ('1989', '101271705', '石棉');
INSERT INTO `tp_weather` VALUES ('1990', '101271706', '天全');
INSERT INTO `tp_weather` VALUES ('1991', '101271707', '芦山');
INSERT INTO `tp_weather` VALUES ('1992', '101271708', '宝兴');
INSERT INTO `tp_weather` VALUES ('1993', '101271801', '甘孜');
INSERT INTO `tp_weather` VALUES ('1994', '101271802', '康定');
INSERT INTO `tp_weather` VALUES ('1995', '101271803', '泸定');
INSERT INTO `tp_weather` VALUES ('1996', '101271804', '丹巴');
INSERT INTO `tp_weather` VALUES ('1997', '101271805', '九龙');
INSERT INTO `tp_weather` VALUES ('1998', '101271806', '雅江');
INSERT INTO `tp_weather` VALUES ('1999', '101271807', '道孚');
INSERT INTO `tp_weather` VALUES ('2000', '101271808', '炉霍');
INSERT INTO `tp_weather` VALUES ('2001', '101271809', '新龙');
INSERT INTO `tp_weather` VALUES ('2002', '101271810', '德格');
INSERT INTO `tp_weather` VALUES ('2003', '101271811', '白玉');
INSERT INTO `tp_weather` VALUES ('2004', '101271812', '石渠');
INSERT INTO `tp_weather` VALUES ('2005', '101271813', '色达');
INSERT INTO `tp_weather` VALUES ('2006', '101271814', '理塘');
INSERT INTO `tp_weather` VALUES ('2007', '101271815', '巴塘');
INSERT INTO `tp_weather` VALUES ('2008', '101271816', '乡城');
INSERT INTO `tp_weather` VALUES ('2009', '101271817', '稻城');
INSERT INTO `tp_weather` VALUES ('2010', '101271818', '得荣');
INSERT INTO `tp_weather` VALUES ('2011', '101271901', '阿坝');
INSERT INTO `tp_weather` VALUES ('2012', '101271902', '汶川');
INSERT INTO `tp_weather` VALUES ('2013', '101271903', '理县');
INSERT INTO `tp_weather` VALUES ('2014', '101271904', '茂县');
INSERT INTO `tp_weather` VALUES ('2015', '101271905', '松潘');
INSERT INTO `tp_weather` VALUES ('2016', '101271906', '九寨沟');
INSERT INTO `tp_weather` VALUES ('2017', '101271907', '金川');
INSERT INTO `tp_weather` VALUES ('2018', '101271908', '小金');
INSERT INTO `tp_weather` VALUES ('2019', '101271909', '黑水');
INSERT INTO `tp_weather` VALUES ('2020', '101271910', '马尔康');
INSERT INTO `tp_weather` VALUES ('2021', '101271911', '壤塘');
INSERT INTO `tp_weather` VALUES ('2022', '101271912', '若尔盖');
INSERT INTO `tp_weather` VALUES ('2023', '101271913', '红原');
INSERT INTO `tp_weather` VALUES ('2024', '101272001', '德阳');
INSERT INTO `tp_weather` VALUES ('2025', '101272002', '中江');
INSERT INTO `tp_weather` VALUES ('2026', '101272003', '广汉');
INSERT INTO `tp_weather` VALUES ('2027', '101272004', '什邡');
INSERT INTO `tp_weather` VALUES ('2028', '101272005', '绵竹');
INSERT INTO `tp_weather` VALUES ('2029', '101272006', '罗江');
INSERT INTO `tp_weather` VALUES ('2030', '101272101', '广元');
INSERT INTO `tp_weather` VALUES ('2031', '101272102', '旺苍');
INSERT INTO `tp_weather` VALUES ('2032', '101272103', '青川');
INSERT INTO `tp_weather` VALUES ('2033', '101272104', '剑阁');
INSERT INTO `tp_weather` VALUES ('2034', '101272105', '苍溪');
INSERT INTO `tp_weather` VALUES ('2035', '101280101', '广州');
INSERT INTO `tp_weather` VALUES ('2036', '101280102', '番禺');
INSERT INTO `tp_weather` VALUES ('2037', '101280103', '从化');
INSERT INTO `tp_weather` VALUES ('2038', '101280104', '增城');
INSERT INTO `tp_weather` VALUES ('2039', '101280105', '花都');
INSERT INTO `tp_weather` VALUES ('2040', '101280201', '韶关');
INSERT INTO `tp_weather` VALUES ('2041', '101280202', '乳源');
INSERT INTO `tp_weather` VALUES ('2042', '101280203', '始兴');
INSERT INTO `tp_weather` VALUES ('2043', '101280204', '翁源');
INSERT INTO `tp_weather` VALUES ('2044', '101280205', '乐昌');
INSERT INTO `tp_weather` VALUES ('2045', '101280206', '仁化');
INSERT INTO `tp_weather` VALUES ('2046', '101280207', '南雄');
INSERT INTO `tp_weather` VALUES ('2047', '101280208', '新丰');
INSERT INTO `tp_weather` VALUES ('2048', '101280209', '曲江');
INSERT INTO `tp_weather` VALUES ('2049', '101280210', '浈江');
INSERT INTO `tp_weather` VALUES ('2050', '101280211', '武江');
INSERT INTO `tp_weather` VALUES ('2051', '101280301', '惠州');
INSERT INTO `tp_weather` VALUES ('2052', '101280302', '博罗');
INSERT INTO `tp_weather` VALUES ('2053', '101280303', '惠阳');
INSERT INTO `tp_weather` VALUES ('2054', '101280304', '惠东');
INSERT INTO `tp_weather` VALUES ('2055', '101280305', '龙门');
INSERT INTO `tp_weather` VALUES ('2056', '101280401', '梅州');
INSERT INTO `tp_weather` VALUES ('2057', '101280402', '兴宁');
INSERT INTO `tp_weather` VALUES ('2058', '101280403', '蕉岭');
INSERT INTO `tp_weather` VALUES ('2059', '101280404', '大埔');
INSERT INTO `tp_weather` VALUES ('2060', '101280406', '丰顺');
INSERT INTO `tp_weather` VALUES ('2061', '101280407', '平远');
INSERT INTO `tp_weather` VALUES ('2062', '101280408', '五华');
INSERT INTO `tp_weather` VALUES ('2063', '101280409', '梅县');
INSERT INTO `tp_weather` VALUES ('2064', '101280501', '汕头');
INSERT INTO `tp_weather` VALUES ('2065', '101280502', '潮阳');
INSERT INTO `tp_weather` VALUES ('2066', '101280503', '澄海');
INSERT INTO `tp_weather` VALUES ('2067', '101280504', '南澳');
INSERT INTO `tp_weather` VALUES ('2068', '101280601', '深圳');
INSERT INTO `tp_weather` VALUES ('2069', '101280701', '珠海');
INSERT INTO `tp_weather` VALUES ('2070', '101280702', '斗门');
INSERT INTO `tp_weather` VALUES ('2071', '101280703', '金湾');
INSERT INTO `tp_weather` VALUES ('2072', '101280800', '佛山');
INSERT INTO `tp_weather` VALUES ('2073', '101280801', '顺德');
INSERT INTO `tp_weather` VALUES ('2074', '101280802', '三水');
INSERT INTO `tp_weather` VALUES ('2075', '101280803', '南海');
INSERT INTO `tp_weather` VALUES ('2076', '101280804', '高明');
INSERT INTO `tp_weather` VALUES ('2077', '101280901', '肇庆');
INSERT INTO `tp_weather` VALUES ('2078', '101280902', '广宁');
INSERT INTO `tp_weather` VALUES ('2079', '101280903', '四会');
INSERT INTO `tp_weather` VALUES ('2080', '101280905', '德庆');
INSERT INTO `tp_weather` VALUES ('2081', '101280906', '怀集');
INSERT INTO `tp_weather` VALUES ('2082', '101280907', '封开');
INSERT INTO `tp_weather` VALUES ('2083', '101280908', '高要');
INSERT INTO `tp_weather` VALUES ('2084', '101281001', '湛江');
INSERT INTO `tp_weather` VALUES ('2085', '101281002', '吴川');
INSERT INTO `tp_weather` VALUES ('2086', '101281003', '雷州');
INSERT INTO `tp_weather` VALUES ('2087', '101281004', '徐闻');
INSERT INTO `tp_weather` VALUES ('2088', '101281005', '廉江');
INSERT INTO `tp_weather` VALUES ('2089', '101281006', '赤坎');
INSERT INTO `tp_weather` VALUES ('2090', '101281007', '遂溪');
INSERT INTO `tp_weather` VALUES ('2091', '101281008', '坡头');
INSERT INTO `tp_weather` VALUES ('2092', '101281009', '霞山');
INSERT INTO `tp_weather` VALUES ('2093', '101281010', '麻章');
INSERT INTO `tp_weather` VALUES ('2094', '101281101', '江门');
INSERT INTO `tp_weather` VALUES ('2095', '101281103', '开平');
INSERT INTO `tp_weather` VALUES ('2096', '101281104', '新会');
INSERT INTO `tp_weather` VALUES ('2097', '101281105', '恩平');
INSERT INTO `tp_weather` VALUES ('2098', '101281106', '台山');
INSERT INTO `tp_weather` VALUES ('2099', '101281108', '鹤山');
INSERT INTO `tp_weather` VALUES ('2100', '101281109', '江海');
INSERT INTO `tp_weather` VALUES ('2101', '101281201', '河源');
INSERT INTO `tp_weather` VALUES ('2102', '101281202', '紫金');
INSERT INTO `tp_weather` VALUES ('2103', '101281203', '连平');
INSERT INTO `tp_weather` VALUES ('2104', '101281204', '和平');
INSERT INTO `tp_weather` VALUES ('2105', '101281205', '龙川');
INSERT INTO `tp_weather` VALUES ('2106', '101281206', '东源');
INSERT INTO `tp_weather` VALUES ('2107', '101281301', '清远');
INSERT INTO `tp_weather` VALUES ('2108', '101281302', '连南');
INSERT INTO `tp_weather` VALUES ('2109', '101281303', '连州');
INSERT INTO `tp_weather` VALUES ('2110', '101281304', '连山');
INSERT INTO `tp_weather` VALUES ('2111', '101281305', '阳山');
INSERT INTO `tp_weather` VALUES ('2112', '101281306', '佛冈');
INSERT INTO `tp_weather` VALUES ('2113', '101281307', '英德');
INSERT INTO `tp_weather` VALUES ('2114', '101281308', '清新');
INSERT INTO `tp_weather` VALUES ('2115', '101281401', '云浮');
INSERT INTO `tp_weather` VALUES ('2116', '101281402', '罗定');
INSERT INTO `tp_weather` VALUES ('2117', '101281403', '新兴');
INSERT INTO `tp_weather` VALUES ('2118', '101281404', '郁南');
INSERT INTO `tp_weather` VALUES ('2119', '101281406', '云安');
INSERT INTO `tp_weather` VALUES ('2120', '101281501', '潮州');
INSERT INTO `tp_weather` VALUES ('2121', '101281502', '饶平');
INSERT INTO `tp_weather` VALUES ('2122', '101281503', '潮安');
INSERT INTO `tp_weather` VALUES ('2123', '101281601', '东莞');
INSERT INTO `tp_weather` VALUES ('2124', '101281701', '中山');
INSERT INTO `tp_weather` VALUES ('2125', '101281801', '阳江');
INSERT INTO `tp_weather` VALUES ('2126', '101281802', '阳春');
INSERT INTO `tp_weather` VALUES ('2127', '101281803', '阳东');
INSERT INTO `tp_weather` VALUES ('2128', '101281804', '阳西');
INSERT INTO `tp_weather` VALUES ('2129', '101281901', '揭阳');
INSERT INTO `tp_weather` VALUES ('2130', '101281902', '揭西');
INSERT INTO `tp_weather` VALUES ('2131', '101281903', '普宁');
INSERT INTO `tp_weather` VALUES ('2132', '101281904', '惠来');
INSERT INTO `tp_weather` VALUES ('2133', '101281905', '揭东');
INSERT INTO `tp_weather` VALUES ('2134', '101282001', '茂名');
INSERT INTO `tp_weather` VALUES ('2135', '101282002', '高州');
INSERT INTO `tp_weather` VALUES ('2136', '101282003', '化州');
INSERT INTO `tp_weather` VALUES ('2137', '101282004', '电白');
INSERT INTO `tp_weather` VALUES ('2138', '101282005', '信宜');
INSERT INTO `tp_weather` VALUES ('2139', '101282006', '茂港');
INSERT INTO `tp_weather` VALUES ('2140', '101282101', '汕尾');
INSERT INTO `tp_weather` VALUES ('2141', '101282102', '海丰');
INSERT INTO `tp_weather` VALUES ('2142', '101282103', '陆丰');
INSERT INTO `tp_weather` VALUES ('2143', '101282104', '陆河');
INSERT INTO `tp_weather` VALUES ('2144', '101290101', '昆明');
INSERT INTO `tp_weather` VALUES ('2145', '101290103', '东川');
INSERT INTO `tp_weather` VALUES ('2146', '101290104', '寻甸');
INSERT INTO `tp_weather` VALUES ('2147', '101290105', '晋宁');
INSERT INTO `tp_weather` VALUES ('2148', '101290106', '宜良');
INSERT INTO `tp_weather` VALUES ('2149', '101290107', '石林');
INSERT INTO `tp_weather` VALUES ('2150', '101290108', '呈贡');
INSERT INTO `tp_weather` VALUES ('2151', '101290109', '富民');
INSERT INTO `tp_weather` VALUES ('2152', '101290110', '嵩明');
INSERT INTO `tp_weather` VALUES ('2153', '101290111', '禄劝');
INSERT INTO `tp_weather` VALUES ('2154', '101290112', '安宁');
INSERT INTO `tp_weather` VALUES ('2155', '101290201', '大理');
INSERT INTO `tp_weather` VALUES ('2156', '101290202', '云龙');
INSERT INTO `tp_weather` VALUES ('2157', '101290203', '漾濞');
INSERT INTO `tp_weather` VALUES ('2158', '101290204', '永平');
INSERT INTO `tp_weather` VALUES ('2159', '101290205', '宾川');
INSERT INTO `tp_weather` VALUES ('2160', '101290206', '弥渡');
INSERT INTO `tp_weather` VALUES ('2161', '101290207', '祥云');
INSERT INTO `tp_weather` VALUES ('2162', '101290208', '巍山');
INSERT INTO `tp_weather` VALUES ('2163', '101290209', '剑川');
INSERT INTO `tp_weather` VALUES ('2164', '101290210', '洱源');
INSERT INTO `tp_weather` VALUES ('2165', '101290211', '鹤庆');
INSERT INTO `tp_weather` VALUES ('2166', '101290212', '南涧');
INSERT INTO `tp_weather` VALUES ('2167', '101290301', '红河');
INSERT INTO `tp_weather` VALUES ('2168', '101290302', '石屏');
INSERT INTO `tp_weather` VALUES ('2169', '101290303', '建水');
INSERT INTO `tp_weather` VALUES ('2170', '101290304', '弥勒');
INSERT INTO `tp_weather` VALUES ('2171', '101290305', '元阳');
INSERT INTO `tp_weather` VALUES ('2172', '101290306', '绿春');
INSERT INTO `tp_weather` VALUES ('2173', '101290307', '开远');
INSERT INTO `tp_weather` VALUES ('2174', '101290308', '个旧');
INSERT INTO `tp_weather` VALUES ('2175', '101290309', '蒙自');
INSERT INTO `tp_weather` VALUES ('2176', '101290310', '屏边');
INSERT INTO `tp_weather` VALUES ('2177', '101290311', '泸西');
INSERT INTO `tp_weather` VALUES ('2178', '101290312', '金平');
INSERT INTO `tp_weather` VALUES ('2179', '101290313', '河口');
INSERT INTO `tp_weather` VALUES ('2180', '101290401', '曲靖');
INSERT INTO `tp_weather` VALUES ('2181', '101290402', '沾益');
INSERT INTO `tp_weather` VALUES ('2182', '101290403', '陆良');
INSERT INTO `tp_weather` VALUES ('2183', '101290404', '富源');
INSERT INTO `tp_weather` VALUES ('2184', '101290405', '马龙');
INSERT INTO `tp_weather` VALUES ('2185', '101290406', '师宗');
INSERT INTO `tp_weather` VALUES ('2186', '101290407', '罗平');
INSERT INTO `tp_weather` VALUES ('2187', '101290408', '会泽');
INSERT INTO `tp_weather` VALUES ('2188', '101290409', '宣威');
INSERT INTO `tp_weather` VALUES ('2189', '101290501', '保山');
INSERT INTO `tp_weather` VALUES ('2190', '101290503', '龙陵');
INSERT INTO `tp_weather` VALUES ('2191', '101290504', '施甸');
INSERT INTO `tp_weather` VALUES ('2192', '101290505', '昌宁');
INSERT INTO `tp_weather` VALUES ('2193', '101290506', '腾冲');
INSERT INTO `tp_weather` VALUES ('2194', '101290601', '文山');
INSERT INTO `tp_weather` VALUES ('2195', '101290602', '西畴');
INSERT INTO `tp_weather` VALUES ('2196', '101290603', '马关');
INSERT INTO `tp_weather` VALUES ('2197', '101290604', '麻栗坡');
INSERT INTO `tp_weather` VALUES ('2198', '101290605', '砚山');
INSERT INTO `tp_weather` VALUES ('2199', '101290606', '丘北');
INSERT INTO `tp_weather` VALUES ('2200', '101290607', '广南');
INSERT INTO `tp_weather` VALUES ('2201', '101290608', '富宁');
INSERT INTO `tp_weather` VALUES ('2202', '101290701', '玉溪');
INSERT INTO `tp_weather` VALUES ('2203', '101290702', '澄江');
INSERT INTO `tp_weather` VALUES ('2204', '101290703', '江川');
INSERT INTO `tp_weather` VALUES ('2205', '101290704', '通海');
INSERT INTO `tp_weather` VALUES ('2206', '101290705', '华宁');
INSERT INTO `tp_weather` VALUES ('2207', '101290706', '新平');
INSERT INTO `tp_weather` VALUES ('2208', '101290707', '易门');
INSERT INTO `tp_weather` VALUES ('2209', '101290708', '峨山');
INSERT INTO `tp_weather` VALUES ('2210', '101290709', '元江');
INSERT INTO `tp_weather` VALUES ('2211', '101290801', '楚雄');
INSERT INTO `tp_weather` VALUES ('2212', '101290802', '大姚');
INSERT INTO `tp_weather` VALUES ('2213', '101290803', '元谋');
INSERT INTO `tp_weather` VALUES ('2214', '101290804', '姚安');
INSERT INTO `tp_weather` VALUES ('2215', '101290805', '牟定');
INSERT INTO `tp_weather` VALUES ('2216', '101290806', '南华');
INSERT INTO `tp_weather` VALUES ('2217', '101290807', '武定');
INSERT INTO `tp_weather` VALUES ('2218', '101290808', '禄丰');
INSERT INTO `tp_weather` VALUES ('2219', '101290809', '双柏');
INSERT INTO `tp_weather` VALUES ('2220', '101290810', '永仁');
INSERT INTO `tp_weather` VALUES ('2221', '101290901', '普洱');
INSERT INTO `tp_weather` VALUES ('2222', '101290902', '景谷');
INSERT INTO `tp_weather` VALUES ('2223', '101290903', '景东');
INSERT INTO `tp_weather` VALUES ('2224', '101290904', '澜沧');
INSERT INTO `tp_weather` VALUES ('2225', '101290906', '墨江');
INSERT INTO `tp_weather` VALUES ('2226', '101290907', '江城');
INSERT INTO `tp_weather` VALUES ('2227', '101290908', '孟连');
INSERT INTO `tp_weather` VALUES ('2228', '101290909', '西盟');
INSERT INTO `tp_weather` VALUES ('2229', '101290911', '镇沅');
INSERT INTO `tp_weather` VALUES ('2230', '101290912', '宁洱');
INSERT INTO `tp_weather` VALUES ('2231', '101291001', '昭通');
INSERT INTO `tp_weather` VALUES ('2232', '101291002', '鲁甸');
INSERT INTO `tp_weather` VALUES ('2233', '101291003', '彝良');
INSERT INTO `tp_weather` VALUES ('2234', '101291004', '镇雄');
INSERT INTO `tp_weather` VALUES ('2235', '101291005', '威信');
INSERT INTO `tp_weather` VALUES ('2236', '101291006', '巧家');
INSERT INTO `tp_weather` VALUES ('2237', '101291007', '绥江');
INSERT INTO `tp_weather` VALUES ('2238', '101291008', '永善');
INSERT INTO `tp_weather` VALUES ('2239', '101291009', '盐津');
INSERT INTO `tp_weather` VALUES ('2240', '101291010', '大关');
INSERT INTO `tp_weather` VALUES ('2241', '101291011', '水富');
INSERT INTO `tp_weather` VALUES ('2242', '101291101', '临沧');
INSERT INTO `tp_weather` VALUES ('2243', '101291102', '沧源');
INSERT INTO `tp_weather` VALUES ('2244', '101291103', '耿马');
INSERT INTO `tp_weather` VALUES ('2245', '101291104', '双江');
INSERT INTO `tp_weather` VALUES ('2246', '101291105', '凤庆');
INSERT INTO `tp_weather` VALUES ('2247', '101291106', '永德');
INSERT INTO `tp_weather` VALUES ('2248', '101291107', '云县');
INSERT INTO `tp_weather` VALUES ('2249', '101291108', '镇康');
INSERT INTO `tp_weather` VALUES ('2250', '101291201', '怒江');
INSERT INTO `tp_weather` VALUES ('2251', '101291203', '福贡');
INSERT INTO `tp_weather` VALUES ('2252', '101291204', '兰坪');
INSERT INTO `tp_weather` VALUES ('2253', '101291205', '泸水');
INSERT INTO `tp_weather` VALUES ('2254', '101291207', '贡山');
INSERT INTO `tp_weather` VALUES ('2255', '101291301', '迪庆');
INSERT INTO `tp_weather` VALUES ('2256', '101291302', '德钦');
INSERT INTO `tp_weather` VALUES ('2257', '101291303', '维西');
INSERT INTO `tp_weather` VALUES ('2258', '101291401', '丽江');
INSERT INTO `tp_weather` VALUES ('2259', '101291402', '永胜');
INSERT INTO `tp_weather` VALUES ('2260', '101291403', '华坪');
INSERT INTO `tp_weather` VALUES ('2261', '101291404', '宁蒗');
INSERT INTO `tp_weather` VALUES ('2262', '101291501', '德宏');
INSERT INTO `tp_weather` VALUES ('2263', '101291503', '陇川');
INSERT INTO `tp_weather` VALUES ('2264', '101291504', '盈江');
INSERT INTO `tp_weather` VALUES ('2265', '101291506', '瑞丽');
INSERT INTO `tp_weather` VALUES ('2266', '101291507', '梁河');
INSERT INTO `tp_weather` VALUES ('2267', '101291508', '潞西');
INSERT INTO `tp_weather` VALUES ('2268', '101291601', '西双版纳');
INSERT INTO `tp_weather` VALUES ('2269', '101291603', '勐海');
INSERT INTO `tp_weather` VALUES ('2270', '101291605', '勐腊');
INSERT INTO `tp_weather` VALUES ('2271', '101300101', '南宁');
INSERT INTO `tp_weather` VALUES ('2272', '101300103', '邕宁');
INSERT INTO `tp_weather` VALUES ('2273', '101300104', '横县');
INSERT INTO `tp_weather` VALUES ('2274', '101300105', '隆安');
INSERT INTO `tp_weather` VALUES ('2275', '101300106', '马山');
INSERT INTO `tp_weather` VALUES ('2276', '101300107', '上林');
INSERT INTO `tp_weather` VALUES ('2277', '101300108', '武鸣');
INSERT INTO `tp_weather` VALUES ('2278', '101300109', '宾阳');
INSERT INTO `tp_weather` VALUES ('2279', '101300201', '崇左');
INSERT INTO `tp_weather` VALUES ('2280', '101300202', '天等');
INSERT INTO `tp_weather` VALUES ('2281', '101300203', '龙州');
INSERT INTO `tp_weather` VALUES ('2282', '101300204', '凭祥');
INSERT INTO `tp_weather` VALUES ('2283', '101300205', '大新');
INSERT INTO `tp_weather` VALUES ('2284', '101300206', '扶绥');
INSERT INTO `tp_weather` VALUES ('2285', '101300207', '宁明');
INSERT INTO `tp_weather` VALUES ('2286', '101300301', '柳州');
INSERT INTO `tp_weather` VALUES ('2287', '101300302', '柳城');
INSERT INTO `tp_weather` VALUES ('2288', '101300304', '鹿寨');
INSERT INTO `tp_weather` VALUES ('2289', '101300305', '柳江');
INSERT INTO `tp_weather` VALUES ('2290', '101300306', '融安');
INSERT INTO `tp_weather` VALUES ('2291', '101300307', '融水');
INSERT INTO `tp_weather` VALUES ('2292', '101300308', '三江');
INSERT INTO `tp_weather` VALUES ('2293', '101300401', '来宾');
INSERT INTO `tp_weather` VALUES ('2294', '101300402', '忻城');
INSERT INTO `tp_weather` VALUES ('2295', '101300403', '金秀');
INSERT INTO `tp_weather` VALUES ('2296', '101300404', '象州');
INSERT INTO `tp_weather` VALUES ('2297', '101300405', '武宣');
INSERT INTO `tp_weather` VALUES ('2298', '101300406', '合山');
INSERT INTO `tp_weather` VALUES ('2299', '101300501', '桂林');
INSERT INTO `tp_weather` VALUES ('2300', '101300503', '龙胜');
INSERT INTO `tp_weather` VALUES ('2301', '101300504', '永福');
INSERT INTO `tp_weather` VALUES ('2302', '101300505', '临桂');
INSERT INTO `tp_weather` VALUES ('2303', '101300506', '兴安');
INSERT INTO `tp_weather` VALUES ('2304', '101300507', '灵川');
INSERT INTO `tp_weather` VALUES ('2305', '101300508', '全州');
INSERT INTO `tp_weather` VALUES ('2306', '101300509', '灌阳');
INSERT INTO `tp_weather` VALUES ('2307', '101300510', '阳朔');
INSERT INTO `tp_weather` VALUES ('2308', '101300511', '恭城');
INSERT INTO `tp_weather` VALUES ('2309', '101300512', '平乐');
INSERT INTO `tp_weather` VALUES ('2310', '101300513', '荔浦');
INSERT INTO `tp_weather` VALUES ('2311', '101300514', '资源');
INSERT INTO `tp_weather` VALUES ('2312', '101300601', '梧州');
INSERT INTO `tp_weather` VALUES ('2313', '101300602', '藤县');
INSERT INTO `tp_weather` VALUES ('2314', '101300604', '苍梧');
INSERT INTO `tp_weather` VALUES ('2315', '101300605', '蒙山');
INSERT INTO `tp_weather` VALUES ('2316', '101300606', '岑溪');
INSERT INTO `tp_weather` VALUES ('2317', '101300701', '贺州');
INSERT INTO `tp_weather` VALUES ('2318', '101300702', '昭平');
INSERT INTO `tp_weather` VALUES ('2319', '101300703', '富川');
INSERT INTO `tp_weather` VALUES ('2320', '101300704', '钟山');
INSERT INTO `tp_weather` VALUES ('2321', '101300801', '贵港');
INSERT INTO `tp_weather` VALUES ('2322', '101300802', '桂平');
INSERT INTO `tp_weather` VALUES ('2323', '101300803', '平南');
INSERT INTO `tp_weather` VALUES ('2324', '101300901', '玉林');
INSERT INTO `tp_weather` VALUES ('2325', '101300902', '博白');
INSERT INTO `tp_weather` VALUES ('2326', '101300903', '北流');
INSERT INTO `tp_weather` VALUES ('2327', '101300904', '容县');
INSERT INTO `tp_weather` VALUES ('2328', '101300905', '陆川');
INSERT INTO `tp_weather` VALUES ('2329', '101300906', '兴业');
INSERT INTO `tp_weather` VALUES ('2330', '101301001', '百色');
INSERT INTO `tp_weather` VALUES ('2331', '101301002', '那坡');
INSERT INTO `tp_weather` VALUES ('2332', '101301003', '田阳');
INSERT INTO `tp_weather` VALUES ('2333', '101301004', '德保');
INSERT INTO `tp_weather` VALUES ('2334', '101301005', '靖西');
INSERT INTO `tp_weather` VALUES ('2335', '101301006', '田东');
INSERT INTO `tp_weather` VALUES ('2336', '101301007', '平果');
INSERT INTO `tp_weather` VALUES ('2337', '101301008', '隆林');
INSERT INTO `tp_weather` VALUES ('2338', '101301009', '西林');
INSERT INTO `tp_weather` VALUES ('2339', '101301010', '乐业');
INSERT INTO `tp_weather` VALUES ('2340', '101301011', '凌云');
INSERT INTO `tp_weather` VALUES ('2341', '101301012', '田林');
INSERT INTO `tp_weather` VALUES ('2342', '101301101', '钦州');
INSERT INTO `tp_weather` VALUES ('2343', '101301102', '浦北');
INSERT INTO `tp_weather` VALUES ('2344', '101301103', '灵山');
INSERT INTO `tp_weather` VALUES ('2345', '101301201', '河池');
INSERT INTO `tp_weather` VALUES ('2346', '101301202', '天峨');
INSERT INTO `tp_weather` VALUES ('2347', '101301203', '东兰');
INSERT INTO `tp_weather` VALUES ('2348', '101301204', '巴马');
INSERT INTO `tp_weather` VALUES ('2349', '101301205', '环江');
INSERT INTO `tp_weather` VALUES ('2350', '101301206', '罗城');
INSERT INTO `tp_weather` VALUES ('2351', '101301207', '宜州');
INSERT INTO `tp_weather` VALUES ('2352', '101301208', '凤山');
INSERT INTO `tp_weather` VALUES ('2353', '101301209', '南丹');
INSERT INTO `tp_weather` VALUES ('2354', '101301210', '都安');
INSERT INTO `tp_weather` VALUES ('2355', '101301211', '大化');
INSERT INTO `tp_weather` VALUES ('2356', '101301301', '北海');
INSERT INTO `tp_weather` VALUES ('2357', '101301302', '合浦');
INSERT INTO `tp_weather` VALUES ('2358', '101301303', '涠洲岛');
INSERT INTO `tp_weather` VALUES ('2359', '101301401', '防城港');
INSERT INTO `tp_weather` VALUES ('2360', '101301402', '上思');
INSERT INTO `tp_weather` VALUES ('2361', '101301403', '东兴');
INSERT INTO `tp_weather` VALUES ('2362', '101301405', '防城');
INSERT INTO `tp_weather` VALUES ('2363', '101310101', '海口');
INSERT INTO `tp_weather` VALUES ('2364', '101310201', '三亚');
INSERT INTO `tp_weather` VALUES ('2365', '101310202', '东方');
INSERT INTO `tp_weather` VALUES ('2366', '101310203', '临高');
INSERT INTO `tp_weather` VALUES ('2367', '101310204', '澄迈');
INSERT INTO `tp_weather` VALUES ('2368', '101310205', '儋州');
INSERT INTO `tp_weather` VALUES ('2369', '101310206', '昌江');
INSERT INTO `tp_weather` VALUES ('2370', '101310207', '白沙');
INSERT INTO `tp_weather` VALUES ('2371', '101310208', '琼中');
INSERT INTO `tp_weather` VALUES ('2372', '101310209', '定安');
INSERT INTO `tp_weather` VALUES ('2373', '101310210', '屯昌');
INSERT INTO `tp_weather` VALUES ('2374', '101310211', '琼海');
INSERT INTO `tp_weather` VALUES ('2375', '101310212', '文昌');
INSERT INTO `tp_weather` VALUES ('2376', '101310214', '保亭');
INSERT INTO `tp_weather` VALUES ('2377', '101310215', '万宁');
INSERT INTO `tp_weather` VALUES ('2378', '101310216', '陵水');
INSERT INTO `tp_weather` VALUES ('2379', '101310221', '乐东');
INSERT INTO `tp_weather` VALUES ('2380', '101310222', '五指山');
INSERT INTO `tp_weather` VALUES ('2381', '101320101', '香港');
INSERT INTO `tp_weather` VALUES ('2382', '101330101', '澳门');
INSERT INTO `tp_weather` VALUES ('2383', '101340101', '台北');
INSERT INTO `tp_weather` VALUES ('2384', '101340102', '桃园');
INSERT INTO `tp_weather` VALUES ('2385', '101340103', '新竹');
INSERT INTO `tp_weather` VALUES ('2386', '101340104', '宜兰');
INSERT INTO `tp_weather` VALUES ('2387', '101340201', '高雄');
INSERT INTO `tp_weather` VALUES ('2388', '101340202', '嘉义');
INSERT INTO `tp_weather` VALUES ('2389', '101340203', '台南');
INSERT INTO `tp_weather` VALUES ('2390', '101340204', '台东');
INSERT INTO `tp_weather` VALUES ('2391', '101340205', '屏东');
INSERT INTO `tp_weather` VALUES ('2392', '101340401', '台中');
INSERT INTO `tp_weather` VALUES ('2393', '101340402', '苗栗');
INSERT INTO `tp_weather` VALUES ('2394', '101340403', '彰化');
INSERT INTO `tp_weather` VALUES ('2395', '101340404', '南投');
INSERT INTO `tp_weather` VALUES ('2396', '101340405', '花莲');
INSERT INTO `tp_weather` VALUES ('2397', '101340406', '云林');
INSERT INTO `tp_weather` VALUES ('2398', '102010100', '首尔');
INSERT INTO `tp_weather` VALUES ('2399', '103010100', '东京');
INSERT INTO `tp_weather` VALUES ('2400', '103020100', '大阪');
INSERT INTO `tp_weather` VALUES ('2401', '103040100', '札幌');
INSERT INTO `tp_weather` VALUES ('2402', '103050100', '福冈');
INSERT INTO `tp_weather` VALUES ('2403', '103090100', '京都');
INSERT INTO `tp_weather` VALUES ('2404', '104010100', '新加坡');
INSERT INTO `tp_weather` VALUES ('2405', '105010100', '吉隆坡');
INSERT INTO `tp_weather` VALUES ('2406', '106010100', '曼谷');
INSERT INTO `tp_weather` VALUES ('2407', '107010100', '河内');
INSERT INTO `tp_weather` VALUES ('2408', '107020100', '胡志明市');
INSERT INTO `tp_weather` VALUES ('2409', '108010100', '仰光');
INSERT INTO `tp_weather` VALUES ('2410', '109010100', '万象');
INSERT INTO `tp_weather` VALUES ('2411', '111010100', '雅加达');
INSERT INTO `tp_weather` VALUES ('2412', '111080100', '登巴萨');
INSERT INTO `tp_weather` VALUES ('2413', '112010100', '德黑兰');
INSERT INTO `tp_weather` VALUES ('2414', '113010100', '新德里');
INSERT INTO `tp_weather` VALUES ('2415', '113030100', '孟买');
INSERT INTO `tp_weather` VALUES ('2416', '113090100', '斯利那加');
INSERT INTO `tp_weather` VALUES ('2417', '114010100', '伊斯兰堡');
INSERT INTO `tp_weather` VALUES ('2418', '114030100', '卡拉奇');
INSERT INTO `tp_weather` VALUES ('2419', '114040100', '白沙瓦');
INSERT INTO `tp_weather` VALUES ('2420', '115010100', '塔什干');
INSERT INTO `tp_weather` VALUES ('2421', '117010100', '科伦坡');
INSERT INTO `tp_weather` VALUES ('2422', '118010100', '喀布尔');
INSERT INTO `tp_weather` VALUES ('2423', '118030100', '坎大哈');
INSERT INTO `tp_weather` VALUES ('2424', '120010100', '斯里巴加湾');
INSERT INTO `tp_weather` VALUES ('2425', '121010100', '巴林');
INSERT INTO `tp_weather` VALUES ('2426', '124010100', '阿布扎比');
INSERT INTO `tp_weather` VALUES ('2427', '124020100', '迪拜');
INSERT INTO `tp_weather` VALUES ('2428', '127010100', '平壤');
INSERT INTO `tp_weather` VALUES ('2429', '130010100', '阿斯塔纳');
INSERT INTO `tp_weather` VALUES ('2430', '132010100', '乌兰巴托');
INSERT INTO `tp_weather` VALUES ('2431', '136010100', '马尼拉');
INSERT INTO `tp_weather` VALUES ('2432', '138010100', '利雅得');
INSERT INTO `tp_weather` VALUES ('2433', '139010100', '大马士革');
INSERT INTO `tp_weather` VALUES ('2434', '201010100', '伦敦');
INSERT INTO `tp_weather` VALUES ('2435', '201050100', '曼彻斯特');
INSERT INTO `tp_weather` VALUES ('2436', '202010100', '巴黎');
INSERT INTO `tp_weather` VALUES ('2437', '202100100', '马赛');
INSERT INTO `tp_weather` VALUES ('2438', '203010100', '柏林');
INSERT INTO `tp_weather` VALUES ('2439', '203020100', '法兰克福');
INSERT INTO `tp_weather` VALUES ('2440', '203050100', '汉堡');
INSERT INTO `tp_weather` VALUES ('2441', '204010100', '罗马');
INSERT INTO `tp_weather` VALUES ('2442', '204040100', '米兰');
INSERT INTO `tp_weather` VALUES ('2443', '205010100', '阿姆斯特丹');
INSERT INTO `tp_weather` VALUES ('2444', '206010100', '马德里');
INSERT INTO `tp_weather` VALUES ('2445', '206020100', '巴塞罗那');
INSERT INTO `tp_weather` VALUES ('2446', '207010100', '哥本哈根');
INSERT INTO `tp_weather` VALUES ('2447', '208010100', '莫斯科');
INSERT INTO `tp_weather` VALUES ('2448', '210020100', '日内瓦');
INSERT INTO `tp_weather` VALUES ('2449', '210030100', '苏黎世');
INSERT INTO `tp_weather` VALUES ('2450', '211010100', '斯德哥尔摩');
INSERT INTO `tp_weather` VALUES ('2451', '214010100', '里斯本');
INSERT INTO `tp_weather` VALUES ('2452', '215020100', '伊斯坦布尔');
INSERT INTO `tp_weather` VALUES ('2453', '216010100', '布鲁塞尔');
INSERT INTO `tp_weather` VALUES ('2454', '217010100', '维也纳');
INSERT INTO `tp_weather` VALUES ('2455', '218010100', '雅典');
INSERT INTO `tp_weather` VALUES ('2456', '222010100', '赫尔辛基');
INSERT INTO `tp_weather` VALUES ('2457', '301010100', '开罗');
INSERT INTO `tp_weather` VALUES ('2458', '302010100', '开普敦');
INSERT INTO `tp_weather` VALUES ('2459', '302020100', '约翰内斯堡');
INSERT INTO `tp_weather` VALUES ('2460', '303010100', '突尼斯');
INSERT INTO `tp_weather` VALUES ('2461', '304020100', '拉各斯');
INSERT INTO `tp_weather` VALUES ('2462', '305010100', '阿尔及尔');
INSERT INTO `tp_weather` VALUES ('2463', '311010100', '亚的斯亚贝巴');
INSERT INTO `tp_weather` VALUES ('2464', '317010100', '内罗毕');
INSERT INTO `tp_weather` VALUES ('2465', '321020100', '卡萨布兰卡');
INSERT INTO `tp_weather` VALUES ('2466', '327010100', '达喀尔');
INSERT INTO `tp_weather` VALUES ('2467', '332010100', '达累斯萨拉姆');
INSERT INTO `tp_weather` VALUES ('2468', '334010100', '卢萨卡');
INSERT INTO `tp_weather` VALUES ('2469', '401010100', '华盛顿');
INSERT INTO `tp_weather` VALUES ('2470', '401020101', '迈阿密');
INSERT INTO `tp_weather` VALUES ('2471', '401020104', '奥兰多');
INSERT INTO `tp_weather` VALUES ('2472', '401030101', '亚特兰大');
INSERT INTO `tp_weather` VALUES ('2473', '401040101', '洛杉矶');
INSERT INTO `tp_weather` VALUES ('2474', '401040102', '圣弗朗西斯科');
INSERT INTO `tp_weather` VALUES ('2475', '401060100', '波士顿');
INSERT INTO `tp_weather` VALUES ('2476', '401070101', '芝加哥');
INSERT INTO `tp_weather` VALUES ('2477', '401100101', '西雅图');
INSERT INTO `tp_weather` VALUES ('2478', '401110101', '纽约');
INSERT INTO `tp_weather` VALUES ('2479', '401120108', '休斯敦');
INSERT INTO `tp_weather` VALUES ('2480', '401370100', '拉斯维加斯');
INSERT INTO `tp_weather` VALUES ('2481', '401480100', '火奴鲁鲁');
INSERT INTO `tp_weather` VALUES ('2482', '404010100', '渥太华');
INSERT INTO `tp_weather` VALUES ('2483', '404030100', '温哥华');
INSERT INTO `tp_weather` VALUES ('2484', '404040100', '多伦多');
INSERT INTO `tp_weather` VALUES ('2485', '404130100', '埃德蒙顿');
INSERT INTO `tp_weather` VALUES ('2486', '404140100', '卡尔加里');
INSERT INTO `tp_weather` VALUES ('2487', '404220100', '温尼伯');
INSERT INTO `tp_weather` VALUES ('2488', '404230100', '魁北克');
INSERT INTO `tp_weather` VALUES ('2489', '404240100', '蒙特利尔');
INSERT INTO `tp_weather` VALUES ('2490', '406010100', '哈瓦那');
INSERT INTO `tp_weather` VALUES ('2491', '411010100', '墨西哥城');
INSERT INTO `tp_weather` VALUES ('2492', '416010100', '加拉加斯');
INSERT INTO `tp_weather` VALUES ('2493', '601020101', '悉尼');
INSERT INTO `tp_weather` VALUES ('2494', '601030101', '布里斯班');
INSERT INTO `tp_weather` VALUES ('2495', '601040101', '阿德来德');
INSERT INTO `tp_weather` VALUES ('2496', '601060101', '墨尔本');
INSERT INTO `tp_weather` VALUES ('2497', '601070101', '珀斯');
INSERT INTO `tp_weather` VALUES ('2498', '606010100', '惠灵顿');
INSERT INTO `tp_weather` VALUES ('2499', '606020100', '奥克兰');
INSERT INTO `tp_weather` VALUES ('2500', '606030100', '克莱斯特彻奇');
INSERT INTO `tp_weather` VALUES ('2501', '101030100', '天津');

-- ----------------------------
-- Table structure for `tp_wecha_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_wecha_user`;
CREATE TABLE `tp_wecha_user` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY  (`token`,`wecha_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wecha_user
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_wedding`
-- ----------------------------
DROP TABLE IF EXISTS `tp_wedding`;
CREATE TABLE `tp_wedding` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `title` varchar(20) NOT NULL,
  `keyword` varchar(20) NOT NULL,
  `coverurl` varchar(300) NOT NULL,
  `openpic` varchar(300) NOT NULL,
  `picurl` varchar(300) NOT NULL,
  `man` varchar(10) NOT NULL,
  `woman` varchar(10) NOT NULL,
  `who_first` tinyint(1) NOT NULL,
  `telphone` varchar(30) NOT NULL,
  `statdate` int(11) NOT NULL,
  `address` varchar(60) NOT NULL,
  `lng` varchar(30) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `video` varchar(150) NOT NULL,
  `mp3url` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `word` varchar(150) NOT NULL,
  `qr_code` varchar(100) NOT NULL,
  `copyrite` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wedding
-- ----------------------------
INSERT INTO `tp_wedding` VALUES ('1', 'eurggv1390065711', '8888', '888', 'http://bcs.duapp.com/baeimgs/Tnh1ROgm93.png', 'http://bcs.duapp.com/baeimgs/jNuxaj1cAj.jpg', 'http://bcs.duapp.com/baeimgs/2cDQtFbl75.jpg', 'AAA', 'BBB', '0', '888888888', '1390060800', '66666', '353', '34', '', '11.mp3', '123', '亲爱的朋友，我要结婚了，希望能在我的婚礼上得到你的祝福，并祝愿你也幸福。', '111111111', 'sdcm', '0');
INSERT INTO `tp_wedding` VALUES ('2', 'knmdyy1390207240', '微喜帖', '微喜帖', 'http://bcs.duapp.com/baeimgs/Tnh1ROgm93.png', 'http://bcs.duapp.com/baeimgs/jNuxaj1cAj.jpg', 'http://bcs.duapp.com/baeimgs/2cDQtFbl75.jpg', '刘德华', '朱丽倩', '1', '021-88888888', '1390147200', '合肥市政务区南二环路3818号万达广场', '113.275031', '23.126048', 'http://www.w3school.com.cn/example/html5/mov_bbb.mp4', '1.mp3', '123456', '亲爱的朋友，我要结婚了，希望能在我的婚礼上得到你的祝福，并祝愿你也幸福。', 'https://mp.weixin.qq.com/cgi-bin/getqrcode?fakeid=2398768761&token=777203496&style=1&action=download', '同盟科技', '0');

-- ----------------------------
-- Table structure for `tp_wedding_info`
-- ----------------------------
DROP TABLE IF EXISTS `tp_wedding_info`;
CREATE TABLE `tp_wedding_info` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `telphone` varchar(30) NOT NULL,
  `count` int(11) NOT NULL default '0',
  `content` varchar(120) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wedding_info
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_wedding_photo`
-- ----------------------------
DROP TABLE IF EXISTS `tp_wedding_photo`;
CREATE TABLE `tp_wedding_photo` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `picurl` varchar(300) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `info` varchar(120) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wedding_photo
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_weidiaoyan`
-- ----------------------------
DROP TABLE IF EXISTS `tp_weidiaoyan`;
CREATE TABLE `tp_weidiaoyan` (
  `id` int(10) NOT NULL auto_increment,
  `token` varchar(30) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `keyword` varchar(100) NOT NULL default '',
  `intro` varchar(400) NOT NULL default '',
  `content` text NOT NULL,
  `time` int(10) NOT NULL default '0',
  `successtip` varchar(60) NOT NULL default '',
  `failtip` varchar(60) NOT NULL default '',
  `endtime` int(10) NOT NULL default '0',
  `logourl` varchar(300) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `token` (`token`),
  KEY `endtime` (`endtime`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_weidiaoyan
-- ----------------------------
INSERT INTO `tp_weidiaoyan` VALUES ('1', 'qmxpbf1390048289', '微调研', '调研', '调研简介', '图文详细', '1390049310', '', '', '1453910399', 'http://demo.ueat.cn/Uploads/image/20140118/52da4f31a037c.jpg');
INSERT INTO `tp_weidiaoyan` VALUES ('2', 'seeebp1390203728', '调研', '微调研', '调研简介', '图文', '1390204618', '', '', '1391270399', 'http://demo.ueat.cn/uploads/s/seeebp1390203728/9/1/4/8/thumb_52dcd6c06fe8f.jpg');
INSERT INTO `tp_weidiaoyan` VALUES ('3', 'knmdyy1390207240', '微调研', '调研', '', '', '1390207995', '', '', '1420819199', '/Uploads/image/20140123/52e13e19771c4.jpg');

-- ----------------------------
-- Table structure for `tp_weidiaoyan_input`
-- ----------------------------
DROP TABLE IF EXISTS `tp_weidiaoyan_input`;
CREATE TABLE `tp_weidiaoyan_input` (
  `id` int(10) NOT NULL auto_increment,
  `formid` int(10) NOT NULL default '0',
  `displayname` varchar(30) NOT NULL default '',
  `fieldname` varchar(30) NOT NULL default '',
  `inputtype` varchar(20) NOT NULL default '',
  `options` varchar(200) NOT NULL default '',
  `require` tinyint(1) NOT NULL default '0',
  `regex` varchar(100) NOT NULL default '',
  `taxis` mediumint(4) NOT NULL default '0',
  `errortip` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `formid` (`formid`,`taxis`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_weidiaoyan_input
-- ----------------------------
INSERT INTO `tp_weidiaoyan_input` VALUES ('1', '1', '用户名', 'un', 'text', '', '1', '', '1', '');
INSERT INTO `tp_weidiaoyan_input` VALUES ('2', '4', '非常满意', 'dy', 'select', '', '1', '', '1', '格式不正确，请重新输入。');
INSERT INTO `tp_weidiaoyan_input` VALUES ('3', '4', '比较满意', 'bjmy', 'select', '', '1', '', '2', '');
INSERT INTO `tp_weidiaoyan_input` VALUES ('4', '4', '不太满意', 'btmy', 'select', '', '1', '', '3', '');
INSERT INTO `tp_weidiaoyan_input` VALUES ('5', '4', '不满意', 'bmy', 'select', '', '1', '', '4', '');
INSERT INTO `tp_weidiaoyan_input` VALUES ('6', '4', '非常不满意', 'fcbmy', 'select', '', '1', '', '5', '');

-- ----------------------------
-- Table structure for `tp_weidiaoyan_value`
-- ----------------------------
DROP TABLE IF EXISTS `tp_weidiaoyan_value`;
CREATE TABLE `tp_weidiaoyan_value` (
  `id` int(10) NOT NULL auto_increment,
  `formid` int(10) NOT NULL default '0',
  `wecha_id` varchar(50) NOT NULL default '',
  `values` varchar(2000) NOT NULL default '',
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `formid` (`formid`,`wecha_id`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_weidiaoyan_value
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_wxuser`
-- ----------------------------
DROP TABLE IF EXISTS `tp_wxuser`;
CREATE TABLE `tp_wxuser` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `wxname` varchar(60) NOT NULL COMMENT '公众号名称',
  `wxid` varchar(20) NOT NULL COMMENT '公众号原始ID',
  `weixin` char(20) NOT NULL COMMENT '微信号',
  `headerpic` char(255) NOT NULL COMMENT '头像地址',
  `token` char(255) NOT NULL,
  `province` varchar(30) NOT NULL COMMENT '省',
  `color_id` mediumint(4) NOT NULL default '0',
  `city` varchar(60) NOT NULL COMMENT '市',
  `qq` char(25) NOT NULL COMMENT '公众号邮箱',
  `wxfans` int(11) NOT NULL COMMENT '微信粉丝',
  `typeid` int(11) NOT NULL COMMENT '分类ID',
  `typename` varchar(90) NOT NULL default '0' COMMENT '分类名',
  `tongji` text NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `tpltypeid` varchar(2) NOT NULL default '1' COMMENT '默认首页模版ID',
  `updatetime` varchar(13) NOT NULL,
  `tpltypename` varchar(20) NOT NULL COMMENT '首页模版名',
  `tpllistid` varchar(2) NOT NULL COMMENT '列表模版ID',
  `tpllistname` varchar(20) NOT NULL COMMENT '列表模版名',
  `tplcontentid` varchar(2) NOT NULL COMMENT '内容模版ID',
  `tplcontentname` varchar(20) NOT NULL COMMENT '内容模版名',
  `allcardnum` int(11) NOT NULL,
  `yetcardnum` int(11) NOT NULL,
  `cardisok` int(11) NOT NULL,
  `totalcardnum` int(11) NOT NULL,
  `phone` text NOT NULL,
  `smsstatus` text NOT NULL,
  `smsuser` text NOT NULL,
  `smspassword` text NOT NULL,
  `email` text NOT NULL,
  `emailstatus` text NOT NULL,
  `emailuser` text NOT NULL,
  `emailpassword` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_wxuser
-- ----------------------------
INSERT INTO `tp_wxuser` VALUES ('3', '2', '同盟科技', 'gh_fa4f0b5b01f8', 'uutmnet', './tpl/User/default/common/images/portrait.jpg', 'seeebp1390203728', '山东', '0', '青岛', 'uutm@qq.com', '0', '1', '情感', '', '1390203750', '1', '1390203750', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('5', '1', '同盟科技', 'gh_fa4f0b5b01f8', 'uutmnet', './tpl/User/default/common/images/portrait.jpg', 'knmdyy1390207240', '山东', '0', '青岛', 'uutm@qq.com', '0', '1', '情感', '', '1390207256', '39', '1390207256', '139_index', '1', 'yl_list', '1', 'ktv_content', '10000', '0', '1', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('7', '3', '手机网站', 'gh_880cbc13f6a3', 'Fashion-daren', './tpl/User/default/common/images/portrait.jpg', 'hxvmfm1390311776', '浙江', '0', '杭州', '1388292750@yourdomain.com', '0', '1', '情感', '', '1390311783', '1', '1390311783', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('8', '4', '111111', 'gh_423dwjkeww3', '111111', './tpl/User/default/common/images/portrait.jpg', 'mtlymo1390370507', '1111', '0', '1111', '111@11.com', '0', '1', '情感', '', '1390370530', '1', '1390370546', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('9', '6', 'phonegap中文网', 'gh_55cfa095b22e', 'phonegap100_com', './tpl/User/default/common/images/portrait.jpg', 'zpbqjb1391609865', '北京', '3', '北京', '1391609865@yourdomain.com', '0', '1', '情感', '', '1391609874', '27', '1391661458', '127_index', '1', 'yl_list', '1', 'ktv_content', '10000', '0', '1', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('10', '7', '启鸿教育咨询', 'gh_2ecc1d3e13a4', 'qhjiaoyu', './tpl/User/default/common/images/portrait.jpg', 'feedrk1391692825', '青海', '0', '西宁', '1391692825@yourdomain.com', '0', '8', '', '', '1391692879', '36', '1391829050', '136_index', '1', 'yl_list', '3', 'ktv_content', '10000', '0', '1', '0', '', '', '', '', 'sdyclzy@qq.com', '1', '1049937757', '20131126QiHonG');
INSERT INTO `tp_wxuser` VALUES ('12', '7', '启鸿校园生活', 'gh_bbfed3b7d112', 'qhxysh', './tpl/User/default/common/images/portrait.jpg', 'btmdkz1392007679', '青海', '0', '西宁', '1392007679@yourdomain.com', '0', '8', '服务', '', '1392007727', '30', '1392007727', '130_index', '1', 'yl_list', '1', 'ktv_content', '10000', '0', '1', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('13', '7', '启鸿生活服务', 'gh_302baca54c73', 'qhlive', './tpl/User/default/common/images/portrait.jpg', 'tiixha1392039987', '青海', '0', '西宁', '1392039987@yourdomain.com', '0', '7', '生活', '', '1392040022', '1', '1392040022', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('14', '7', '启鸿信息技术', 'gh_7604dcf72814', 'qhxxjs', './tpl/User/default/common/images/portrait.jpg', 'usyhhb1392205269', '青海', '2', '西宁', '1392205269@yourdomain.com', '0', '4', 'IT', '', '1392205306', '36', '1392205306', '136_index', '1', 'yl_list', '3', 'ktv_content', '10000', '0', '1', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('16', '13', '顺心便利小店', 'gh_b732e6483962', 'dongkai379181691', './tpl/User/default/common/images/portrait.jpg', 'sbhydc1392964286', '山东', '0', '济南', '1392964286@yourdomain.com', '0', '6', '', '', '1392964352', '1', '1393063074', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '10000', '0', '0', '0', '18754132531', '1', '379181691', 'lqb/379181691', '379181691@qq.com', '1', '379181691', 'lqb/379181691');
INSERT INTO `tp_wxuser` VALUES ('17', '18', 'Gms小四海', 'gh_9b650f4c1ef4', 'Wx_gms', './tpl/User/default/common/images/portrait.jpg', 'lrdbim1393515676', '北京', '0', '北京', '1393515676@yourdomain.com', '0', '8', '服务', '', '1393515757', '1', '1393515757', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('18', '22', '王小贱', 'gh_7ac0869a24e7', 'wangxiaojian-007', './tpl/User/default/common/images/portrait.jpg', 'rzakjq1393673210', '天津', '0', '天津', '1393673210@yourdomain.com', '0', '3', '娱乐', '', '1393673257', '39', '1393673257', '139_index', '1', 'yl_list', '1', 'ktv_content', '10000', '0', '1', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('19', '24', '昆明康辉旅游', 'gh_17265c7cd5ad', 'su112166', './tpl/User/default/common/images/portrait.jpg', 'fszlvn1393745874', '云南', '0', '昆明', '1393745874@yourdomain.com', '0', '8', '服务', '', '1393746244', '1', '1393746244', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('20', '26', '米图设计', 'gh_92f85d511c51', 'CNMT0663', './tpl/User/default/common/images/portrait.jpg', 'bebwmx1393770649', '广东', '0', '揭阳', '1393770649@yourdomain.com', '0', '1', '情感', '', '1393770668', '1', '1393770668', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('21', '28', '歧轩堂', 'gh_b18763321255', 'qxt2010', './tpl/User/default/common/images/portrait.jpg', 'gdrzeh1393818868', '广东', '0', '广州', '1393818868@yourdomain.com', '0', '7', '生活', '', '1393818881', '1', '1393818881', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('22', '31', 'qianjiuzm', 'gh_88eeae6f12cc', 'zm08150425', './tpl/User/default/common/images/portrait.jpg', 'yyrjmn1393833036', '广东', '0', '深圳', '1393833036@yourdomain.com', '0', '1', '情感', '', '1393833175', '1', '1393833175', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('23', '7', '青海名贵土特产', 'gh_61c4255d644a', 'qhmgttc', './tpl/User/default/common/images/portrait.jpg', 'kkxebf1393860973', '青海', '0', '西宁', '1393860973@yourdomain.com', '0', '1', '情感', '', '1393861005', '38', '1393861005', '138_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('24', '34', '湖北高校达人秀', 'gh_d98027607302', 'hbgaoxiaodarenxiu', './tpl/User/default/common/images/portrait.jpg', 'nrvvht1393908809', '湖北', '2', '武汉', '1393908809@yourdomain.com', '0', '3', '娱乐', '', '1393908920', '36', '1393908920', '136_index', '1', 'yl_list', '3', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('25', '36', '湖南杨伙计餐饮', 'gh_5de41ae41a06', 'Yanghuoji_12', './tpl/User/default/common/images/portrait.jpg', 'msowdl1393998402', '湖南', '0', '岳阳', '1393998402@yourdomain.com', '0', '7', '生活', '', '1393998573', '8', '1393998573', '108_index', '1', 'yl_list', '1', 'ktv_content', '10000', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('27', '38', '李途', 'gh_a896b7577dda', 'mopome', './tpl/User/default/common/images/portrait.jpg', 'egagky1394029884', '北京', '0', '北京', '1394029884@yourdomain.com', '0', '7', '生活', '', '1394029957', '34', '1394029957', '134_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('28', '39', '羯图广告装饰艺术', 'gh_6e88109f6cc7', 'jeetoo', './tpl/User/default/common/images/portrait.jpg', 'vtvmqz1394050307', '广西', '0', '南宁', '1394050307@yourdomain.com', '0', '8', '服务', '', '1394050460', '1', '1394050460', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('29', '47', '阜阳华联', 'gh_1436be4476b8', 'fyxiaohua', './tpl/User/default/common/images/portrait.jpg', 'ymivkz1394500574', '安徽', '0', '阜阳', '1394500574@yourdomain.com', '900', '6', '购物', '', '1394500701', '26', '1394504619', '126_index', '1', 'yl_list', '1', 'yl_content', '10000', '0', '1', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('30', '53', '新快线科技', 'gh_5103cb3fd56d', 'bjxkx_weixin', './tpl/User/default/common/images/portrait.jpg', 'txoohl1394767478', '北京', '0', '北京', '1394767478@yourdomain.com', '0', '8', '服务', '', '1394767652', '1', '1394767652', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '10', '0', '1', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('31', '55', '微视界', 'gh_44444326350e', 'A_weishine', './tpl/User/default/common/images/portrait.jpg', 'algrak1394810875', '广东', '0', '东莞', '1394810875@yourdomain.com', '0', '4', 'IT', '', '1394811011', '27', '1394811011', '127_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('32', '15', 'Esri-test', 'gh_cadd58516a76', 'Esri-test', './tpl/User/default/common/images/portrait.jpg', 'bjjxjc1395216010', '北京', '0', '北京', '1395216010@yourdomain.com', '0', '4', 'IT', '', '1395216120', '37', '1395216120', '137_index', '1', 'yl_list', '3', 'ktv_content', '10000', '0', '1', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('33', '62', '法国进口胶原蛋白罗赛洛', 'gh_fc7d28f6164d', 'lsl2863689366', './tpl/User/default/common/images/portrait.jpg', 'mcgurh1395371186', '上海', '0', '上海', '1395371186@yourdomain.com', '0', '7', '生活', '', '1395371201', '1', '1395371201', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('34', '63', 'dajialjx', 'gh_b3926528922a', 'dajialjx90', './tpl/User/default/common/images/portrait.jpg', 'ciscly1395386856', '浙江', '0', '杭州', '1395386856@yourdomain.com', '0', '1', '情感', '', '1395386977', '15', '1395386977', '115_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('35', '66', '颐和环保', 'gh_e475a4b6524a', 'zqyhhb', './tpl/User/default/common/images/portrait.jpg', 'ygmvgq1395557599', '广东', '0', '肇庆', '1395557599@yourdomain.com', '0', '8', '服务', '', '1395557629', '1', '1395557629', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('36', '69', '西宁新标门窗衣柜', 'gh_efc8d7732469', 'xbmcyg', './tpl/User/default/common/images/portrait.jpg', 'wdkszz1395625484', '青海', '0', '西宁', '1395625484@yourdomain.com', '0', '7', '生活', '', '1395625572', '1', '1395625572', '101_index', '1', 'yl_list', '1', 'ktv_content', '10000', '0', '1', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('37', '72', '南珠网', 'gh_d9f8b4e98143', 'hepunz', './tpl/User/default/common/images/portrait.jpg', 'qdxqhj1395665354', '广西', '0', '北海', '1395665354@yourdomain.com', '0', '8', '服务', '', '1395665441', '9', '1395665441', '109_index', '1', 'yl_list', '1', 'ktv_content', '10', '0', '1', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('38', '74', '新长城自强社', 'gh_bc4a9105aaa2', 'xccqhdxzqs', './tpl/User/default/common/images/portrait.jpg', 'wgsiap1395669220', '青海', '4', '西宁', '1395669220@yourdomain.com', '0', '8', '', '', '1395669501', '9', '1395738945', '109_index', '1', 'yl_list', '3', 'ktv_content', '10000', '0', '1', '0', '', '', '', '', '2870180354@qq.com', '1', '2870180354', 'xccqhdxzqs');
INSERT INTO `tp_wxuser` VALUES ('39', '78', '南昌家家户户网', 'gh_cd988b383f3f', 'jjhh0791-com', './tpl/User/default/common/images/portrait.jpg', 'awekmt1395718491', '江西', '0', '南昌', '1395718491@yourdomain.com', '0', '8', '服务', '', '1395718824', '1', '1395718824', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '0', '0', '0', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('40', '75', '逸山伍自转小火锅', 'gh_992bc6e08d27', 'yswzzhg', './tpl/User/default/common/images/portrait.jpg', 'gfqlqk1395814571', '青海', '0', '西宁', '1395814571@yourdomain.com', '0', '7', '生活', '', '1395814598', '1', '1395814598', '101_index', '1', 'yl_list', '1', 'ktv_content', '10000', '0', '1', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('41', '110', '志达软件', 'gh_f729063e4b6a', 'zhidarj', './tpl/User/default/common/images/portrait.jpg', 'vbbgps1396228640', '湖南', '0', '长沙', '1396228640@yourdomain.com', '0', '4', 'IT', '', '1396228699', '1', '1396228699', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '10000', '0', '1', '0', '', '', '', '', '', '', '', '');
INSERT INTO `tp_wxuser` VALUES ('42', '114', 'phonegap中文网', 'gh_55cfa095b22e', 'phonegap100_com', './tpl/User/default/common/images/portrait.jpg', 'vkcycb1400396702', '北京', '0', '北京市', '1400396702@yourdomain.com', '0', '1', '情感', '', '1400396717', '1', '1400396717', 'ty_index', '1', 'yl_list', '1', 'ktv_content', '10000', '0', '1', '0', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `tp_xitie`
-- ----------------------------
DROP TABLE IF EXISTS `tp_xitie`;
CREATE TABLE `tp_xitie` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(40) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `title` varchar(200) default NULL,
  `pic` varchar(100) default NULL,
  `opening_animation` varchar(100) default NULL,
  `small_pic` varchar(100) default NULL,
  `man_name` varchar(20) default NULL,
  `girl_name` varchar(20) default NULL,
  `time` varchar(30) default NULL,
  `address` varchar(50) default NULL,
  `video` varchar(100) default NULL,
  `longitude` varchar(50) default NULL,
  `latitude` varchar(50) default NULL,
  `background_music` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `site_map_2` varchar(100) default NULL,
  `site_map_3` varchar(100) default NULL,
  `site_map_4` varchar(100) default NULL,
  `site_map_5` varchar(100) default NULL,
  `site_map_1` varchar(100) default NULL,
  `phone` varchar(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_xitie
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_yuyue`
-- ----------------------------
DROP TABLE IF EXISTS `tp_yuyue`;
CREATE TABLE `tp_yuyue` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `token` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `title` varchar(200) default NULL,
  `address` varchar(100) default NULL,
  `longitude` varchar(100) default NULL,
  `latitude` varchar(100) default NULL,
  `phone` varchar(20) default NULL,
  `topic` varchar(200) default NULL,
  `info` varchar(500) default NULL,
  `statdate` date default NULL,
  `enddate` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_yuyue
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_yuyue_order`
-- ----------------------------
DROP TABLE IF EXISTS `tp_yuyue_order`;
CREATE TABLE `tp_yuyue_order` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `pid` int(11) NOT NULL,
  `token` varchar(40) NOT NULL,
  `name` varchar(20) default NULL,
  `phone` varchar(11) default NULL,
  `date` datetime default NULL,
  `num` int(4) default NULL,
  `memo` varchar(200) default NULL,
  `type` smallint(4) default '0',
  `wecha_id` int(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_yuyue_order
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_zhufu`
-- ----------------------------
DROP TABLE IF EXISTS `tp_zhufu`;
CREATE TABLE `tp_zhufu` (
  `id` int(11) NOT NULL auto_increment,
  `xid` int(11) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `token` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `phone` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_zhufu
-- ----------------------------
