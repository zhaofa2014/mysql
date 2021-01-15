# -----------------------------------------------------------
# Description:备份的数据表[结构] xyh_abc,xyh_abc_detail,xyh_active,xyh_admin,xyh_announce,xyh_area,xyh_article,xyh_attachment,xyh_attachment_index,xyh_auth_group,xyh_auth_group_access,xyh_auth_rule,xyh_category,xyh_category_access,xyh_comment,xyh_config,xyh_copyfrom,xyh_department,xyh_free_block,xyh_guestbook,xyh_item_group,xyh_item_info,xyh_link,xyh_member,xyh_member_detail,xyh_member_group,xyh_menu,xyh_model,xyh_order_action,xyh_order_detail,xyh_order_info,xyh_picture,xyh_product,xyh_search_all,xyh_soft,xyh_special,xyh_tag,xyh_tag_index
# Description:备份的数据表[数据] xyh_abc,xyh_abc_detail,xyh_active,xyh_admin,xyh_announce,xyh_area,xyh_article,xyh_attachment,xyh_attachment_index,xyh_auth_group,xyh_auth_group_access,xyh_auth_rule,xyh_category,xyh_category_access,xyh_comment,xyh_config,xyh_copyfrom,xyh_department,xyh_free_block,xyh_guestbook,xyh_item_group,xyh_item_info,xyh_link,xyh_member,xyh_member_detail,xyh_member_group,xyh_menu,xyh_model,xyh_order_action,xyh_order_detail,xyh_order_info,xyh_picture,xyh_product,xyh_search_all,xyh_soft,xyh_special,xyh_tag,xyh_tag_index
# Time: 2019-04-25 15:40:54
# -----------------------------------------------------------
# SQLFile Label:#1
# -----------------------------------------------------------


# 表的结构 xyh_abc 
DROP TABLE IF EXISTS `xyh_abc`;
CREATE TABLE `xyh_abc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `remark` varchar(50) DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `setting` varchar(200) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `num` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '调用数',
  `items` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_abc_detail 
DROP TABLE IF EXISTS `xyh_abc_detail`;
CREATE TABLE `xyh_abc_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `start_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `end_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_active 
DROP TABLE IF EXISTS `xyh_active`;
CREATE TABLE `xyh_active` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `code` varchar(11) NOT NULL DEFAULT '' COMMENT '激活码',
  `expire` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_admin 
DROP TABLE IF EXISTS `xyh_admin`;
CREATE TABLE `xyh_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `encrypt` varchar(6) NOT NULL DEFAULT '',
  `department` varchar(255) DEFAULT '' COMMENT '部门',
  `realname` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `user_type` tinyint(4) NOT NULL DEFAULT '0',
  `login_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `login_ip` varchar(30) NOT NULL DEFAULT '' COMMENT '登录IP',
  `is_lock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '锁定状态',
  `login_num` int(11) DEFAULT '0' COMMENT '登录次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='网站后台管理员表' ;

# 表的结构 xyh_announce 
DROP TABLE IF EXISTS `xyh_announce`;
CREATE TABLE `xyh_announce` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `start_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '开始时间',
  `end_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '结束时间',
  `post_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '添加时间',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_area 
DROP TABLE IF EXISTS `xyh_area`;
CREATE TABLE `xyh_area` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `sname` varchar(10) NOT NULL DEFAULT '' COMMENT '简称',
  `ename` varchar(50) NOT NULL DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_article 
DROP TABLE IF EXISTS `xyh_article`;
CREATE TABLE `xyh_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `short_title` varchar(100) NOT NULL DEFAULT '' COMMENT '副标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `copyfrom` varchar(30) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `content` text COMMENT '内容',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `publish_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `update_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `point` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '权重[越大越前]',
  `comment_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jump_url` varchar(200) NOT NULL DEFAULT '',
  `delete_status` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `audit_status` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '审核状态[0未审核,1通过]',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_attachment 
DROP TABLE IF EXISTS `xyh_attachment`;
CREATE TABLE `xyh_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '' COMMENT '原文件名',
  `file_path` varchar(200) NOT NULL DEFAULT '',
  `file_type` smallint(6) NOT NULL DEFAULT '1',
  `file_size` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `has_litpic` tinyint(1) NOT NULL DEFAULT '1',
  `upload_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_attachment_index 
DROP TABLE IF EXISTS `xyh_attachment_index`;
CREATE TABLE `xyh_attachment_index` (
  `att_id` int(10) unsigned NOT NULL DEFAULT '0',
  `arc_id` int(10) unsigned NOT NULL DEFAULT '0',
  `model_id` int(10) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(20) NOT NULL DEFAULT '',
  KEY `att_id` (`att_id`) USING BTREE,
  KEY `arc_id` (`arc_id`) USING BTREE,
  KEY `model_id` (`model_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_auth_group 
DROP TABLE IF EXISTS `xyh_auth_group`;
CREATE TABLE `xyh_auth_group` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '',
  `description` varchar(200) DEFAULT '' COMMENT '描述',
  `status` tinyint(3) unsigned DEFAULT '0',
  `rules` text,
  `department_id` int(11) DEFAULT '0' COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_auth_group_access 
DROP TABLE IF EXISTS `xyh_auth_group_access`;
CREATE TABLE `xyh_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_auth_rule 
DROP TABLE IF EXISTS `xyh_auth_rule`;
CREATE TABLE `xyh_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `name` varchar(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型[1支持表达式]',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `condition` varchar(100) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_category 
DROP TABLE IF EXISTS `xyh_category`;
CREATE TABLE `xyh_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目分类名称',
  `ename` varchar(200) NOT NULL DEFAULT '' COMMENT '别名',
  `cat_pic` varchar(150) NOT NULL DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类',
  `model_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属模型',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类别',
  `seo_title` varchar(50) NOT NULL DEFAULT '',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '关键字',
  `template_category` varchar(60) NOT NULL DEFAULT '',
  `template_list` varchar(60) NOT NULL DEFAULT '',
  `template_show` varchar(60) NOT NULL DEFAULT '',
  `style` varchar(70) DEFAULT '' COMMENT 'css样式class',
  `content` text COMMENT '内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '显示',
  `sort` smallint(6) NOT NULL DEFAULT '100' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='栏目分类表' ;

# 表的结构 xyh_category_access 
DROP TABLE IF EXISTS `xyh_category_access`;
CREATE TABLE `xyh_category_access` (
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `role_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action` varchar(30) NOT NULL DEFAULT '',
  KEY `catid` (`cat_id`),
  KEY `roleid` (`role_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_comment 
DROP TABLE IF EXISTS `xyh_comment`;
CREATE TABLE `xyh_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL DEFAULT '0',
  `model_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `agent` varchar(255) NOT NULL DEFAULT '',
  `post_time` datetime NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `post_id` (`post_id`) USING BTREE,
  KEY `model_id` (`model_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_config 
DROP TABLE IF EXISTS `xyh_config`;
CREATE TABLE `xyh_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '标识',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '说明',
  `t_value` varchar(150) NOT NULL DEFAULT '' COMMENT 'html元素类型',
  `type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分组',
  `s_value` text COMMENT '值',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type_id` (`type_id`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_copyfrom 
DROP TABLE IF EXISTS `xyh_copyfrom`;
CREATE TABLE `xyh_copyfrom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` varchar(30) NOT NULL DEFAULT '',
  `siteurl` varchar(200) NOT NULL DEFAULT '',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_department 
DROP TABLE IF EXISTS `xyh_department`;
CREATE TABLE `xyh_department` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '部门名称',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级部门',
  `description` varchar(200) NOT NULL DEFAULT '' COMMENT '描述',
  `sorting` int(10) unsigned DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_free_block 
DROP TABLE IF EXISTS `xyh_free_block`;
CREATE TABLE `xyh_free_block` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(200) NOT NULL DEFAULT '' COMMENT '说明',
  `content` text COMMENT '内容',
  `block_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_guestbook 
DROP TABLE IF EXISTS `xyh_guestbook`;
CREATE TABLE `xyh_guestbook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `homepage` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `post_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `reply_time` datetime DEFAULT NULL COMMENT '更新时间',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `private_flag` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '悄悄话',
  `content` text,
  `reply` text,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_item_group 
DROP TABLE IF EXISTS `xyh_item_group`;
CREATE TABLE `xyh_item_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `remark` varchar(20) DEFAULT '',
  `status` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_item_info 
DROP TABLE IF EXISTS `xyh_item_info`;
CREATE TABLE `xyh_item_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `group` varchar(20) NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_link 
DROP TABLE IF EXISTS `xyh_link`;
CREATE TABLE `xyh_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `is_check` tinyint(1) NOT NULL DEFAULT '1' COMMENT '首页|内页',
  `post_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_member 
DROP TABLE IF EXISTS `xyh_member`;
CREATE TABLE `xyh_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` varchar(6) NOT NULL DEFAULT '',
  `nickname` varchar(20) DEFAULT '',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `face` varchar(60) NOT NULL DEFAULT '' COMMENT '头像',
  `reg_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `login_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `login_ip` varchar(20) DEFAULT '',
  `login_num` int(10) unsigned DEFAULT '0',
  `group_id` int(10) unsigned DEFAULT '0',
  `message` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_lock` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_member_detail 
DROP TABLE IF EXISTS `xyh_member_detail`;
CREATE TABLE `xyh_member_detail` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `realname` varchar(30) NOT NULL DEFAULT '',
  `birthday` date NOT NULL DEFAULT '1980-01-01',
  `province` int(10) unsigned NOT NULL DEFAULT '0',
  `area` int(10) unsigned NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(12) NOT NULL DEFAULT '',
  `tel` varchar(15) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `animal` int(10) unsigned NOT NULL DEFAULT '0',
  `star` int(10) unsigned NOT NULL DEFAULT '0',
  `blood` int(10) unsigned NOT NULL DEFAULT '0',
  `marital` int(10) unsigned NOT NULL DEFAULT '0',
  `education` int(10) unsigned NOT NULL DEFAULT '0',
  `vocation` int(10) unsigned NOT NULL DEFAULT '0',
  `income` int(10) unsigned NOT NULL DEFAULT '0',
  `maxim` varchar(100) NOT NULL DEFAULT '',
  `update_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_member_group 
DROP TABLE IF EXISTS `xyh_member_group`;
CREATE TABLE `xyh_member_group` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `sort` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_menu 
DROP TABLE IF EXISTS `xyh_menu`;
CREATE TABLE `xyh_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `quick` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '显示',
  `sort` smallint(6) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_model 
DROP TABLE IF EXISTS `xyh_model`;
CREATE TABLE `xyh_model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `table_name` varchar(30) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_category` varchar(60) NOT NULL DEFAULT '',
  `template_list` varchar(60) NOT NULL DEFAULT '',
  `template_show` varchar(60) NOT NULL DEFAULT '',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_order_action 
DROP TABLE IF EXISTS `xyh_order_action`;
CREATE TABLE `xyh_order_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `order_id` varchar(30) NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `distribution_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '配送状态',
  `pay_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付状态',
  `aid` int(10) NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL DEFAULT '',
  `publish_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderid` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_order_detail 
DROP TABLE IF EXISTS `xyh_order_detail`;
CREATE TABLE `xyh_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(30) DEFAULT NULL COMMENT '订单ID',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `market_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `num` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_order_info 
DROP TABLE IF EXISTS `xyh_order_info`;
CREATE TABLE `xyh_order_info` (
  `order_id` varchar(30) NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_id` tinyint(2) NOT NULL DEFAULT '1' COMMENT '支付方式',
  `express_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '邮费/运费',
  `prdouct_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '产品总价格',
  `total_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '总价格',
  `consignee` varchar(30) DEFAULT '' COMMENT '收件人',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` int(10) NOT NULL DEFAULT '0',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `order_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `distribution_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '配送状态',
  `pay_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付状态',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `add_time` datetime NOT NULL COMMENT '添加时间',
  `confirm_time` datetime DEFAULT NULL COMMENT '确认时间',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `distribution_time` datetime DEFAULT NULL COMMENT '配送时间',
  PRIMARY KEY (`order_id`),
  KEY `add_time` (`add_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_picture 
DROP TABLE IF EXISTS `xyh_picture`;
CREATE TABLE `xyh_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `publish_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `update_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `copyfrom` varchar(100) NOT NULL DEFAULT '' COMMENT '来源',
  `template` varchar(30) NOT NULL DEFAULT '' COMMENT '模板',
  `picture_urls` text COMMENT '图片地址',
  `content` text COMMENT '内容',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `point` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '权重[越大越前]',
  `comment_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jump_url` varchar(200) NOT NULL DEFAULT '',
  `delete_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `audit_status` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '审核状态[0未审核,1通过]',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_product 
DROP TABLE IF EXISTS `xyh_product`;
CREATE TABLE `xyh_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `picture_urls` text COMMENT '图片地址',
  `content` text COMMENT '内容',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `publish_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `update_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `market_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `brand` varchar(50) NOT NULL DEFAULT '' COMMENT '品牌',
  `units` varchar(50) NOT NULL DEFAULT '' COMMENT '单位',
  `specification` varchar(50) NOT NULL DEFAULT '' COMMENT '规格',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `point` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '权重[越大越前]',
  `comment_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jump_url` varchar(200) NOT NULL DEFAULT '',
  `delete_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `audit_status` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '审核状态[0未审核,1通过]',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_search_all 
DROP TABLE IF EXISTS `xyh_search_all`;
CREATE TABLE `xyh_search_all` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arc_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文档id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `jump_url` varchar(200) NOT NULL DEFAULT '',
  `publish_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `model_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '模型id',
  `point` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '权重[越大越前]',
  `delete_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `audit_status` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '审核状态[0未审核,1通过]',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_soft 
DROP TABLE IF EXISTS `xyh_soft`;
CREATE TABLE `xyh_soft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `picture_urls` text,
  `content` text COMMENT '内容',
  `update_log` text COMMENT '更新日志',
  `down_link` text COMMENT '下载地址',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `publish_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `update_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '版本号',
  `soft_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '软件类型',
  `copy_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '授权形式',
  `language` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '语言',
  `os` varchar(100) NOT NULL DEFAULT '' COMMENT '运行环境',
  `file_size` varchar(10) NOT NULL DEFAULT '' COMMENT '文件大小',
  `official_url` varchar(100) NOT NULL DEFAULT '' COMMENT '官方网站',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `point` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '权重[越大越前]',
  `comment_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jump_url` varchar(200) NOT NULL DEFAULT '',
  `delete_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `audit_status` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '审核状态[0未审核,1通过]',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_special 
DROP TABLE IF EXISTS `xyh_special`;
CREATE TABLE `xyh_special` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `short_title` varchar(100) NOT NULL DEFAULT '' COMMENT '副标题',
  `color` char(10) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` varchar(255) NOT NULL DEFAULT '',
  `publish_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布时间',
  `update_time` datetime NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '更新时间',
  `content` text COMMENT '内容',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `point` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '权重[越大越前]',
  `comment_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jump_url` varchar(200) NOT NULL DEFAULT '',
  `delete_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `audit_status` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '审核状态[0未审核,1通过]',
  `filename` varchar(60) DEFAULT '',
  `template` varchar(60) NOT NULL DEFAULT '',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_tag 
DROP TABLE IF EXISTS `xyh_tag`;
CREATE TABLE `xyh_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(30) NOT NULL DEFAULT '',
  `num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文档数',
  `hit` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `sort` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `add_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ;

# 表的结构 xyh_tag_index 
DROP TABLE IF EXISTS `xyh_tag_index`;
CREATE TABLE `xyh_tag_index` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0',
  `arc_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `model_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '模型id',
  PRIMARY KEY (`tag_id`,`arc_id`,`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;



# 转存表中的数据:xyh_abc
INSERT INTO `xyh_abc` VALUES ('1','首页幻灯','首页','1920','920','<loop><li><a href=\"{$url}\"><img src=\"{$content}\" width=\"{$width}\" height=\"{$height}\" /></a></li></loop>','2','1','2');
INSERT INTO `xyh_abc` VALUES ('2','栏目通用轮播图','栏目','0','0','<loop><a href=\"{$url}\"><img src=\"{$content}\" /></a></loop>','2','1','1');
INSERT INTO `xyh_abc` VALUES ('3','首页案例展示','','0','0','<loop><a href=\"{$url}\"><img src=\"{$content}\" /></a></loop>','2','1','13');


# 转存表中的数据:xyh_abc_detail
INSERT INTO `xyh_abc_detail` VALUES ('1','图片1','/uploads/abc1/20190418/5cb83e77a4c44.jpg','#','2014-11-18 10:00:00','2030-12-31 10:00:00','1','1','1');
INSERT INTO `xyh_abc_detail` VALUES ('2','图片2','/uploads/abc1/20190418/5cb83e9a77d6b.jpg','#','2014-11-18 10:00:00','2030-12-31 10:00:00','1','1','1');
INSERT INTO `xyh_abc_detail` VALUES ('3','图片一','/uploads/abc1/20190424/5cc0149a5ead5.jpg','','2019-04-24 15:47:05','2019-05-24 15:47:05','2','1','1');
INSERT INTO `xyh_abc_detail` VALUES ('4','案例标题一','/uploads/abc1/20190425/5cc13021e2387.jpg','','2019-04-25 11:57:03','2019-05-25 11:57:03','3','1','1');
INSERT INTO `xyh_abc_detail` VALUES ('5','案例标题二','/uploads/abc1/20190425/5cc1302b5aa4c.jpg','','2019-04-25 11:57:25','2019-05-25 11:57:25','3','1','1');
INSERT INTO `xyh_abc_detail` VALUES ('6','案例标题三','/uploads/abc1/20190425/5cc13035c32d6.jpg','','2019-04-25 11:57:34','2019-05-25 11:57:34','3','1','1');
INSERT INTO `xyh_abc_detail` VALUES ('7','案例标题四','/uploads/abc1/20190425/5cc13041d8549.jpg','','2019-04-25 11:57:44','2019-05-25 11:57:44','3','1','1');
INSERT INTO `xyh_abc_detail` VALUES ('8','案例标题五','/uploads/abc1/20190425/5cc1304c3701e.jpg','','2019-04-25 11:57:56','2019-05-25 11:57:56','3','1','1');
INSERT INTO `xyh_abc_detail` VALUES ('9','案例标题六','/uploads/abc1/20190425/5cc1305736235.jpg','','2019-04-25 11:58:08','2019-05-25 11:58:08','3','1','1');
INSERT INTO `xyh_abc_detail` VALUES ('10','案例标题七','/uploads/abc1/20190425/5cc130607d9b0.jpg','','2019-04-25 11:58:18','2019-05-25 11:58:18','3','1','1');
INSERT INTO `xyh_abc_detail` VALUES ('11','案例标题八','/uploads/abc1/20190425/5cc1306b5aecf.jpg','','2019-04-25 11:58:27','2019-05-25 11:58:27','3','1','1');
INSERT INTO `xyh_abc_detail` VALUES ('12','案例标题九','/uploads/abc1/20190425/5cc130766b974.jpg','','2019-04-25 11:58:38','2019-05-25 11:58:38','3','1','1');
INSERT INTO `xyh_abc_detail` VALUES ('13','案例标题十','/uploads/abc1/20190425/5cc1307fec243.jpg','','2019-04-25 11:58:49','2019-05-25 11:58:49','3','1','1');
INSERT INTO `xyh_abc_detail` VALUES ('14','案例标题十','/uploads/abc1/20190425/5cc1308ee31f1.jpg','','2019-04-25 11:58:59','2019-05-25 11:58:59','3','1','1');
INSERT INTO `xyh_abc_detail` VALUES ('15','案例标题十一','/uploads/abc1/20190425/5cc1309e4b531.jpg','','2019-04-25 11:59:15','2019-05-25 11:59:15','3','1','1');
INSERT INTO `xyh_abc_detail` VALUES ('16','案例标题十','/uploads/abc1/20190425/5cc130a9d0e16.jpg','','2019-04-25 11:59:31','2019-05-25 11:59:31','3','1','1');


# 转存表中的数据:xyh_active


# 转存表中的数据:xyh_admin
INSERT INTO `xyh_admin` VALUES ('1','admin','62e2febb887821829e5b2cebfdf5d8c1','uwcW81','','','','9','2019-04-25 15:26:04','127.0.0.1','0','10');


# 转存表中的数据:xyh_announce
INSERT INTO `xyh_announce` VALUES ('1','手机版网站开通','<p>手机版网站开通，用手机版网站开通手机访问http://demo.0871k.com 即可访问手机站</p>','1970-01-01 08:00:00','2018-04-30 08:36:00','2014-04-02 08:36:54','1');


# 转存表中的数据:xyh_area
INSERT INTO `xyh_area` VALUES ('1','北京市','北京','','0','0');
INSERT INTO `xyh_area` VALUES ('2','上海市','上海','','0','0');
INSERT INTO `xyh_area` VALUES ('3','天津市','天津','','0','0');
INSERT INTO `xyh_area` VALUES ('4','重庆市','重庆','','0','0');
INSERT INTO `xyh_area` VALUES ('5','广东省','广东','','0','0');
INSERT INTO `xyh_area` VALUES ('6','福建省','福建','','0','0');
INSERT INTO `xyh_area` VALUES ('7','浙江省','浙江','','0','0');
INSERT INTO `xyh_area` VALUES ('8','江苏省','江苏','','0','0');
INSERT INTO `xyh_area` VALUES ('9','山东省','山东','','0','0');
INSERT INTO `xyh_area` VALUES ('10','辽宁省','辽宁','','0','0');
INSERT INTO `xyh_area` VALUES ('11','江西省','江西','','0','0');
INSERT INTO `xyh_area` VALUES ('12','四川省','四川','','0','0');
INSERT INTO `xyh_area` VALUES ('13','陕西省','陕西','','0','0');
INSERT INTO `xyh_area` VALUES ('14','湖北省','湖北','','0','0');
INSERT INTO `xyh_area` VALUES ('15','河南省','河南','','0','0');
INSERT INTO `xyh_area` VALUES ('16','河北省','河北','','0','0');
INSERT INTO `xyh_area` VALUES ('17','山西省','山西','','0','0');
INSERT INTO `xyh_area` VALUES ('18','内蒙古','内蒙古','','0','0');
INSERT INTO `xyh_area` VALUES ('19','吉林省','吉林','','0','0');
INSERT INTO `xyh_area` VALUES ('20','黑龙江','黑龙江','','0','0');
INSERT INTO `xyh_area` VALUES ('21','安徽省','安徽','','0','0');
INSERT INTO `xyh_area` VALUES ('22','湖南省','湖南','','0','0');
INSERT INTO `xyh_area` VALUES ('23','广西','广西','','0','0');
INSERT INTO `xyh_area` VALUES ('24','海南省','海南','','0','0');
INSERT INTO `xyh_area` VALUES ('25','云南省','云南','','0','0');
INSERT INTO `xyh_area` VALUES ('26','贵州省','贵州','','0','0');
INSERT INTO `xyh_area` VALUES ('27','西藏','西藏','','0','0');
INSERT INTO `xyh_area` VALUES ('28','甘肃省','甘肃','','0','0');
INSERT INTO `xyh_area` VALUES ('29','宁夏区','宁夏区','','0','0');
INSERT INTO `xyh_area` VALUES ('30','青海省','青海','','0','0');
INSERT INTO `xyh_area` VALUES ('31','新疆','新疆','','0','0');
INSERT INTO `xyh_area` VALUES ('32','香港','香港','','0','0');
INSERT INTO `xyh_area` VALUES ('33','澳门','澳门','','0','0');
INSERT INTO `xyh_area` VALUES ('34','台湾省','台湾','','0','0');
INSERT INTO `xyh_area` VALUES ('60','海外','海外','','0','0');
INSERT INTO `xyh_area` VALUES ('101','东城区','东城区','','1','0');
INSERT INTO `xyh_area` VALUES ('102','西城区','西城区','','1','0');
INSERT INTO `xyh_area` VALUES ('103','崇文区','崇文区','','1','0');
INSERT INTO `xyh_area` VALUES ('104','宣武区','宣武区','','1','0');
INSERT INTO `xyh_area` VALUES ('105','朝阳区','朝阳区','','1','0');
INSERT INTO `xyh_area` VALUES ('106','海淀区','海淀区','','1','0');
INSERT INTO `xyh_area` VALUES ('107','丰台区','丰台区','','1','0');
INSERT INTO `xyh_area` VALUES ('108','石景山区','石景山区','','1','0');
INSERT INTO `xyh_area` VALUES ('109','门头沟区','门头沟区','','1','0');
INSERT INTO `xyh_area` VALUES ('110','房山区','房山区','','1','0');
INSERT INTO `xyh_area` VALUES ('111','通州区','通区','','1','0');
INSERT INTO `xyh_area` VALUES ('112','顺义区','顺义区','','1','0');
INSERT INTO `xyh_area` VALUES ('113','昌平区','昌平区','','1','0');
INSERT INTO `xyh_area` VALUES ('114','大兴区','大兴区','','1','0');
INSERT INTO `xyh_area` VALUES ('115','平谷县','平谷县','','1','0');
INSERT INTO `xyh_area` VALUES ('116','怀柔县','怀柔县','','1','0');
INSERT INTO `xyh_area` VALUES ('117','密云县','密云县','','1','0');
INSERT INTO `xyh_area` VALUES ('118','延庆县','延庆县','','1','0');
INSERT INTO `xyh_area` VALUES ('201','黄浦区','黄浦区','','2','0');
INSERT INTO `xyh_area` VALUES ('202','卢湾区','卢湾区','','2','0');
INSERT INTO `xyh_area` VALUES ('203','徐汇区','徐汇区','','2','0');
INSERT INTO `xyh_area` VALUES ('204','长宁区','长宁区','','2','0');
INSERT INTO `xyh_area` VALUES ('205','静安区','静安区','','2','0');
INSERT INTO `xyh_area` VALUES ('206','普陀区','普陀区','','2','0');
INSERT INTO `xyh_area` VALUES ('207','闸北区','闸北区','','2','0');
INSERT INTO `xyh_area` VALUES ('208','虹口区','虹口区','','2','0');
INSERT INTO `xyh_area` VALUES ('209','杨浦区','杨浦区','','2','0');
INSERT INTO `xyh_area` VALUES ('210','宝山区','宝山区','','2','0');
INSERT INTO `xyh_area` VALUES ('211','闵行区','闵行区','','2','0');
INSERT INTO `xyh_area` VALUES ('212','嘉定区','嘉定区','','2','0');
INSERT INTO `xyh_area` VALUES ('213','浦东新区','浦东新区','','2','0');
INSERT INTO `xyh_area` VALUES ('214','松江区','松江区','','2','0');
INSERT INTO `xyh_area` VALUES ('215','金山区','金山区','','2','0');
INSERT INTO `xyh_area` VALUES ('216','青浦区','青浦区','','2','0');
INSERT INTO `xyh_area` VALUES ('217','南汇区','南汇区','','2','0');
INSERT INTO `xyh_area` VALUES ('218','奉贤区','奉贤区','','2','0');
INSERT INTO `xyh_area` VALUES ('219','崇明县','崇明县','','2','0');
INSERT INTO `xyh_area` VALUES ('301','和平区','和平区','','3','0');
INSERT INTO `xyh_area` VALUES ('302','河东区','河东区','','3','0');
INSERT INTO `xyh_area` VALUES ('303','河西区','河西区','','3','0');
INSERT INTO `xyh_area` VALUES ('304','南开区','南开区','','3','0');
INSERT INTO `xyh_area` VALUES ('305','河北区','河北区','','3','0');
INSERT INTO `xyh_area` VALUES ('306','红桥区','红桥区','','3','0');
INSERT INTO `xyh_area` VALUES ('307','塘沽区','塘沽区','','3','0');
INSERT INTO `xyh_area` VALUES ('308','汉沽区','汉沽区','','3','0');
INSERT INTO `xyh_area` VALUES ('309','大港区','大港区','','3','0');
INSERT INTO `xyh_area` VALUES ('310','东丽区','东丽区','','3','0');
INSERT INTO `xyh_area` VALUES ('311','西青区','西青区','','3','0');
INSERT INTO `xyh_area` VALUES ('312','北辰区','北辰区','','3','0');
INSERT INTO `xyh_area` VALUES ('313','津南区','津南区','','3','0');
INSERT INTO `xyh_area` VALUES ('314','武清区','武清区','','3','0');
INSERT INTO `xyh_area` VALUES ('315','宝坻区','宝坻区','','3','0');
INSERT INTO `xyh_area` VALUES ('316','静海县','静海县','','3','0');
INSERT INTO `xyh_area` VALUES ('317','宁河县','宁河县','','3','0');
INSERT INTO `xyh_area` VALUES ('318','蓟县','蓟县','','3','0');
INSERT INTO `xyh_area` VALUES ('401','渝中区','渝中区','','4','0');
INSERT INTO `xyh_area` VALUES ('402','大渡口区','大渡口区','','4','0');
INSERT INTO `xyh_area` VALUES ('403','江北区','江北区','','4','0');
INSERT INTO `xyh_area` VALUES ('404','沙坪坝区','沙坪坝区','','4','0');
INSERT INTO `xyh_area` VALUES ('405','九龙坡区','九龙坡区','','4','0');
INSERT INTO `xyh_area` VALUES ('406','南岸区','南岸区','','4','0');
INSERT INTO `xyh_area` VALUES ('407','北碚区','北碚区','','4','0');
INSERT INTO `xyh_area` VALUES ('408','万盛区','万盛区','','4','0');
INSERT INTO `xyh_area` VALUES ('409','双桥区','双桥区','','4','0');
INSERT INTO `xyh_area` VALUES ('410','渝北区','渝北区','','4','0');
INSERT INTO `xyh_area` VALUES ('411','巴南区','巴南区','','4','0');
INSERT INTO `xyh_area` VALUES ('412','万州区','万区','','4','0');
INSERT INTO `xyh_area` VALUES ('413','涪陵区','涪陵区','','4','0');
INSERT INTO `xyh_area` VALUES ('414','黔江区','黔江区','','4','0');
INSERT INTO `xyh_area` VALUES ('415','永川市','永川','','4','0');
INSERT INTO `xyh_area` VALUES ('416','合川市','合川','','4','0');
INSERT INTO `xyh_area` VALUES ('417','江津市','江津','','4','0');
INSERT INTO `xyh_area` VALUES ('418','南川市','南川','','4','0');
INSERT INTO `xyh_area` VALUES ('419','长寿县','长寿县','','4','0');
INSERT INTO `xyh_area` VALUES ('420','綦江县','綦江县','','4','0');
INSERT INTO `xyh_area` VALUES ('421','潼南县','潼南县','','4','0');
INSERT INTO `xyh_area` VALUES ('422','荣昌县','荣昌县','','4','0');
INSERT INTO `xyh_area` VALUES ('423','璧山县','璧山县','','4','0');
INSERT INTO `xyh_area` VALUES ('424','大足县','大足县','','4','0');
INSERT INTO `xyh_area` VALUES ('425','铜梁县','铜梁县','','4','0');
INSERT INTO `xyh_area` VALUES ('426','梁平县','梁平县','','4','0');
INSERT INTO `xyh_area` VALUES ('427','城口县','城口县','','4','0');
INSERT INTO `xyh_area` VALUES ('428','垫江县','垫江县','','4','0');
INSERT INTO `xyh_area` VALUES ('429','武隆县','武隆县','','4','0');
INSERT INTO `xyh_area` VALUES ('430','丰都县','丰都县','','4','0');
INSERT INTO `xyh_area` VALUES ('431','奉节县','奉节县','','4','0');
INSERT INTO `xyh_area` VALUES ('432','开县','开县','','4','0');
INSERT INTO `xyh_area` VALUES ('433','云阳县','云阳县','','4','0');
INSERT INTO `xyh_area` VALUES ('434','忠县','忠县','','4','0');
INSERT INTO `xyh_area` VALUES ('435','巫溪县','巫溪县','','4','0');
INSERT INTO `xyh_area` VALUES ('436','巫山县','巫山县','','4','0');
INSERT INTO `xyh_area` VALUES ('437','石柱县','石柱县','','4','0');
INSERT INTO `xyh_area` VALUES ('438','秀山县','秀山县','','4','0');
INSERT INTO `xyh_area` VALUES ('439','酉阳县','酉阳县','','4','0');
INSERT INTO `xyh_area` VALUES ('440','彭水县','彭水县','','4','0');
INSERT INTO `xyh_area` VALUES ('501','广州市','广州','','5','0');
INSERT INTO `xyh_area` VALUES ('502','深圳市','深圳','','5','0');
INSERT INTO `xyh_area` VALUES ('503','珠海市','珠海','','5','0');
INSERT INTO `xyh_area` VALUES ('504','汕头市','汕头','','5','0');
INSERT INTO `xyh_area` VALUES ('505','韶关市','韶关','','5','0');
INSERT INTO `xyh_area` VALUES ('506','河源市','河源','','5','0');
INSERT INTO `xyh_area` VALUES ('507','梅州市','梅州','','5','0');
INSERT INTO `xyh_area` VALUES ('508','惠州市','惠州','','5','0');
INSERT INTO `xyh_area` VALUES ('509','汕尾市','汕尾','','5','0');
INSERT INTO `xyh_area` VALUES ('510','东莞市','东莞','','5','0');
INSERT INTO `xyh_area` VALUES ('511','中山市','中山','','5','0');
INSERT INTO `xyh_area` VALUES ('512','江门市','江门','','5','0');
INSERT INTO `xyh_area` VALUES ('513','佛山市','佛山','','5','0');
INSERT INTO `xyh_area` VALUES ('514','阳江市','阳江','','5','0');
INSERT INTO `xyh_area` VALUES ('515','湛江市','湛江','','5','0');
INSERT INTO `xyh_area` VALUES ('516','茂名市','茂名','','5','0');
INSERT INTO `xyh_area` VALUES ('517','肇庆市','肇庆','','5','0');
INSERT INTO `xyh_area` VALUES ('518','清远市','清远','','5','0');
INSERT INTO `xyh_area` VALUES ('519','潮州市','潮州','','5','0');
INSERT INTO `xyh_area` VALUES ('520','揭阳市','揭阳','','5','0');
INSERT INTO `xyh_area` VALUES ('521','云浮市','云浮','','5','0');
INSERT INTO `xyh_area` VALUES ('601','福州市','福州','','6','0');
INSERT INTO `xyh_area` VALUES ('602','厦门市','厦门','','6','0');
INSERT INTO `xyh_area` VALUES ('603','三明市','三明','','6','0');
INSERT INTO `xyh_area` VALUES ('604','莆田市','莆田','','6','0');
INSERT INTO `xyh_area` VALUES ('605','泉州市','泉州','','6','0');
INSERT INTO `xyh_area` VALUES ('606','漳州市','漳州','','6','0');
INSERT INTO `xyh_area` VALUES ('607','南平市','南平','','6','0');
INSERT INTO `xyh_area` VALUES ('608','龙岩市','龙岩','','6','0');
INSERT INTO `xyh_area` VALUES ('609','宁德市','宁德','','6','0');
INSERT INTO `xyh_area` VALUES ('701','杭州市','杭州','','7','0');
INSERT INTO `xyh_area` VALUES ('702','宁波市','宁波','','7','0');
INSERT INTO `xyh_area` VALUES ('703','温州市','温州','','7','0');
INSERT INTO `xyh_area` VALUES ('704','嘉兴市','嘉兴','','7','0');
INSERT INTO `xyh_area` VALUES ('705','湖州市','湖州','','7','0');
INSERT INTO `xyh_area` VALUES ('706','绍兴市','绍兴','','7','0');
INSERT INTO `xyh_area` VALUES ('707','金华市','金华','','7','0');
INSERT INTO `xyh_area` VALUES ('708','衢州市','衢州','','7','0');
INSERT INTO `xyh_area` VALUES ('709','舟山市','舟山','','7','0');
INSERT INTO `xyh_area` VALUES ('710','台州市','台州','','7','0');
INSERT INTO `xyh_area` VALUES ('711','丽水市','丽水','','7','0');
INSERT INTO `xyh_area` VALUES ('801','南京市','南京','','8','0');
INSERT INTO `xyh_area` VALUES ('802','徐州市','徐州','','8','0');
INSERT INTO `xyh_area` VALUES ('803','连云港市','连云港','','8','0');
INSERT INTO `xyh_area` VALUES ('804','淮安市','淮安','','8','0');
INSERT INTO `xyh_area` VALUES ('805','宿迁市','宿迁','','8','0');
INSERT INTO `xyh_area` VALUES ('806','盐城市','盐城','','8','0');
INSERT INTO `xyh_area` VALUES ('807','扬州市','扬州','','8','0');
INSERT INTO `xyh_area` VALUES ('808','泰州市','泰州','','8','0');
INSERT INTO `xyh_area` VALUES ('809','南通市','南通','','8','0');
INSERT INTO `xyh_area` VALUES ('810','镇江市','镇江','','8','0');
INSERT INTO `xyh_area` VALUES ('811','常州市','常州','','8','0');
INSERT INTO `xyh_area` VALUES ('812','无锡市','无锡','','8','0');
INSERT INTO `xyh_area` VALUES ('813','苏州市','苏州','','8','0');
INSERT INTO `xyh_area` VALUES ('901','济南市','济南','','9','0');
INSERT INTO `xyh_area` VALUES ('902','青岛市','青岛','','9','0');
INSERT INTO `xyh_area` VALUES ('903','淄博市','淄博','','9','0');
INSERT INTO `xyh_area` VALUES ('904','枣庄市','枣庄','','9','0');
INSERT INTO `xyh_area` VALUES ('905','东营市','东营','','9','0');
INSERT INTO `xyh_area` VALUES ('906','潍坊市','潍坊','','9','0');
INSERT INTO `xyh_area` VALUES ('907','烟台市','烟台','','9','0');
INSERT INTO `xyh_area` VALUES ('908','威海市','威海','','9','0');
INSERT INTO `xyh_area` VALUES ('909','济宁市','济宁','','9','0');
INSERT INTO `xyh_area` VALUES ('910','泰安市','泰安','','9','0');
INSERT INTO `xyh_area` VALUES ('911','日照市','日照','','9','0');
INSERT INTO `xyh_area` VALUES ('912','莱芜市','莱芜','','9','0');
INSERT INTO `xyh_area` VALUES ('913','德州市','德州','','9','0');
INSERT INTO `xyh_area` VALUES ('914','临沂市','临沂','','9','0');
INSERT INTO `xyh_area` VALUES ('915','聊城市','聊城','','9','0');
INSERT INTO `xyh_area` VALUES ('916','滨州市','滨州','','9','0');
INSERT INTO `xyh_area` VALUES ('917','菏泽市','菏泽','','9','0');
INSERT INTO `xyh_area` VALUES ('1001','沈阳市','沈阳','','10','0');
INSERT INTO `xyh_area` VALUES ('1002','大连市','大连','','10','0');
INSERT INTO `xyh_area` VALUES ('1003','鞍山市','鞍山','','10','0');
INSERT INTO `xyh_area` VALUES ('1004','抚顺市','抚顺','','10','0');
INSERT INTO `xyh_area` VALUES ('1005','本溪市','本溪','','10','0');
INSERT INTO `xyh_area` VALUES ('1006','丹东市','丹东','','10','0');
INSERT INTO `xyh_area` VALUES ('1007','锦州市','锦州','','10','0');
INSERT INTO `xyh_area` VALUES ('1008','葫芦岛市','葫芦岛','','10','0');
INSERT INTO `xyh_area` VALUES ('1009','营口市','营口','','10','0');
INSERT INTO `xyh_area` VALUES ('1010','盘锦市','盘锦','','10','0');
INSERT INTO `xyh_area` VALUES ('1011','阜新市','阜新','','10','0');
INSERT INTO `xyh_area` VALUES ('1012','辽阳市','辽阳','','10','0');
INSERT INTO `xyh_area` VALUES ('1013','铁岭市','铁岭','','10','0');
INSERT INTO `xyh_area` VALUES ('1014','朝阳市','朝阳','','10','0');
INSERT INTO `xyh_area` VALUES ('1101','南昌市','南昌','','11','0');
INSERT INTO `xyh_area` VALUES ('1102','景德镇市','景德镇','','11','0');
INSERT INTO `xyh_area` VALUES ('1103','萍乡市','萍乡','','11','0');
INSERT INTO `xyh_area` VALUES ('1104','新余市','新余','','11','0');
INSERT INTO `xyh_area` VALUES ('1105','九江市','九江','','11','0');
INSERT INTO `xyh_area` VALUES ('1106','鹰潭市','鹰潭','','11','0');
INSERT INTO `xyh_area` VALUES ('1107','赣州市','赣州','','11','0');
INSERT INTO `xyh_area` VALUES ('1108','吉安市','吉安','','11','0');
INSERT INTO `xyh_area` VALUES ('1109','宜春市','宜春','','11','0');
INSERT INTO `xyh_area` VALUES ('1110','抚州市','抚州','','11','0');
INSERT INTO `xyh_area` VALUES ('1111','上饶市','上饶','','11','0');
INSERT INTO `xyh_area` VALUES ('1201','成都市','成都','','12','0');
INSERT INTO `xyh_area` VALUES ('1202','自贡市','自贡','','12','0');
INSERT INTO `xyh_area` VALUES ('1203','攀枝花市','攀枝花','','12','0');
INSERT INTO `xyh_area` VALUES ('1204','泸州市','泸州','','12','0');
INSERT INTO `xyh_area` VALUES ('1205','德阳市','德阳','','12','0');
INSERT INTO `xyh_area` VALUES ('1206','绵阳市','绵阳','','12','0');
INSERT INTO `xyh_area` VALUES ('1207','广元市','广元','','12','0');
INSERT INTO `xyh_area` VALUES ('1208','遂宁市','遂宁','','12','0');
INSERT INTO `xyh_area` VALUES ('1209','内江市','内江','','12','0');
INSERT INTO `xyh_area` VALUES ('1210','乐山市','乐山','','12','0');
INSERT INTO `xyh_area` VALUES ('1211','南充市','南充','','12','0');
INSERT INTO `xyh_area` VALUES ('1212','宜宾市','宜宾','','12','0');
INSERT INTO `xyh_area` VALUES ('1213','广安市','广安','','12','0');
INSERT INTO `xyh_area` VALUES ('1214','达州市','达州','','12','0');
INSERT INTO `xyh_area` VALUES ('1215','巴中市','巴中','','12','0');
INSERT INTO `xyh_area` VALUES ('1216','雅安市','雅安','','12','0');
INSERT INTO `xyh_area` VALUES ('1217','眉山市','眉山','','12','0');
INSERT INTO `xyh_area` VALUES ('1218','资阳市','资阳','','12','0');
INSERT INTO `xyh_area` VALUES ('1219','阿坝州','阿坝','','12','0');
INSERT INTO `xyh_area` VALUES ('1220','甘孜州','甘孜','','12','0');
INSERT INTO `xyh_area` VALUES ('1221','凉山州','凉山','','12','0');
INSERT INTO `xyh_area` VALUES ('3114','西安市','西安','','13','0');
INSERT INTO `xyh_area` VALUES ('1302','铜川市','铜川','','13','0');
INSERT INTO `xyh_area` VALUES ('1303','宝鸡市','宝鸡','','13','0');
INSERT INTO `xyh_area` VALUES ('1304','咸阳市','咸阳','','13','0');
INSERT INTO `xyh_area` VALUES ('1305','渭南市','渭南','','13','0');
INSERT INTO `xyh_area` VALUES ('1306','延安市','延安','','13','0');
INSERT INTO `xyh_area` VALUES ('1307','汉中市','汉中','','13','0');
INSERT INTO `xyh_area` VALUES ('1308','榆林市','榆林','','13','0');
INSERT INTO `xyh_area` VALUES ('1309','安康市','安康','','13','0');
INSERT INTO `xyh_area` VALUES ('1310','商洛地区','商洛地区','','13','0');
INSERT INTO `xyh_area` VALUES ('1401','武汉市','武汉','','14','0');
INSERT INTO `xyh_area` VALUES ('1402','黄石市','黄石','','14','0');
INSERT INTO `xyh_area` VALUES ('1403','襄樊市','襄樊','','14','0');
INSERT INTO `xyh_area` VALUES ('1404','十堰市','十堰','','14','0');
INSERT INTO `xyh_area` VALUES ('1405','荆州市','荆州','','14','0');
INSERT INTO `xyh_area` VALUES ('1406','宜昌市','宜昌','','14','0');
INSERT INTO `xyh_area` VALUES ('1407','荆门市','荆门','','14','0');
INSERT INTO `xyh_area` VALUES ('1408','鄂州市','鄂州','','14','0');
INSERT INTO `xyh_area` VALUES ('1409','孝感市','孝感','','14','0');
INSERT INTO `xyh_area` VALUES ('1410','黄冈市','黄冈','','14','0');
INSERT INTO `xyh_area` VALUES ('1411','咸宁市','咸宁','','14','0');
INSERT INTO `xyh_area` VALUES ('1412','随州市','随州','','14','0');
INSERT INTO `xyh_area` VALUES ('1413','仙桃市','仙桃','','14','0');
INSERT INTO `xyh_area` VALUES ('1414','天门市','天门','','14','0');
INSERT INTO `xyh_area` VALUES ('1415','潜江市','潜江','','14','0');
INSERT INTO `xyh_area` VALUES ('1416','神农架','神农架','','14','0');
INSERT INTO `xyh_area` VALUES ('1417','恩施州','恩施','','14','0');
INSERT INTO `xyh_area` VALUES ('1501','郑州市','郑州','','15','0');
INSERT INTO `xyh_area` VALUES ('1502','开封市','开封','','15','0');
INSERT INTO `xyh_area` VALUES ('1503','洛阳市','洛阳','','15','0');
INSERT INTO `xyh_area` VALUES ('1504','平顶山市','平顶山','','15','0');
INSERT INTO `xyh_area` VALUES ('1505','焦作市','焦作','','15','0');
INSERT INTO `xyh_area` VALUES ('1506','鹤壁市','鹤壁','','15','0');
INSERT INTO `xyh_area` VALUES ('1507','新乡市','新乡','','15','0');
INSERT INTO `xyh_area` VALUES ('1508','安阳市','安阳','','15','0');
INSERT INTO `xyh_area` VALUES ('1509','濮阳市','濮阳','','15','0');
INSERT INTO `xyh_area` VALUES ('1510','许昌市','许昌','','15','0');
INSERT INTO `xyh_area` VALUES ('1511','漯河市','漯河','','15','0');
INSERT INTO `xyh_area` VALUES ('1512','三门峡市','三门峡','','15','0');
INSERT INTO `xyh_area` VALUES ('1513','南阳市','南阳','','15','0');
INSERT INTO `xyh_area` VALUES ('1514','商丘市','商丘','','15','0');
INSERT INTO `xyh_area` VALUES ('1515','信阳市','信阳','','15','0');
INSERT INTO `xyh_area` VALUES ('1516','周口市','周口','','15','0');
INSERT INTO `xyh_area` VALUES ('1517','驻马店市','驻马店','','15','0');
INSERT INTO `xyh_area` VALUES ('1518','济源市','济源','','15','0');
INSERT INTO `xyh_area` VALUES ('1601','石家庄市','石家庄','','16','0');
INSERT INTO `xyh_area` VALUES ('1602','唐山市','唐山','','16','0');
INSERT INTO `xyh_area` VALUES ('1603','秦皇岛市','秦皇岛','','16','0');
INSERT INTO `xyh_area` VALUES ('1604','邯郸市','邯郸','','16','0');
INSERT INTO `xyh_area` VALUES ('1605','邢台市','邢台','','16','0');
INSERT INTO `xyh_area` VALUES ('1606','保定市','保定','','16','0');
INSERT INTO `xyh_area` VALUES ('1607','张家口市','张家口','','16','0');
INSERT INTO `xyh_area` VALUES ('1608','承德市','承德','','16','0');
INSERT INTO `xyh_area` VALUES ('1609','沧州市','沧州','','16','0');
INSERT INTO `xyh_area` VALUES ('1610','廊坊市','廊坊','','16','0');
INSERT INTO `xyh_area` VALUES ('1611','衡水市','衡水','','16','0');
INSERT INTO `xyh_area` VALUES ('1701','太原市','太原','','17','0');
INSERT INTO `xyh_area` VALUES ('1702','大同市','大同','','17','0');
INSERT INTO `xyh_area` VALUES ('1703','阳泉市','阳泉','','17','0');
INSERT INTO `xyh_area` VALUES ('1704','长治市','长治','','17','0');
INSERT INTO `xyh_area` VALUES ('1705','晋城市','晋城','','17','0');
INSERT INTO `xyh_area` VALUES ('1706','朔州市','朔州','','17','0');
INSERT INTO `xyh_area` VALUES ('1707','晋中市','晋中','','17','0');
INSERT INTO `xyh_area` VALUES ('1708','忻州市','忻州','','17','0');
INSERT INTO `xyh_area` VALUES ('1709','临汾市','临汾','','17','0');
INSERT INTO `xyh_area` VALUES ('1710','运城市','运城','','17','0');
INSERT INTO `xyh_area` VALUES ('1711','吕梁地区','吕梁地区','','17','0');
INSERT INTO `xyh_area` VALUES ('1801','呼和浩特','呼和浩特','','18','0');
INSERT INTO `xyh_area` VALUES ('1802','包头市','包头','','18','0');
INSERT INTO `xyh_area` VALUES ('1803','乌海市','乌海','','18','0');
INSERT INTO `xyh_area` VALUES ('1804','赤峰市','赤峰','','18','0');
INSERT INTO `xyh_area` VALUES ('1805','通辽市','通辽','','18','0');
INSERT INTO `xyh_area` VALUES ('1806','鄂尔多斯','鄂尔多斯','','18','0');
INSERT INTO `xyh_area` VALUES ('1807','乌兰察布','乌兰察布','','18','0');
INSERT INTO `xyh_area` VALUES ('1808','锡林郭勒','锡林郭勒','','18','0');
INSERT INTO `xyh_area` VALUES ('1809','呼伦贝尔','呼伦贝尔','','18','0');
INSERT INTO `xyh_area` VALUES ('1810','巴彦淖尔','巴彦淖尔','','18','0');
INSERT INTO `xyh_area` VALUES ('1811','阿拉善盟','阿拉善盟','','18','0');
INSERT INTO `xyh_area` VALUES ('1812','兴安盟','兴安盟','','18','0');
INSERT INTO `xyh_area` VALUES ('1901','长春市','长春','','19','0');
INSERT INTO `xyh_area` VALUES ('1902','吉林市','吉林','','19','0');
INSERT INTO `xyh_area` VALUES ('1903','四平市','四平','','19','0');
INSERT INTO `xyh_area` VALUES ('1904','辽源市','辽源','','19','0');
INSERT INTO `xyh_area` VALUES ('1905','通化市','通化','','19','0');
INSERT INTO `xyh_area` VALUES ('1906','白山市','白山','','19','0');
INSERT INTO `xyh_area` VALUES ('1907','松原市','松原','','19','0');
INSERT INTO `xyh_area` VALUES ('1908','白城市','白城','','19','0');
INSERT INTO `xyh_area` VALUES ('1909','延边州','延边','','19','0');
INSERT INTO `xyh_area` VALUES ('2001','哈尔滨市','哈尔滨','','20','0');
INSERT INTO `xyh_area` VALUES ('2002','齐齐哈尔','齐齐哈尔','','20','0');
INSERT INTO `xyh_area` VALUES ('2003','鹤岗市','鹤岗','','20','0');
INSERT INTO `xyh_area` VALUES ('2004','双鸭山市','双鸭山','','20','0');
INSERT INTO `xyh_area` VALUES ('2005','鸡西市','鸡西','','20','0');
INSERT INTO `xyh_area` VALUES ('2006','大庆市','大庆','','20','0');
INSERT INTO `xyh_area` VALUES ('2007','伊春市','伊春','','20','0');
INSERT INTO `xyh_area` VALUES ('2008','牡丹江市','牡丹江','','20','0');
INSERT INTO `xyh_area` VALUES ('2009','佳木斯市','佳木斯','','20','0');
INSERT INTO `xyh_area` VALUES ('2010','七台河市','七台河','','20','0');
INSERT INTO `xyh_area` VALUES ('2011','黑河市','黑河','','20','0');
INSERT INTO `xyh_area` VALUES ('2012','绥化市','绥化','','20','0');
INSERT INTO `xyh_area` VALUES ('2013','大兴安岭','大兴安岭','','20','0');
INSERT INTO `xyh_area` VALUES ('2101','合肥市','合肥','','21','0');
INSERT INTO `xyh_area` VALUES ('2102','芜湖市','芜湖','','21','0');
INSERT INTO `xyh_area` VALUES ('2103','蚌埠市','蚌埠','','21','0');
INSERT INTO `xyh_area` VALUES ('2104','淮南市','淮南','','21','0');
INSERT INTO `xyh_area` VALUES ('2105','马鞍山市','马鞍山','','21','0');
INSERT INTO `xyh_area` VALUES ('2106','淮北市','淮北','','21','0');
INSERT INTO `xyh_area` VALUES ('2107','铜陵市','铜陵','','21','0');
INSERT INTO `xyh_area` VALUES ('2108','安庆市','安庆','','21','0');
INSERT INTO `xyh_area` VALUES ('2109','黄山市','黄山','','21','0');
INSERT INTO `xyh_area` VALUES ('2110','滁州市','滁州','','21','0');
INSERT INTO `xyh_area` VALUES ('2111','阜阳市','阜阳','','21','0');
INSERT INTO `xyh_area` VALUES ('2112','宿州市','宿州','','21','0');
INSERT INTO `xyh_area` VALUES ('2113','巢湖市','巢湖','','21','0');
INSERT INTO `xyh_area` VALUES ('2114','六安市','六安','','21','0');
INSERT INTO `xyh_area` VALUES ('2115','亳州市','亳州','','21','0');
INSERT INTO `xyh_area` VALUES ('2116','宣城市','宣城','','21','0');
INSERT INTO `xyh_area` VALUES ('2117','池州市','池州','','21','0');
INSERT INTO `xyh_area` VALUES ('2201','长沙市','长沙','','22','0');
INSERT INTO `xyh_area` VALUES ('2202','株州市','株州','','22','0');
INSERT INTO `xyh_area` VALUES ('2203','湘潭市','湘潭','','22','0');
INSERT INTO `xyh_area` VALUES ('2204','衡阳市','衡阳','','22','0');
INSERT INTO `xyh_area` VALUES ('2205','邵阳市','邵阳','','22','0');
INSERT INTO `xyh_area` VALUES ('2206','岳阳市','岳阳','','22','0');
INSERT INTO `xyh_area` VALUES ('2207','常德市','常德','','22','0');
INSERT INTO `xyh_area` VALUES ('2208','张家界市','张家界','','22','0');
INSERT INTO `xyh_area` VALUES ('2209','益阳市','益阳','','22','0');
INSERT INTO `xyh_area` VALUES ('2210','郴州市','郴州','','22','0');
INSERT INTO `xyh_area` VALUES ('2211','永州市','永州','','22','0');
INSERT INTO `xyh_area` VALUES ('2212','怀化市','怀化','','22','0');
INSERT INTO `xyh_area` VALUES ('2213','娄底市','娄底','','22','0');
INSERT INTO `xyh_area` VALUES ('2214','湘西州','湘西','','22','0');
INSERT INTO `xyh_area` VALUES ('2301','南宁市','南宁','','23','0');
INSERT INTO `xyh_area` VALUES ('2302','柳州市','柳州','','23','0');
INSERT INTO `xyh_area` VALUES ('2303','桂林市','桂林','','23','0');
INSERT INTO `xyh_area` VALUES ('2304','梧州市','梧州','','23','0');
INSERT INTO `xyh_area` VALUES ('2305','北海市','北海','','23','0');
INSERT INTO `xyh_area` VALUES ('2306','防城港市','防城港','','23','0');
INSERT INTO `xyh_area` VALUES ('2307','钦州市','钦州','','23','0');
INSERT INTO `xyh_area` VALUES ('2308','贵港市','贵港','','23','0');
INSERT INTO `xyh_area` VALUES ('2309','玉林市','玉林','','23','0');
INSERT INTO `xyh_area` VALUES ('2310','南宁地区','南宁地区','','23','0');
INSERT INTO `xyh_area` VALUES ('2311','柳州地区','柳地区','','23','0');
INSERT INTO `xyh_area` VALUES ('2312','贺州地区','贺地区','','23','0');
INSERT INTO `xyh_area` VALUES ('2313','百色地区','百色地区','','23','0');
INSERT INTO `xyh_area` VALUES ('2314','河池地区','河池地区','','23','0');
INSERT INTO `xyh_area` VALUES ('2401','海口市','海口','','24','0');
INSERT INTO `xyh_area` VALUES ('2402','三亚市','三亚','','24','0');
INSERT INTO `xyh_area` VALUES ('2403','五指山市','五指山','','24','0');
INSERT INTO `xyh_area` VALUES ('2404','琼海市','琼海','','24','0');
INSERT INTO `xyh_area` VALUES ('2405','儋州市','儋州','','24','0');
INSERT INTO `xyh_area` VALUES ('2406','琼山市','琼山','','24','0');
INSERT INTO `xyh_area` VALUES ('2407','文昌市','文昌','','24','0');
INSERT INTO `xyh_area` VALUES ('2408','万宁市','万宁','','24','0');
INSERT INTO `xyh_area` VALUES ('2409','东方市','东方','','24','0');
INSERT INTO `xyh_area` VALUES ('2410','澄迈县','澄迈县','','24','0');
INSERT INTO `xyh_area` VALUES ('2411','定安县','定安县','','24','0');
INSERT INTO `xyh_area` VALUES ('2412','屯昌县','屯昌县','','24','0');
INSERT INTO `xyh_area` VALUES ('2413','临高县','临高县','','24','0');
INSERT INTO `xyh_area` VALUES ('2414','白沙县','白沙县','','24','0');
INSERT INTO `xyh_area` VALUES ('2415','昌江县','昌江县','','24','0');
INSERT INTO `xyh_area` VALUES ('2416','乐东县','乐东县','','24','0');
INSERT INTO `xyh_area` VALUES ('2417','陵水县','陵水县','','24','0');
INSERT INTO `xyh_area` VALUES ('2418','保亭县','保亭县','','24','0');
INSERT INTO `xyh_area` VALUES ('2419','琼中县','琼中县','','24','0');
INSERT INTO `xyh_area` VALUES ('2501','昆明市','昆明','','25','0');
INSERT INTO `xyh_area` VALUES ('2502','曲靖市','曲靖','','25','0');
INSERT INTO `xyh_area` VALUES ('2503','玉溪市','玉溪','','25','0');
INSERT INTO `xyh_area` VALUES ('2504','保山市','保山','','25','0');
INSERT INTO `xyh_area` VALUES ('2505','昭通市','昭通','','25','0');
INSERT INTO `xyh_area` VALUES ('2506',' 普洱市',' 普洱','','25','0');
INSERT INTO `xyh_area` VALUES ('2507','临沧市','临沧','','25','0');
INSERT INTO `xyh_area` VALUES ('2508','丽江市','丽江','','25','0');
INSERT INTO `xyh_area` VALUES ('2509','文山州','文山','','25','0');
INSERT INTO `xyh_area` VALUES ('2510','红河州','红河','','25','0');
INSERT INTO `xyh_area` VALUES ('2511','西双版纳','西双版纳','','25','0');
INSERT INTO `xyh_area` VALUES ('2512','楚雄州','楚雄','','25','0');
INSERT INTO `xyh_area` VALUES ('2513','大理州','大理','','25','0');
INSERT INTO `xyh_area` VALUES ('2514','德宏州','德宏','','25','0');
INSERT INTO `xyh_area` VALUES ('2515','怒江州','怒江','','25','0');
INSERT INTO `xyh_area` VALUES ('2516','迪庆州','迪庆','','25','0');
INSERT INTO `xyh_area` VALUES ('2601','贵阳市','贵阳','','26','0');
INSERT INTO `xyh_area` VALUES ('2602','六盘水市','六盘水','','26','0');
INSERT INTO `xyh_area` VALUES ('2603','遵义市','遵义','','26','0');
INSERT INTO `xyh_area` VALUES ('2604','安顺市','安顺','','26','0');
INSERT INTO `xyh_area` VALUES ('2605','铜仁地区','铜仁地区','','26','0');
INSERT INTO `xyh_area` VALUES ('2606','毕节地区','毕节地区','','26','0');
INSERT INTO `xyh_area` VALUES ('2607','黔西南州','黔西南','','26','0');
INSERT INTO `xyh_area` VALUES ('2608','黔东南州','黔东南','','26','0');
INSERT INTO `xyh_area` VALUES ('2609','黔南州','黔南','','26','0');
INSERT INTO `xyh_area` VALUES ('2701','拉萨市','拉萨','','27','0');
INSERT INTO `xyh_area` VALUES ('2702','那曲地区','那曲地区','','27','0');
INSERT INTO `xyh_area` VALUES ('2703','昌都地区','昌都地区','','27','0');
INSERT INTO `xyh_area` VALUES ('2704','山南地区','山南地区','','27','0');
INSERT INTO `xyh_area` VALUES ('2705','日喀则','日喀则','','27','0');
INSERT INTO `xyh_area` VALUES ('2706','阿里地区','阿里地区','','27','0');
INSERT INTO `xyh_area` VALUES ('2707','林芝地区','林芝地区','','27','0');
INSERT INTO `xyh_area` VALUES ('2801','兰州市','兰州','','28','0');
INSERT INTO `xyh_area` VALUES ('2802','金昌市','金昌','','28','0');
INSERT INTO `xyh_area` VALUES ('2803','白银市','白银','','28','0');
INSERT INTO `xyh_area` VALUES ('2804','天水市','天水','','28','0');
INSERT INTO `xyh_area` VALUES ('2805','嘉峪关市','嘉峪关','','28','0');
INSERT INTO `xyh_area` VALUES ('2806','武威市','武威','','28','0');
INSERT INTO `xyh_area` VALUES ('2807','定西地区','定西地区','','28','0');
INSERT INTO `xyh_area` VALUES ('2808','平凉地区','平凉地区','','28','0');
INSERT INTO `xyh_area` VALUES ('2809','庆阳地区','庆阳地区','','28','0');
INSERT INTO `xyh_area` VALUES ('2810','陇南地区','陇南地区','','28','0');
INSERT INTO `xyh_area` VALUES ('2811','张掖地区','张掖地区','','28','0');
INSERT INTO `xyh_area` VALUES ('2812','酒泉地区','酒泉地区','','28','0');
INSERT INTO `xyh_area` VALUES ('2813','甘南州','甘南','','28','0');
INSERT INTO `xyh_area` VALUES ('2814','临夏州','临夏','','28','0');
INSERT INTO `xyh_area` VALUES ('2901','银川市','银川','','29','0');
INSERT INTO `xyh_area` VALUES ('2902','石嘴山市','石嘴山','','29','0');
INSERT INTO `xyh_area` VALUES ('2903','吴忠市','吴忠','','29','0');
INSERT INTO `xyh_area` VALUES ('2904','固原市','固原','','29','0');
INSERT INTO `xyh_area` VALUES ('3001','西宁市','西宁','','30','0');
INSERT INTO `xyh_area` VALUES ('3002','海东地区','海东地区','','30','0');
INSERT INTO `xyh_area` VALUES ('3003','海北州','海北','','30','0');
INSERT INTO `xyh_area` VALUES ('3004','黄南州','黄南','','30','0');
INSERT INTO `xyh_area` VALUES ('3005','海南州','海南','','30','0');
INSERT INTO `xyh_area` VALUES ('3006','果洛州','果洛','','30','0');
INSERT INTO `xyh_area` VALUES ('3007','玉树州','玉树','','30','0');
INSERT INTO `xyh_area` VALUES ('3008','海西州','海西','','30','0');
INSERT INTO `xyh_area` VALUES ('3101','乌鲁木齐','乌鲁木齐','','31','0');
INSERT INTO `xyh_area` VALUES ('3102','克拉玛依','克拉玛依','','31','0');
INSERT INTO `xyh_area` VALUES ('3103','石河子市','石河子','','31','0');
INSERT INTO `xyh_area` VALUES ('3104','吐鲁番','吐鲁番','','31','0');
INSERT INTO `xyh_area` VALUES ('3105','哈密地区','哈密地区','','31','0');
INSERT INTO `xyh_area` VALUES ('3106','和田地区','和田地区','','31','0');
INSERT INTO `xyh_area` VALUES ('3107','阿克苏','阿克苏','','31','0');
INSERT INTO `xyh_area` VALUES ('3108','喀什地区','喀什地区','','31','0');
INSERT INTO `xyh_area` VALUES ('3109','克孜勒苏','克孜勒苏','','31','0');
INSERT INTO `xyh_area` VALUES ('3110','巴音郭楞','巴音郭楞','','31','0');
INSERT INTO `xyh_area` VALUES ('3111','昌吉州','昌吉','','31','0');
INSERT INTO `xyh_area` VALUES ('3112','博尔塔拉','博尔塔拉','','31','0');
INSERT INTO `xyh_area` VALUES ('3113','伊犁州','伊犁','','31','0');
INSERT INTO `xyh_area` VALUES ('3201','香港岛','香港岛','','32','0');
INSERT INTO `xyh_area` VALUES ('3202','九龙','九龙','','32','0');
INSERT INTO `xyh_area` VALUES ('3203','新界','新界','','32','0');
INSERT INTO `xyh_area` VALUES ('3301','澳门半岛','澳门半岛','','33','0');
INSERT INTO `xyh_area` VALUES ('3302','离岛','离岛','','33','0');
INSERT INTO `xyh_area` VALUES ('3401','台北市','台北','','34','0');
INSERT INTO `xyh_area` VALUES ('3402','高雄市','高雄','','34','0');
INSERT INTO `xyh_area` VALUES ('3403','台南市','台南','','34','0');
INSERT INTO `xyh_area` VALUES ('3404','台中市','台中','','34','0');
INSERT INTO `xyh_area` VALUES ('3405','金门县','金门县','','34','0');
INSERT INTO `xyh_area` VALUES ('3406','南投县','南投县','','34','0');
INSERT INTO `xyh_area` VALUES ('3407','基隆市','基隆','','34','0');
INSERT INTO `xyh_area` VALUES ('3408','新竹市','新竹','','34','0');
INSERT INTO `xyh_area` VALUES ('3409','嘉义市','嘉义','','34','0');
INSERT INTO `xyh_area` VALUES ('3410','新北市','新北','','34','0');
INSERT INTO `xyh_area` VALUES ('3411','宜兰县','宜兰县','','34','0');
INSERT INTO `xyh_area` VALUES ('3412','新竹县','新竹县','','34','0');
INSERT INTO `xyh_area` VALUES ('3413','桃园县','桃园县','','34','0');
INSERT INTO `xyh_area` VALUES ('3414','苗栗县','苗栗县','','34','0');
INSERT INTO `xyh_area` VALUES ('3415','彰化县','彰化县','','34','0');
INSERT INTO `xyh_area` VALUES ('3416','嘉义县','嘉义县','','34','0');
INSERT INTO `xyh_area` VALUES ('3417','云林县','云林县','','34','0');
INSERT INTO `xyh_area` VALUES ('3418','屏东县','屏东县','','34','0');
INSERT INTO `xyh_area` VALUES ('3419','台东县','台东县','','34','0');
INSERT INTO `xyh_area` VALUES ('3420','花莲县','花莲县','','34','0');
INSERT INTO `xyh_area` VALUES ('3421','澎湖县','澎湖县','','34','0');
INSERT INTO `xyh_area` VALUES ('6001','美国','美国','','60','0');
INSERT INTO `xyh_area` VALUES ('6002','英国','英国','','60','0');
INSERT INTO `xyh_area` VALUES ('6003','法国','法国','','60','0');
INSERT INTO `xyh_area` VALUES ('6004','俄罗斯','俄罗斯','','60','0');
INSERT INTO `xyh_area` VALUES ('6005','加拿大','加拿大','','60','0');
INSERT INTO `xyh_area` VALUES ('6006','巴西','巴西','','60','0');
INSERT INTO `xyh_area` VALUES ('6007','澳大利亚','澳大利亚','','60','0');
INSERT INTO `xyh_area` VALUES ('6008','印尼','印尼','','60','0');
INSERT INTO `xyh_area` VALUES ('6009','马来西亚','马来西亚','','60','0');
INSERT INTO `xyh_area` VALUES ('6010','新加坡','新加坡','','60','0');
INSERT INTO `xyh_area` VALUES ('6011','菲律宾','菲律宾','','60','0');
INSERT INTO `xyh_area` VALUES ('6012','越南','越南','','60','0');
INSERT INTO `xyh_area` VALUES ('6013','印度','印度','','60','0');
INSERT INTO `xyh_area` VALUES ('6014','日本','日本','','60','0');
INSERT INTO `xyh_area` VALUES ('6015','韩国','韩国','','60','0');
INSERT INTO `xyh_area` VALUES ('6016','泰国','泰国','','60','0');
INSERT INTO `xyh_area` VALUES ('6017','缅甸','缅甸','','60','0');
INSERT INTO `xyh_area` VALUES ('6018','其他','其他','','60','0');


# 转存表中的数据:xyh_article
INSERT INTO `xyh_article` VALUES ('26','一个成功的网站的建设需要做的几件事','','','','','','/uploads/img1/20190425/5cc11871e7fcc.jpg!300X300.jpg','<p>&nbsp; 对于一个每天跟网站打交道的程序员来说，怎样建设一个好网站是他们每天都在思考的问题。其实要建设一个好的网站并不困难，只需要做好下面的几个事情就可以了。</p><p>\r\n	&nbsp;</p><p>\r\n	　　第一、清楚的定位&nbsp;<br/><br/>\r\n	　　谈到定位，就是要弄清楚你为什么要建设这个网站？你建设这个网站的最终目的是什么？如果一个网站要想获得好的长期发展，那么定位是非常关键的。定位清楚了，才能知道自己的发展方向是哪里。<br/><br/>\r\n	　　第二、导航&nbsp;<br/><br/>\r\n	　　网站的定位做好了之后，就需要对整个网站的布局进行制定了，首当其冲的就是开头部分，这就像我们写文章，肯定是需要一个导航的。导航就是标题，告诉人们你的网站都有一些什么内容。一个好的导航可以帮助浏览者快速的找到自己所需要的内容，可以提升用户的体验感。<br/><br/>\r\n	　　第三、布局&nbsp;<br/><br/>\r\n	　　做好了导航之后，还需要了解一下网站的布局。其实网站怎样进行布局都是没问题的，你只要知道网站的定位是什么，就能够把布局做好。是要设计一个简单一点的，还是复杂一点的网站，这就要根据你的定位去决定了。<br/><br/>\r\n	　　第四、内容&nbsp;<br/><br/>\r\n	　　现在网站的定位、导航、布局都做好了，我们就要来了解一下比较重要的一个方面了，那就是内容，应该怎么来做呢？你要知道自己的产品是什么，你做这个网站是要做什么产品，那么你的网站内容就围绕这个产品来进行。<br/><br/>\r\n	　　第五、服务&nbsp;<br/><br/>\r\n	　　当前面所说的都做好了之后，我们就要来了解一下最关键的问题了，那便是服务，用户在浏览了你的网站之后可以获得什么效果？最好是能够在网站建设的师傅多开发一些功能，这样才能给你的用户留下比较深刻的印象。<br/><br/>\r\n	　　第六、速度&nbsp;<br/><br/>\r\n	　　所以，想要建设一个好的网站，那么以上的这几点一定要做到位，这样才能达到好的效果。</p><p><br/></p>','  对于一个每天跟网站打交道的程序员来说，怎样建设一个好网站是他们每天都在思考的问题。其实要建设一个好的网站并不困难，只需要做好下面的几个事情就可以了。\r\n	 \r\n	　　第一、清楚的定位 \r\n	\r\n	　　谈到定','2019-04-25 10:04:53','2019-04-25 10:16:19','58','15','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('27',' 装修流程 — 咨询和签订合同阶段','','','','','','','<p>&nbsp;装修流程 — 咨询和签订合同阶段:</p><p>\r\n	1、电话或通过客服在线进行咨询，选择最合适的设计师，并预约现场勘察；<br/>\r\n	2、现场测量，对装修风格、空间功能划分等与您进行初步沟通；<br/>\r\n	3、征求客户的意见后，我们将在三个工作日内给出二到三套方案；<br/>\r\n	4、满意后签订设计合同，同时深化设计图纸，支付50%设计费用；<br/>\r\n	5、您对全套施工图确认后二个工作日内给出报价和效果图；<br/>\r\n	&nbsp;<br/>\r\n	装修流程 — 纯设计项目跟踪:</p><p>\r\n	1、开工交底，支付设计费50%；<br/>\r\n	2、施工过程中到现场三次<br/>\r\n	3、最后一次陪购，付清剩余设计费5%。<br/>\r\n	&nbsp;<br/>\r\n	装修流程 — 设计及施工项目跟踪:</p><p>\r\n	1、开工时，项目经理，水电工程师、设计师现场交底，交付《告知客户书》；支付设计费50%和工程款30%；<br/>\r\n	2、隐蔽工程结束，项目经理组织验收，记录成盘保存，付工程款35%；<br/>\r\n	3、泥木工进场施工，设计交底，项目经理进行施工工艺指导，支付工程款30%；<br/>\r\n	4、泥木验收，项目经理进行成品保护；<br/>\r\n	5、工程竣工，项目经理组织验收，并拍摄存档，增加项目结算，一次性付清100%；<br/>\r\n	6、在施工过程中，装饰设计公司的相关部门包括消防申报员、空调工程师、弱电工程师、家具工程师等进行协作。<br/>\r\n	7、最后，客户入住，家具进场，弱电安装调试，空调调试，消防申验，我们对整体工程开据保修单。</p><p><br/></p>','&nbsp;装修流程 — 咨询和签订合同阶段:\r\n	1、电话或通过客服在线进行咨询，选择最合适的设计师，并预约现场勘察；\r\n	2、现场测量，对装修风格、空间功能划分等与您进行初步沟通；\r\n	3、征求客户的意见后，我们将在三个工作日内给出二到','2019-04-25 10:53:08','2019-04-25 10:53:31','87','5','100','1','0','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('28','案例标题五','','','','','','/uploads/img1/20190425/5cc124a5289f0.jpg!300X300.jpg','<p>案例标题五<img src=\"/uploads/img1/20190425/5cc12a7041559.jpg\" title=\"5cc12a7041559.jpg\" alt=\"5.jpg\"/></p><p><br/></p>','案例标题四','2019-04-25 11:07:44','2019-04-25 11:33:10','50','17','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('29','案例标题四','','','','','','/uploads/img1/20190425/5cc124bc79b8a.jpg!300X300.jpg','<p>案例标题四</p><p><img src=\"/uploads/img1/20190425/5cc12a5c59bb9.jpg\" title=\"5cc12a5c59bb9.jpg\" alt=\"4.jpg\"/></p>','案例标题四','2019-04-25 11:08:34','2019-04-25 11:32:45','62','17','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('30','案例标题六','','','','','','/uploads/img1/20190425/5cc124cd17b22.jpg!300X300.jpg','<p>案例标题六</p><p><img src=\"/uploads/img1/20190425/5cc12a4ecbe09.jpg\" title=\"5cc12a4ecbe09.jpg\" alt=\"6.jpg\"/></p>','案例标题六','2019-04-25 11:08:48','2019-04-25 11:32:35','96','17','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('31','案例标题七','','','','','','/uploads/img1/20190425/5cc124daed0de.jpg!300X300.jpg','<p>案例标题七</p><p><img src=\"/uploads/img1/20190425/5cc12a853a0a4.jpg\" title=\"5cc12a853a0a4.jpg\" alt=\"7.jpg\"/></p>','案例标题七','2019-04-25 11:09:07','2019-04-25 11:33:27','33','18','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('32','案例标题八','','','','','','/uploads/img1/20190425/5cc124f01cebb.jpg!300X300.jpg','<p>案例标题八</p><p><img src=\"/uploads/img1/20190425/5cc12a92d70af.jpg\" title=\"5cc12a92d70af.jpg\" alt=\"8.jpg\"/></p>','案例标题八','2019-04-25 11:09:27','2019-04-25 11:33:40','36','18','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('33','案例标题九','','','','','','/uploads/img1/20190425/5cc124fdbb254.jpg!300X300.jpg','<p>案例标题八</p><p><img src=\"/uploads/img1/20190425/5cc12a9de2c09.jpg\" title=\"5cc12a9de2c09.jpg\" alt=\"9.jpg\"/></p>','案例标题八','2019-04-25 11:09:41','2019-04-25 11:33:51','78','18','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('34','案例标题十','','','','','','/uploads/img1/20190425/5cc1250d1e7db.jpg!300X300.jpg','<p>案例标题十</p><p><img src=\"/uploads/img1/20190425/5cc12aad05171.jpg\" title=\"5cc12aad05171.jpg\" alt=\"10.jpg\"/></p>','案例标题十','2019-04-25 11:09:57','2019-04-25 11:34:07','34','19','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('35','案例标题十一','','','','','','/uploads/img1/20190425/5cc1251a5b4ed.jpg!300X300.jpg','<p>案例标题十一</p><p><img src=\"/uploads/img1/20190425/5cc12ab977628.jpg\" title=\"5cc12ab977628.jpg\" alt=\"11.jpg\"/></p>','案例标题十一','2019-04-25 11:10:09','2019-04-25 11:34:20','38','19','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('36','案例标题十二','','','','','','/uploads/img1/20190425/5cc1252bd4c0d.jpg!300X300.jpg','<p>案例标题十二</p><p><img src=\"/uploads/img1/20190425/5cc12acb42992.jpg\" title=\"5cc12acb42992.jpg\" alt=\"13.jpg\"/></p>','案例标题十一','2019-04-25 11:10:22','2019-04-25 11:34:41','89','19','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('37','设计师一','','','','','','/uploads/img1/20190425/5cc1295924b15.jpg!300X300.jpg','<p>设计师一</p><p><img src=\"/uploads/img1/20190425/5cc1295ecf7f0.jpg\" title=\"5cc1295ecf7f0.jpg\" alt=\"设计师1.jpg\"/></p>','设计师一','2019-04-25 11:27:54','2019-04-25 11:28:40','14','9','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('38','设计师二','','','','','','/uploads/img1/20190425/5cc129758a0c0.jpg!300X300.jpg','<p>设计师二</p><p><img src=\"/uploads/img1/20190425/5cc1297ed943d.jpg\" title=\"5cc1297ed943d.jpg\" alt=\"设计师2.jpg\"/></p>','设计师二','2019-04-25 11:28:43','2019-04-25 11:29:04','56','9','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('39','设计师三','','','','','','/uploads/img1/20190425/5cc1298e8d067.jpg!300X300.jpg','<p>设计师三</p><p><img src=\"/uploads/img1/20190425/5cc12996aaee7.jpg\" title=\"5cc12996aaee7.jpg\" alt=\"设计师3.jpg\"/></p><p><br/></p>','设计师三','2019-04-25 11:29:06','2019-04-25 11:29:37','79','9','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('40','设计师四','','','','','','/uploads/img1/20190425/5cc129b1cdc2a.jpg!300X300.jpg','<p>设计师四</p><p><img src=\"/uploads/img1/20190425/5cc129b739746.jpg\" title=\"5cc129b739746.jpg\" alt=\"设计师4.jpg\"/></p>','设计师四','2019-04-25 11:29:40','2019-04-25 11:30:00','94','9','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('25','建设网站之前必须要搞懂的几件事','','','','','','/uploads/img1/20190425/5cc11879d272a.jpg!300X300.jpg','<p>&nbsp; 建设网站分为自主建设和找专业的建站公司建设这两种，但无论你选择哪一种建站方式，都要提前了解一些关于建站的基本信息，下面来说几点你在建设网站之前必须要搞懂的几件事。<br/><br/>\r\n	一、花费情况<br/><br/>\r\n	　　很多人容易把网站建设与网页建设混为一谈，但是它们二者的区别是比较大的，所以网站建设的话费不如网页设计那么多。相对于网页设计来说，网站建设所需要花费的钱额要小于网页设计。建议在选择建站公司开始建站之前，还是要查询相关资料，了解一下如今市场上普遍的收费量，以免被坑。最好&quot;货比三家&quot;，咨询好几个公司的建站，当然也还要了解公司的口碑，不能一味地贪图便宜，因为口碑影响着网站建设的质量。<br/><br/>\r\n	　　另外还有一个影响价格的主要因素，就是它有不同建站方式，比如说自助建站、寻找专业的建站公司、淘宝建站，一般分为这三种。当然如果你寻找专业的建站公司，收费就比较高了，但是质量上有一定保证，它不像淘宝，淘宝获得差评或者是好评是很常见的事情。所以要自己选择想要的建站方式，最好提前了解一些情况之后再做决定。<br/><br/>\r\n	二、明确需求<br/><br/>\r\n	　　这对于想要建站的企业或者公司来说是比较重要的，你想要建设什么类型的网站将它放在什么空间里使用，需要有哪些程序和功能……等等问题，都需要你提前做好准备，然后告知你所选择的建站公司。<br/><br/>\r\n	三、售后服务<br/><br/>\r\n	　　不是所有人在购买东西时都会关注售后服务如何的，因为他们压根不会考虑上如果买到的东西回家出了问题怎么办，其实这是一个不好的习惯。对于网站建设来说也是一样的道理，要了解售后服务情况，这也能从侧面反应你选择的建站公司的服务态度与产品质量优劣。<br/><br/>\r\n	　　其实你需要了解的问题远远不止这些，除了以上所讨论的这些问题，你还要了解建站的基本流程、建站公司建站质量等等问题，未雨绸缪才能减少错误发生的概率。</p><p><br/></p>','  建设网站分为自主建设和找专业的建站公司建设这两种，但无论你选择哪一种建站方式，都要提前了解一些关于建站的基本信息，下面来说几点你在建设网站之前必须要搞懂的几件事。\r\n	\r\n	一、花费情况\r\n	\r\n	　　很多人容易把网站建设与网','2019-04-25 10:04:10','2019-04-25 10:16:26','34','15','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('23','网站维护对于企业来说具有哪些重要性','','','','','','/uploads/img1/20190425/5cc11578ac5f3.jpg!300X300.jpg','<p>&nbsp; &nbsp;企业在网站建设成功之后并不是大功告成了，旗鱼科技成功建设网站只是第一步，最重要的就是需要合理的进行维护和优化只有这样才会让网站的推广效果更好，并且可以让自己的网站争取更多的资源，所以大家在进行企业网站建设之后需要注意企业网站维护的重要性，否则自己网站根本没有办法得到更好的发展。<br/>\r\n	<br/>\r\n	　　1、让企业竞争力更强<br/>\r\n	<br/>\r\n	　　网站在建设成功之后必须要合理的进行网站维护，这样才可以让网站上线之后得到更好的发展，得到更多人的关注和认可自然流量就会变得越来越大，而且能够让企业在发展过程中得到更好的知名度，品牌辨识度也会得到相应的提升，合理的进行网站维护才能避免网站在竞争的时候受到影响，让推广升级的优势得到展现。<br/>\r\n	<br/>\r\n	　　2、让网站长久发展更稳定<br/>\r\n	<br/>\r\n	　　网站如果想要更好的长久进行稳定发展也能够让网站未来得到更好的发展升级就需要每天规律性的提供更多的内容，内容更新而且可以让主题更加明显，这样才会让大众用户在浏览的时候得到更好的体验，自然大众用户的好感度就会得到相应的提升，这对于网站长久的发展提高竞争力会有很好的保障。<br/>\r\n	<br/>\r\n	　　3、提升网站排名更好的推广<br/>\r\n	<br/>\r\n	　　在进行网站推广的时候大家如果想要让自己网站的知名度更高就必须要让网站的内容更加丰富，尤其是可以更好的符合受众群体的浏览需求，所以企业网站在进行推广的时候就需要注意正确的维护，让内容变得更加丰富主题也更加鲜明，这样就可以在整个行业当中占据更好的发展位置得到更好的竞争优势，未来的发展也会有一定的促进作用。<br/>\r\n	<br/>\r\n	　　旗鱼科技由此可见企业网站维护对于企业网站推广具有非常重要的意义，而且可以让网站的推广面积变得更加广泛，自然就会让网站积累更多的人脉资源带来更多的客户，所以网站未来发展就会得到更好的推动，这对于企业的经营以及管理来说也会带来更好的优势。</p><p><br/></p>','&nbsp; &nbsp;企业在网站建设成功之后并不是大功告成了，旗鱼科技成功建设网站只是第一步，最重要的就是需要合理的进行维护和优化只有这样才会让网站的推广效果更好，并且可以让自己的网站争取更多的资源，所以大家在进行企业网站建设之后需要注','2019-04-25 10:03:17','2019-04-25 10:03:38','15','14','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('24','网站建设公司都需要经过哪些步骤','','','','','','','<p>&nbsp; 一些企业管理层觉得找第三方网站建设公司需要花费比较多的钱，因此想要自己建站，但是他们不懂建站需要经过哪些步骤，以及建站都需要注意哪些事项，下面网站建设公司资深人员就带大家了解。</p><p>\r\n	&nbsp;</p><p>\r\n	　　1、对企业市场用户做调研<br/>\r\n	<br/>\r\n	　　不同的企业有着不同的用户，想要让自己的网站受到用户喜欢，就必须要做好市场用户调研，这样才能够知道用户都喜欢哪种风格的网站。如果不做好市场用户调研，随意建站是不会得到用户喜欢，有时候企业可能要建好几个风格的网站才能让市场用户喜欢，浪费了很多不必要的损失。<br/>\r\n	<br/>\r\n	　　2、招聘相应岗位的员工<br/>\r\n	<br/>\r\n	　　想要建站就离不开这些人才:项目主管、前端架构师、网页设计师、程序员、编辑等等，这些人员的招聘需要花费大量时间，并且企业需要开出比较丰厚的待遇等能让他们留下来，比较这些技术人才是不会呆在小地方工作。<br/>\r\n	<br/>\r\n	　　3、网站主题确定<br/>\r\n	<br/>\r\n	　　接下来好确定好网站主题，企业网站不一样主题也是不一样，比如说一些母婴行业的网站比较适合可爱风格，手表行业网站比较适合大气高端风格，主题是要根据市场用户来决定。<br/>\r\n	<br/>\r\n	　　4、网站域名和服务器购买<br/>\r\n	<br/>\r\n	　　网站域名是要根据企业名称和产品来决定，千万不要选择和这些不相关的域名，另外服务器的购买也是要挑选适中，低价格服务器除了不稳定以外，还会给网站带来很多没有必要的危害。<br/>\r\n	<br/>\r\n	　　5、网站上线调试<br/>\r\n	<br/>\r\n	　　每一个用户所使用的搜索引擎是不一样，这就导致了网站需要兼容不同的浏览器，网站建设完成之后，需要进行调试。直到所有搜索引擎都能够展现出来。<br/>\r\n	<br/>\r\n	　　企业建站所要经过的步骤确实是比较多，并且还有很多需要注意的事项，稍微没有做好可能就会引起网站建设失败，因此很多企业还是比较喜欢直接找专业的建站公司来帮助自己完成建站。</p><p><br/></p>','&nbsp; 一些企业管理层觉得找第三方网站建设公司需要花费比较多的钱，因此想要自己建站，但是他们不懂建站需要经过哪些步骤，以及建站都需要注意哪些事项，下面网站建设公司资深人员就带大家了解。\r\n	&nbsp;\r\n	　　1、对企业市场用户做调','2019-04-25 10:03:51','2019-04-25 10:04:04','40','14','100','1','0','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('19','网站建设公司网站策划需要考虑到哪些','','','','','','','<p>&nbsp; &nbsp;建立一个属于自己的企业网站简单吗？每一个程序员肯定说看似简单实则麻烦，单单企业网站策划方案的确定就需要长时间的考察和确定时间，不经过策划就盲目制作的企业网站只能看不能用，或者发挥不出其基本的功能。那么，作为一个网站设计工作人员对企业网站策划方案需要考虑哪些因素和内容，来为企业网站的制作做好准备呢？接下来我们就来聊一聊。</p><p>\r\n	&nbsp;</p><p>\r\n	　　一、考虑一下网站设计的结构<br/>\r\n	<br/>\r\n	　　网站设计时忽视了对网站结构的确定也就相当于忽视了网站后期页面的制作细节。企业网站采用什么样的结构形式直接影响着用户在登录公司网站之后的体验，以用户体验为中心的网站结构设计能够让用户清楚的看到网站所要表达的内容，同样也因为结构上的设计合理符合用户搜索引擎的爱好，增加了用户在网站上停留的时间。与此同时，网站结构的确定还方便后期需要进行内容上的调整且不会影响用户体验。<br/>\r\n	<br/>\r\n	　　二、考虑网站的具体内容<br/>\r\n	<br/>\r\n	　　不可否认，企业网站策划方案里面内容是主导用户能否停留阅读的重要因素。网站设计上再华丽，装饰再漂亮，但网页内容不能够吸引用户的注意力和关注，这样的网站同样是不能获得搜索引擎的青睐。故此，企业网站设计时务必将产品介绍，联系方式，使用说明确定好之后再进行网站的设计。<br/>\r\n	<br/>\r\n	　　三、关于网站图片以及其属性的确定<br/>\r\n	<br/>\r\n	　　图片和flash动画可以说是企业网站里不可或缺的因素，图片的属性和选择对于网站运行有着重要的关系，选择的恰当有利于网站的打开速度，运行流畅，同时也能提升网站的品质，而选择不恰当的网站图片则会让企业网站品质拉低，还会影响到网站的运行，故此，在确定企业网站策划方案时一定要确保图片的清晰度，美观度，以及尺寸，分辨率以及与网站风格的统一性。<br/>\r\n	<br/>\r\n	　　除此之外，网站风格和色彩的搭配同样是在策划方案中要确定的因素。网站的风格决定了网站的形象，而色彩的搭配又决定了网站形象的品质，为确保给用户好的体验，网站风格的确定和色彩的搭配建议多参考同行的经典案例，取其精华用于企业网站建设。</p><p><br/></p>','&nbsp; &nbsp;建立一个属于自己的企业网站简单吗？每一个程序员肯定说看似简单实则麻烦，单单企业网站策划方案的确定就需要长时间的考察和确定时间，不经过策划就盲目制作的企业网站只能看不能用，或者发挥不出其基本的功能。那么，作为一个网站','2019-04-19 10:03:39','2019-04-19 10:04:24','49','11','100','1','0','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('20','关于我们','','','','','','','<p>萌芽时期 在公司出现以前，个人独资企业是最典型的企业形式；与独资企业并存的是各种合伙组织，当时的合伙组织中最典型的就是家族经营团体。 在公司产生以前，合伙组织都没有取得法人的地位，但是却有其他的一些法人团体出现。这种情况最早可以追溯至古罗马时期。在古罗马，国家、地方自治团体、寺院等宗教团体、养老院等公益慈善团体都取得了法人的地位。到了中世纪，有一些贸易团体取得了法人的资格，尤其是其中从事海外贸易的组织。在中世纪英国，这样的组织享有相对合伙更大的独立性。 无限公司 最早产生的公司是无限公司。但是，无限公司与合伙没有本质上的区别，只是取得了法人地位的合伙组织而已。 有关无限公司的第一个立法是1673年法国路易十四的《商事条例》，在当时被称为普通公司。在1807年的《法国商法典》中又改名为合名公司。《日本商法典》中也规定有合名会社。无限公司在产生以后，曾经有过长足的发展，但是随着股份有限公司和有限责任公司的产生，无限公司已经退居次要位置。 两合公司 两合公司是由15世纪出现的康曼达组织演变而来的。在康曼达组织中，一部分人出资，但是承担有限责任；一部分人出力，但是承担无限责任。后来，康曼达组织发展为两种企业形式，一种是隐名合伙（有限合伙），一种是两合公司。在股份有限公司出现以后，两合公司还演变出了一种新的形式:股份两合公司。但是最终由于股份有限公司和有限责任公司的出现，两合公司也没有得到很大规模的发展。 股份有限公司 1555年，英国女皇特许与俄国公司进行贸易，从而产生了第一个现代意义上的股份有限公司。一般认为，股份有限公司起源于17世纪英国、荷兰等国设...</p>','萌芽时期 在公司出现以前，个人独资企业是最典型的企业形式；与独资企业并存的是各种合伙组织，当时的合伙组织中最典型的就是家族经营团体。 在公司产生以前，合伙组织都没有取得法人的地位，但是却有其他的一些法人团体出现。这种情况最早可以追溯至古罗马','2019-04-24 16:14:33','2019-04-24 16:14:43','73','1','100','1','0','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('21','建网站需要什么 你需要知道这些','','','','','','/uploads/img1/20190425/5cc114c32b79f.jpg!300X300.jpg','<p>&nbsp; &nbsp;随着互联网时代的来临，人们目前的工作和生活都是离不开网络的。在网络社会当中网站是其中的一个不可缺少的环节，目前网络上面的各种各样的网站数量是非常的多的，也有很多的单位或者是个人对于建网站的需求的。对于众多的需求者们来讲，他们都想要深入的了解一下建网站究竟需要一些什么，那么，建网站需要什么呢？旗鱼科技下面就来为大家介绍一下。</p><p>\r\n	&nbsp;</p><p>\r\n	　　第一、建网站需要先注册域名<br/>\r\n	<br/>\r\n	　　建网站需要什么？想要建设一个网站，最为基础的一个工作就是需要先拥有一个网站的域名，域名也就是大家通常所说网站的网址，是一个企业在网络上面的一个非常重要的标志。要想让更多的人们更好的记住自己的网站那么一定要注册一个方便让大家记住的域名。通常情况之下，注册域名也是需要一定的费用的，根据不同的域名的不同，其收费的价格也会是不一样的，而且域名还是需要每年进行续费的，因此大家一定要高度的注意。<br/>\r\n	<br/>\r\n	　　第二、需要购买网站空间<br/>\r\n	<br/>\r\n	　　网站的空间就是能够存放在网络当中的内容的空间，这一个空间能够储存各种各样的资料，但是从目前的情况来看，空间的费用是比较的高的，当然空间越大对于网站来讲就是越好的，不过大家在建设过程当中一定要根据自己的实际需要来进行。<br/>\r\n	<br/>\r\n	　　第三、网站的风格设计<br/>\r\n	<br/>\r\n	　　这也是其中非常重要的一个方面。每一个公司在建网站的时候一定要根据自己的公司性质来设计网站的色彩、版式、文字、图片还有横幅等各个方面，这样才能够更好的吸引更多的访客的到来。<br/>\r\n	<br/>\r\n	　　第四、网站的维护工作<br/>\r\n	<br/>\r\n	　　为了要让网站能够更加稳定的运行，在平时是需要对网站的服务器、数据库、软件硬件等进行相关的维护工作，这也是建网站过程当中的一个非常重要的方面。<br/>\r\n	<br/>\r\n	　　建网站需要什么？上面这几个方面都是大家在建网站的时候所需要的东西，每一个对于建网站有需求的企业来讲都应当要了解这一些方面，旗鱼科技对于大家的帮助是非常的大的。</p><p><br/></p>','&nbsp; &nbsp;随着互联网时代的来临，人们目前的工作和生活都是离不开网络的。在网络社会当中网站是其中的一个不可缺少的环节，目前网络上面的各种各样的网站数量是非常的多的，也有很多的单位或者是个人对于建网站的需求的。对于众多的需求者们','2019-04-25 09:59:26','2019-04-25 10:00:37','48','14','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('22','网站建设公司网站策划需要考虑到哪些','','','','','','/uploads/img1/20190425/5cc11560a767d.jpg!300X300.jpg','<p>&nbsp; &nbsp;建立一个属于自己的企业网站简单吗？每一个程序员肯定说看似简单实则麻烦，单单企业网站策划方案的确定就需要长时间的考察和确定时间，不经过策划就盲目制作的企业网站只能看不能用，或者发挥不出其基本的功能。那么，作为一个网站设计工作人员对企业网站策划方案需要考虑哪些因素和内容，来为企业网站的制作做好准备呢？接下来我们就来聊一聊。</p><p>\r\n	&nbsp;</p><p>\r\n	　　一、考虑一下网站设计的结构<br/>\r\n	<br/>\r\n	　　网站设计时忽视了对网站结构的确定也就相当于忽视了网站后期页面的制作细节。企业网站采用什么样的结构形式直接影响着用户在登录公司网站之后的体验，以用户体验为中心的网站结构设计能够让用户清楚的看到网站所要表达的内容，同样也因为结构上的设计合理符合用户搜索引擎的爱好，增加了用户在网站上停留的时间。与此同时，网站结构的确定还方便后期需要进行内容上的调整且不会影响用户体验。<br/>\r\n	<br/>\r\n	　　二、考虑网站的具体内容<br/>\r\n	<br/>\r\n	　　不可否认，企业网站策划方案里面内容是主导用户能否停留阅读的重要因素。网站设计上再华丽，装饰再漂亮，但网页内容不能够吸引用户的注意力和关注，这样的网站同样是不能获得搜索引擎的青睐。故此，企业网站设计时务必将产品介绍，联系方式，使用说明确定好之后再进行网站的设计。<br/>\r\n	<br/>\r\n	　　三、关于网站图片以及其属性的确定<br/>\r\n	<br/>\r\n	　　图片和flash动画可以说是企业网站里不可或缺的因素，图片的属性和选择对于网站运行有着重要的关系，选择的恰当有利于网站的打开速度，运行流畅，同时也能提升网站的品质，而选择不恰当的网站图片则会让企业网站品质拉低，还会影响到网站的运行，故此，在确定企业网站策划方案时一定要确保图片的清晰度，美观度，以及尺寸，分辨率以及与网站风格的统一性。<br/>\r\n	<br/>\r\n	　　除此之外，网站风格和色彩的搭配同样是在策划方案中要确定的因素。网站的风格决定了网站的形象，而色彩的搭配又决定了网站形象的品质，为确保给用户好的体验，网站风格的确定和色彩的搭配建议多参考同行的经典案例，取其精华用于企业网站建设。</p><p><br/></p>','&nbsp; &nbsp;建立一个属于自己的企业网站简单吗？每一个程序员肯定说看似简单实则麻烦，单单企业网站策划方案的确定就需要长时间的考察和确定时间，不经过策划就盲目制作的企业网站只能看不能用，或者发挥不出其基本的功能。那么，作为一个网站','2019-04-25 10:00:40','2019-04-25 10:03:14','11','14','100','1','1','','0','1','0','1');
INSERT INTO `xyh_article` VALUES ('18','建网站需要什么 你需要知道这些','','','','','','','<p>&nbsp; &nbsp;随着互联网时代的来临，人们目前的工作和生活都是离不开网络的。在网络社会当中网站是其中的一个不可缺少的环节，目前网络上面的各种各样的网站数量是非常的多的，也有很多的单位或者是个人对于建网站的需求的。对于众多的需求者们来讲，他们都想要深入的了解一下建网站究竟需要一些什么，那么，建网站需要什么呢？旗鱼科技下面就来为大家介绍一下。</p><p>\r\n	&nbsp;</p><p>\r\n	　　第一、建网站需要先注册域名<br/>\r\n	<br/>\r\n	　　建网站需要什么？想要建设一个网站，最为基础的一个工作就是需要先拥有一个网站的域名，域名也就是大家通常所说网站的网址，是一个企业在网络上面的一个非常重要的标志。要想让更多的人们更好的记住自己的网站那么一定要注册一个方便让大家记住的域名。通常情况之下，注册域名也是需要一定的费用的，根据不同的域名的不同，其收费的价格也会是不一样的，而且域名还是需要每年进行续费的，因此大家一定要高度的注意。<br/>\r\n	<br/>\r\n	　　第二、需要购买网站空间<br/>\r\n	<br/>\r\n	　　网站的空间就是能够存放在网络当中的内容的空间，这一个空间能够储存各种各样的资料，但是从目前的情况来看，空间的费用是比较的高的，当然空间越大对于网站来讲就是越好的，不过大家在建设过程当中一定要根据自己的实际需要来进行。<br/>\r\n	<br/>\r\n	　　第三、网站的风格设计<br/>\r\n	<br/>\r\n	　　这也是其中非常重要的一个方面。每一个公司在建网站的时候一定要根据自己的公司性质来设计网站的色彩、版式、文字、图片还有横幅等各个方面，这样才能够更好的吸引更多的访客的到来。<br/>\r\n	<br/>\r\n	　　第四、网站的维护工作<br/>\r\n	<br/>\r\n	　　为了要让网站能够更加稳定的运行，在平时是需要对网站的服务器、数据库、软件硬件等进行相关的维护工作，这也是建网站过程当中的一个非常重要的方面。<br/>\r\n	<br/>\r\n	　　建网站需要什么？上面这几个方面都是大家在建网站的时候所需要的东西，每一个对于建网站有需求的企业来讲都应当要了解这一些方面，旗鱼科技对于大家的帮助是非常的大的。</p><p><br/></p>','&nbsp; &nbsp;随着互联网时代的来临，人们目前的工作和生活都是离不开网络的。在网络社会当中网站是其中的一个不可缺少的环节，目前网络上面的各种各样的网站数量是非常的多的，也有很多的单位或者是个人对于建网站的需求的。对于众多的需求者们','2019-04-19 10:01:23','2019-04-19 10:03:35','49','11','100','1','0','','0','1','0','1');


# 转存表中的数据:xyh_attachment
INSERT INTO `xyh_attachment` VALUES ('1','53391ad0dbbbc.jpg','img1/20171124/5a182c74096b9.jpg','1','69350','1','2017-11-24 22:28:04','1','0');
INSERT INTO `xyh_attachment` VALUES ('2','1-1PR3160201E4.jpg','abc1/20190418/5cb83e77a4c44.jpg','1','457313','0','2019-04-18 17:08:07','1','0');
INSERT INTO `xyh_attachment` VALUES ('3','1-1PR3160201E4.jpg','abc1/20190418/5cb83e9a77d6b.jpg','1','457313','0','2019-04-18 17:08:42','1','0');
INSERT INTO `xyh_attachment` VALUES ('4','1-1PH6162Ta11.jpg','img1/20190424/5cc006c461f6f.jpg','1','167528','1','2019-04-24 14:48:36','1','0');
INSERT INTO `xyh_attachment` VALUES ('5','2.jpg','img1/20190424/5cc0080460e71.jpg','1','133201','1','2019-04-24 14:53:56','1','0');
INSERT INTO `xyh_attachment` VALUES ('6','3.jpg','img1/20190424/5cc0081485f36.jpg','1','132888','1','2019-04-24 14:54:13','1','0');
INSERT INTO `xyh_attachment` VALUES ('7','b1.jpg','abc1/20190424/5cc0149a5ead5.jpg','1','199500','0','2019-04-24 15:47:38','1','0');
INSERT INTO `xyh_attachment` VALUES ('8','1-1P912163122311.jpg','img1/20190425/5cc114c32b79f.jpg','1','116242','1','2019-04-25 10:00:35','1','0');
INSERT INTO `xyh_attachment` VALUES ('9','1-1P912163106159.jpg','img1/20190425/5cc11560a767d.jpg','1','101521','1','2019-04-25 10:03:12','1','0');
INSERT INTO `xyh_attachment` VALUES ('10','1-1P91216304bV.jpg','img1/20190425/5cc11578ac5f3.jpg','1','87319','1','2019-04-25 10:03:36','1','0');
INSERT INTO `xyh_attachment` VALUES ('11','1-1P912163106159.jpg','img1/20190425/5cc11871e7fcc.jpg','1','101521','1','2019-04-25 10:16:18','1','0');
INSERT INTO `xyh_attachment` VALUES ('12','1-1P91216304bV.jpg','img1/20190425/5cc11879d272a.jpg','1','87319','1','2019-04-25 10:16:25','1','0');
INSERT INTO `xyh_attachment` VALUES ('13','4.jpg','img1/20190425/5cc124a5289f0.jpg','1','184675','1','2019-04-25 11:08:21','1','0');
INSERT INTO `xyh_attachment` VALUES ('14','5.jpg','img1/20190425/5cc124bc79b8a.jpg','1','158024','1','2019-04-25 11:08:44','1','0');
INSERT INTO `xyh_attachment` VALUES ('15','6.jpg','img1/20190425/5cc124cd17b22.jpg','1','400475','1','2019-04-25 11:09:01','1','0');
INSERT INTO `xyh_attachment` VALUES ('16','7.jpg','img1/20190425/5cc124daed0de.jpg','1','117803','1','2019-04-25 11:09:15','1','0');
INSERT INTO `xyh_attachment` VALUES ('17','8.jpg','img1/20190425/5cc124f01cebb.jpg','1','141554','1','2019-04-25 11:09:36','1','0');
INSERT INTO `xyh_attachment` VALUES ('18','9.jpg','img1/20190425/5cc124fdbb254.jpg','1','123884','1','2019-04-25 11:09:50','1','0');
INSERT INTO `xyh_attachment` VALUES ('19','10.jpg','img1/20190425/5cc1250d1e7db.jpg','1','158153','1','2019-04-25 11:10:05','1','0');
INSERT INTO `xyh_attachment` VALUES ('20','11.jpg','img1/20190425/5cc1251a5b4ed.jpg','1','336117','1','2019-04-25 11:10:18','1','0');
INSERT INTO `xyh_attachment` VALUES ('21','13.jpg','img1/20190425/5cc125258448f.jpg','1','404811','1','2019-04-25 11:10:29','1','0');
INSERT INTO `xyh_attachment` VALUES ('22','13.jpg','img1/20190425/5cc1252bd4c0d.jpg','1','404811','1','2019-04-25 11:10:36','1','0');
INSERT INTO `xyh_attachment` VALUES ('23','设计师1.jpg','img1/20190425/5cc1295924b15.jpg','1','109853','1','2019-04-25 11:28:25','1','0');
INSERT INTO `xyh_attachment` VALUES ('24','设计师1.jpg','img1/20190425/5cc1295ecf7f0.jpg','1','109853','1','2019-04-25 11:28:30','1','0');
INSERT INTO `xyh_attachment` VALUES ('25','设计师2.jpg','img1/20190425/5cc129758a0c0.jpg','1','129137','1','2019-04-25 11:28:53','1','0');
INSERT INTO `xyh_attachment` VALUES ('26','设计师2.jpg','img1/20190425/5cc1297ed943d.jpg','1','129137','1','2019-04-25 11:29:03','1','0');
INSERT INTO `xyh_attachment` VALUES ('27','设计师3.jpg','img1/20190425/5cc1298e8d067.jpg','1','115478','1','2019-04-25 11:29:18','1','0');
INSERT INTO `xyh_attachment` VALUES ('28','设计师3.jpg','img1/20190425/5cc12996aaee7.jpg','1','115478','1','2019-04-25 11:29:26','1','0');
INSERT INTO `xyh_attachment` VALUES ('29','设计师4.jpg','img1/20190425/5cc129b1cdc2a.jpg','1','129526','1','2019-04-25 11:29:53','1','0');
INSERT INTO `xyh_attachment` VALUES ('30','设计师4.jpg','img1/20190425/5cc129b739746.jpg','1','129526','1','2019-04-25 11:29:59','1','0');
INSERT INTO `xyh_attachment` VALUES ('31','3.jpg','img1/20190425/5cc12a26011d6.jpg','1','132888','1','2019-04-25 11:31:50','1','0');
INSERT INTO `xyh_attachment` VALUES ('32','2.jpg','img1/20190425/5cc12a34cb181.jpg','1','133201','1','2019-04-25 11:32:05','1','0');
INSERT INTO `xyh_attachment` VALUES ('33','1.jpg','img1/20190425/5cc12a40b226c.jpg','1','167528','1','2019-04-25 11:32:17','1','0');
INSERT INTO `xyh_attachment` VALUES ('34','6.jpg','img1/20190425/5cc12a4ecbe09.jpg','1','400475','1','2019-04-25 11:32:31','1','0');
INSERT INTO `xyh_attachment` VALUES ('35','4.jpg','img1/20190425/5cc12a5c59bb9.jpg','1','184675','1','2019-04-25 11:32:44','1','0');
INSERT INTO `xyh_attachment` VALUES ('36','5.jpg','img1/20190425/5cc12a7041559.jpg','1','158024','1','2019-04-25 11:33:04','1','0');
INSERT INTO `xyh_attachment` VALUES ('37','7.jpg','img1/20190425/5cc12a853a0a4.jpg','1','117803','1','2019-04-25 11:33:25','1','0');
INSERT INTO `xyh_attachment` VALUES ('38','8.jpg','img1/20190425/5cc12a92d70af.jpg','1','141554','1','2019-04-25 11:33:39','1','0');
INSERT INTO `xyh_attachment` VALUES ('39','9.jpg','img1/20190425/5cc12a9de2c09.jpg','1','123884','1','2019-04-25 11:33:50','1','0');
INSERT INTO `xyh_attachment` VALUES ('40','10.jpg','img1/20190425/5cc12aad05171.jpg','1','158153','1','2019-04-25 11:34:05','1','0');
INSERT INTO `xyh_attachment` VALUES ('41','11.jpg','img1/20190425/5cc12ab977628.jpg','1','336117','1','2019-04-25 11:34:17','1','0');
INSERT INTO `xyh_attachment` VALUES ('42','13.jpg','img1/20190425/5cc12acb42992.jpg','1','404811','1','2019-04-25 11:34:35','1','0');
INSERT INTO `xyh_attachment` VALUES ('43','1.jpg','abc1/20190425/5cc13021e2387.jpg','1','167528','0','2019-04-25 11:57:22','1','0');
INSERT INTO `xyh_attachment` VALUES ('44','2.jpg','abc1/20190425/5cc1302b5aa4c.jpg','1','133201','0','2019-04-25 11:57:31','1','0');
INSERT INTO `xyh_attachment` VALUES ('45','3.jpg','abc1/20190425/5cc13035c32d6.jpg','1','132888','0','2019-04-25 11:57:41','1','0');
INSERT INTO `xyh_attachment` VALUES ('46','4.jpg','abc1/20190425/5cc13041d8549.jpg','1','184675','0','2019-04-25 11:57:53','1','0');
INSERT INTO `xyh_attachment` VALUES ('47','5.jpg','abc1/20190425/5cc1304c3701e.jpg','1','158024','0','2019-04-25 11:58:04','1','0');
INSERT INTO `xyh_attachment` VALUES ('48','6.jpg','abc1/20190425/5cc1305736235.jpg','1','400475','0','2019-04-25 11:58:15','1','0');
INSERT INTO `xyh_attachment` VALUES ('49','7.jpg','abc1/20190425/5cc130607d9b0.jpg','1','117803','0','2019-04-25 11:58:24','1','0');
INSERT INTO `xyh_attachment` VALUES ('50','8.jpg','abc1/20190425/5cc1306b5aecf.jpg','1','141554','0','2019-04-25 11:58:35','1','0');
INSERT INTO `xyh_attachment` VALUES ('51','9.jpg','abc1/20190425/5cc130766b974.jpg','1','123884','0','2019-04-25 11:58:46','1','0');
INSERT INTO `xyh_attachment` VALUES ('52','10.jpg','abc1/20190425/5cc1307fec243.jpg','1','158153','0','2019-04-25 11:58:55','1','0');
INSERT INTO `xyh_attachment` VALUES ('53','10.jpg','abc1/20190425/5cc1308ee31f1.jpg','1','158153','0','2019-04-25 11:59:10','1','0');
INSERT INTO `xyh_attachment` VALUES ('54','11.jpg','abc1/20190425/5cc1309e4b531.jpg','1','336117','0','2019-04-25 11:59:26','1','0');
INSERT INTO `xyh_attachment` VALUES ('55','13.jpg','abc1/20190425/5cc130a9d0e16.jpg','1','404811','0','2019-04-25 11:59:37','1','0');


# 转存表中的数据:xyh_attachment_index
INSERT INTO `xyh_attachment_index` VALUES ('6','4','4','');
INSERT INTO `xyh_attachment_index` VALUES ('5','3','4','');
INSERT INTO `xyh_attachment_index` VALUES ('4','2','4','');
INSERT INTO `xyh_attachment_index` VALUES ('8','21','1','');
INSERT INTO `xyh_attachment_index` VALUES ('9','22','1','');
INSERT INTO `xyh_attachment_index` VALUES ('10','23','1','');
INSERT INTO `xyh_attachment_index` VALUES ('11','26','1','');
INSERT INTO `xyh_attachment_index` VALUES ('12','25','1','');
INSERT INTO `xyh_attachment_index` VALUES ('13','28','1','');
INSERT INTO `xyh_attachment_index` VALUES ('14','29','1','');
INSERT INTO `xyh_attachment_index` VALUES ('15','30','1','');
INSERT INTO `xyh_attachment_index` VALUES ('16','31','1','');
INSERT INTO `xyh_attachment_index` VALUES ('17','32','1','');
INSERT INTO `xyh_attachment_index` VALUES ('18','33','1','');
INSERT INTO `xyh_attachment_index` VALUES ('19','34','1','');
INSERT INTO `xyh_attachment_index` VALUES ('20','35','1','');
INSERT INTO `xyh_attachment_index` VALUES ('22','36','1','');
INSERT INTO `xyh_attachment_index` VALUES ('24','37','1','');
INSERT INTO `xyh_attachment_index` VALUES ('23','37','1','');
INSERT INTO `xyh_attachment_index` VALUES ('26','38','1','');
INSERT INTO `xyh_attachment_index` VALUES ('25','38','1','');
INSERT INTO `xyh_attachment_index` VALUES ('28','39','1','');
INSERT INTO `xyh_attachment_index` VALUES ('27','39','1','');
INSERT INTO `xyh_attachment_index` VALUES ('30','40','1','');
INSERT INTO `xyh_attachment_index` VALUES ('29','40','1','');


# 转存表中的数据:xyh_auth_group
INSERT INTO `xyh_auth_group` VALUES ('1','总经理','总经理','1','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,115,116,117,118,119,120,121,122,123,124,125','0');


# 转存表中的数据:xyh_auth_group_access
INSERT INTO `xyh_auth_group_access` VALUES ('1','1');


# 转存表中的数据:xyh_auth_rule
INSERT INTO `xyh_auth_rule` VALUES ('1','Manage/Public','公共','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('2','Manage/MenuA1','常规管理(1级菜单)','1','1','1','');
INSERT INTO `xyh_auth_rule` VALUES ('3','Manage/MenuA2','模块管理(1级菜单)','1','1','1','');
INSERT INTO `xyh_auth_rule` VALUES ('4','Manage/MenuA3','系统设置(1级菜单)','1','1','1','');
INSERT INTO `xyh_auth_rule` VALUES ('5','Manage/MenuA4','其他管理(1级菜单)','1','1','1','');
INSERT INTO `xyh_auth_rule` VALUES ('6','Manage/MenuB1','内容管理(2级菜单)','1','1','1','');
INSERT INTO `xyh_auth_rule` VALUES ('7','Manage/MenuB2','快捷面板(2级菜单)','1','1','1','');
INSERT INTO `xyh_auth_rule` VALUES ('8','Manage/MenuB3','内置模块(2级菜单)','1','1','1','');
INSERT INTO `xyh_auth_rule` VALUES ('9','Manage/MenuB4','其他模块(2级菜单)','1','1','1','');
INSERT INTO `xyh_auth_rule` VALUES ('10','Manage/MenuB5','扩展管理(2级菜单)','1','1','1','');
INSERT INTO `xyh_auth_rule` VALUES ('11','Manage/Category','栏目管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('12','Manage/Category/index','列表','1','1','11','');
INSERT INTO `xyh_auth_rule` VALUES ('13','Manage/Category/add','添加','1','1','11','');
INSERT INTO `xyh_auth_rule` VALUES ('14','Manage/Category/edit','修改','1','1','11','');
INSERT INTO `xyh_auth_rule` VALUES ('15','Manage/Category/del','删除','1','1','11','');
INSERT INTO `xyh_auth_rule` VALUES ('16','Manage/Category/sort','排序','1','1','11','');
INSERT INTO `xyh_auth_rule` VALUES ('17','Manage/Auth','管理员权限','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('18','Manage/Auth/indexOfUser','用户列表','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('19','Manage/Auth/addUser','添加用户','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('20','Manage/Auth/editUser','编辑用户','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('21','Manage/Auth/delUser','删除用户','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('22','Manage/Auth/updateStatusOfUser','锁定用户','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('23','Manage/Auth/index',' 职位列表','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('24','Manage/Auth/addGroup','添加职位','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('25','Manage/Auth/editGroup','修改职位','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('26','Manage/Auth/updateGroup','职位状态设置','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('27','Manage/Auth/access','权限设置','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('28','Manage/Auth/rule','规则列表','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('29','Manage/Auth/addRule','添加规则','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('30','Manage/Auth/editRule','修改规则','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('31','Manage/Auth/delRule','删除规则','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('32','Manage/Department/index','部门列表','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('33','Manage/Department/add','添加部门','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('34','Manage/Department/edit','修改部门','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('35','Manage/Department/del','删除部门','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('36','Manage/System','系统设置','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('37','Manage/System/site','网站设置','1','1','36','');
INSERT INTO `xyh_auth_rule` VALUES ('38','Manage/System/url','伪静态缓存设置','1','1','36','');
INSERT INTO `xyh_auth_rule` VALUES ('39','Manage/System/clearCache','清除缓存','1','1','36','');
INSERT INTO `xyh_auth_rule` VALUES ('40','Manage/System/online','在线客服','1','1','36','');
INSERT INTO `xyh_auth_rule` VALUES ('41','Manage/ClearHtml','静态缓存','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('42','Manage/ClearHtml/all','一键更新全站','1','1','41','');
INSERT INTO `xyh_auth_rule` VALUES ('43','Manage/ClearHtml/home','更新首页','1','1','41','');
INSERT INTO `xyh_auth_rule` VALUES ('44','Manage/ClearHtml/lists','更新栏目','1','1','41','');
INSERT INTO `xyh_auth_rule` VALUES ('45','Manage/ClearHtml/shows','更新文档','1','1','41','');
INSERT INTO `xyh_auth_rule` VALUES ('46','Manage/ClearHtml/special','更新专题','1','1','41','');
INSERT INTO `xyh_auth_rule` VALUES ('47','Manage/Personal','我的账户','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('48','Manage/Personal/index','修改资料','1','1','47','');
INSERT INTO `xyh_auth_rule` VALUES ('49','Manage/Personal/pwd','修改密码','1','1','47','');
INSERT INTO `xyh_auth_rule` VALUES ('50','Manage/Member','会员管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('51','Manage/Member/index','会员列表','1','1','50','');
INSERT INTO `xyh_auth_rule` VALUES ('52','Manage/Member/add','添加会员','1','1','50','');
INSERT INTO `xyh_auth_rule` VALUES ('53','Manage/Member/edit','修改会员','1','1','50','');
INSERT INTO `xyh_auth_rule` VALUES ('54','Manage/Member/del','删除会员','1','1','50','');
INSERT INTO `xyh_auth_rule` VALUES ('55','Manage/Membergroup/index','会员组列表','1','1','50','');
INSERT INTO `xyh_auth_rule` VALUES ('56','Manage/Membergroup/add','添加会员组','1','1','50','');
INSERT INTO `xyh_auth_rule` VALUES ('57','Manage/Membergroup/edit','修改会员组','1','1','50','');
INSERT INTO `xyh_auth_rule` VALUES ('58','Manage/Membergroup/del','删除会员','1','1','50','');
INSERT INTO `xyh_auth_rule` VALUES ('59','Manage/Model','模型管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('60','Manage/Model/add','添加','1','1','59','');
INSERT INTO `xyh_auth_rule` VALUES ('61','Manage/Model/edit','修改','1','1','59','');
INSERT INTO `xyh_auth_rule` VALUES ('62','Manage/Model/del','删除','1','1','59','');
INSERT INTO `xyh_auth_rule` VALUES ('63','Manage/Model/sort','排序','1','1','59','');
INSERT INTO `xyh_auth_rule` VALUES ('64','Manage/Menu','菜单管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('65','Manage/Menu/index','列表','1','1','64','');
INSERT INTO `xyh_auth_rule` VALUES ('66','Manage/Menu/add','添加','1','1','64','');
INSERT INTO `xyh_auth_rule` VALUES ('67','Manage/Menu/edit','修改','1','1','64','');
INSERT INTO `xyh_auth_rule` VALUES ('68','Manage/Menu/del','删除','1','1','64','');
INSERT INTO `xyh_auth_rule` VALUES ('69','Manage/Menu/sort','排序','1','1','64','');
INSERT INTO `xyh_auth_rule` VALUES ('70','Manage/Menu/qk','快捷面板','1','1','64','');
INSERT INTO `xyh_auth_rule` VALUES ('71','Manage/Database','数据库管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('72','Manage/Database/index','数据表列表','1','1','71','');
INSERT INTO `xyh_auth_rule` VALUES ('73','Manage/Database/optimize','数据表优化','1','1','71','');
INSERT INTO `xyh_auth_rule` VALUES ('74','Manage/Database/repair','数据表修复','1','1','71','');
INSERT INTO `xyh_auth_rule` VALUES ('75','Manage/Database/backup','数据库备份','1','1','71','');
INSERT INTO `xyh_auth_rule` VALUES ('76','Manage/Database/restore','还原管理','1','1','71','');
INSERT INTO `xyh_auth_rule` VALUES ('77','Manage/Database/restoreData','数据恢复','1','1','71','');
INSERT INTO `xyh_auth_rule` VALUES ('78','Manage/Database/delSqlFiles','删除文件','1','1','71','');
INSERT INTO `xyh_auth_rule` VALUES ('79','Manage/Itemgroup','联动组管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('80','Manage/Itemgroup/index','列表','1','1','79','');
INSERT INTO `xyh_auth_rule` VALUES ('81','Manage/Itemgroup/add','添加','1','1','79','');
INSERT INTO `xyh_auth_rule` VALUES ('82','Manage/Itemgroup/edit','修改','1','1','79','');
INSERT INTO `xyh_auth_rule` VALUES ('83','Manage/Itemgroup/del','删除','1','1','79','');
INSERT INTO `xyh_auth_rule` VALUES ('84','Manage/Iteminfo','联动管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('85','Manage/Iteminfo/index','列表','1','1','84','');
INSERT INTO `xyh_auth_rule` VALUES ('86','Manage/Iteminfo/add','添加','1','1','84','');
INSERT INTO `xyh_auth_rule` VALUES ('87','Manage/Iteminfo/edit','修改','1','1','84','');
INSERT INTO `xyh_auth_rule` VALUES ('88','Manage/Iteminfo/del','删除','1','1','84','');
INSERT INTO `xyh_auth_rule` VALUES ('89','Manage/Iteminfo/sort','排序','1','1','84','');
INSERT INTO `xyh_auth_rule` VALUES ('90','Manage/Area','区域管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('91','Manage/Area/index','列表','1','1','90','');
INSERT INTO `xyh_auth_rule` VALUES ('92','Manage/Area/add','添加','1','1','90','');
INSERT INTO `xyh_auth_rule` VALUES ('93','Manage/Area/edit','修改','1','1','90','');
INSERT INTO `xyh_auth_rule` VALUES ('94','Manage/Area/del','删除','1','1','90','');
INSERT INTO `xyh_auth_rule` VALUES ('95','Manage/Area/sort','排序','1','1','90','');
INSERT INTO `xyh_auth_rule` VALUES ('96','Manage/Area/createJsArea','生成JS','1','1','90','');
INSERT INTO `xyh_auth_rule` VALUES ('97','Manage/Meta','数据元管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('98','Manage/Meta/index','列表','1','1','97','');
INSERT INTO `xyh_auth_rule` VALUES ('99','Manage/Meta/add','添加','1','1','97','');
INSERT INTO `xyh_auth_rule` VALUES ('100','Manage/Meta/edit','修改','1','1','97','');
INSERT INTO `xyh_auth_rule` VALUES ('101','Manage/Meta/del','删除','1','1','97','');
INSERT INTO `xyh_auth_rule` VALUES ('102','Manage/Attachment','已上传文件管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('103','Manage/Attachment/index','列表','1','1','102','');
INSERT INTO `xyh_auth_rule` VALUES ('104','Manage/Attachment/del','删除','1','1','102','');
INSERT INTO `xyh_auth_rule` VALUES ('105','Manage/Templets','模板管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('106','Manage/Templets/index','列表','1','1','105','');
INSERT INTO `xyh_auth_rule` VALUES ('107','Manage/Templets/add','添加','1','1','105','');
INSERT INTO `xyh_auth_rule` VALUES ('108','Manage/Templets/edit','修改','1','1','105','');
INSERT INTO `xyh_auth_rule` VALUES ('109','Manage/Templets/del','删除','1','1','105','');
INSERT INTO `xyh_auth_rule` VALUES ('110','Manage/Block','自由块管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('111','Manage/Block/index','列表','1','1','110','');
INSERT INTO `xyh_auth_rule` VALUES ('112','Manage/Block/add','添加','1','1','110','');
INSERT INTO `xyh_auth_rule` VALUES ('113','Manage/Block/edit','修改','1','1','110','');
INSERT INTO `xyh_auth_rule` VALUES ('114','Manage/Block/del','删除','1','1','110','');
INSERT INTO `xyh_auth_rule` VALUES ('115','Manage/Abc','广告管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('116','Manage/Abc/index','广告位列表','1','1','115','');
INSERT INTO `xyh_auth_rule` VALUES ('117','Manage/Abc/add','添加广告位','1','1','115','');
INSERT INTO `xyh_auth_rule` VALUES ('118','Manage/Abc/edit','修改广告位','1','1','115','');
INSERT INTO `xyh_auth_rule` VALUES ('119','Manage/Abc/del','删除广告位','1','1','115','');
INSERT INTO `xyh_auth_rule` VALUES ('120','Manage/Abc/getcode','获取广告代码','1','1','115','');
INSERT INTO `xyh_auth_rule` VALUES ('121','Manage/Abc/detail','广告列表','1','1','115','');
INSERT INTO `xyh_auth_rule` VALUES ('122','Manage/Abc/addDetail','添加广告','1','1','115','');
INSERT INTO `xyh_auth_rule` VALUES ('123','Manage/Abc/editDetail','修改广告','1','1','115','');
INSERT INTO `xyh_auth_rule` VALUES ('124','Manage/Abc/delDetail','删除广告','1','1','115','');
INSERT INTO `xyh_auth_rule` VALUES ('125','Manage/Abc/sort','广告排序','1','1','115','');
INSERT INTO `xyh_auth_rule` VALUES ('126','Manage/Special','专题管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('127','Manage/Special/index','列表','1','1','126','');
INSERT INTO `xyh_auth_rule` VALUES ('128','Manage/Special/add','添加','1','1','126','');
INSERT INTO `xyh_auth_rule` VALUES ('129','Manage/Special/edit','修改','1','1','126','');
INSERT INTO `xyh_auth_rule` VALUES ('130','Manage/Special/del','删除','1','1','126','');
INSERT INTO `xyh_auth_rule` VALUES ('131','Manage/Special/trach','回收站','1','1','126','');
INSERT INTO `xyh_auth_rule` VALUES ('132','Manage/Special/restore','还原','1','1','126','');
INSERT INTO `xyh_auth_rule` VALUES ('133','Manage/Special/clear','彻底删除','1','1','126','');
INSERT INTO `xyh_auth_rule` VALUES ('134','Manage/Announce','公告管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('135','Manage/Announce/index','列表','1','1','134','');
INSERT INTO `xyh_auth_rule` VALUES ('136','Manage/Announce/add','添加','1','1','134','');
INSERT INTO `xyh_auth_rule` VALUES ('137','Manage/Announce/edit','修改','1','1','134','');
INSERT INTO `xyh_auth_rule` VALUES ('138','Manage/Announce/del','删除','1','1','134','');
INSERT INTO `xyh_auth_rule` VALUES ('139','Manage/Link','友情链接','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('140','Manage/Link/index','列表','1','1','139','');
INSERT INTO `xyh_auth_rule` VALUES ('141','Manage/Link/add','添加','1','1','139','');
INSERT INTO `xyh_auth_rule` VALUES ('142','Manage/Link/edit','修改','1','1','139','');
INSERT INTO `xyh_auth_rule` VALUES ('143','Manage/Link/del','删除','1','1','139','');
INSERT INTO `xyh_auth_rule` VALUES ('144','Manage/Guestbook','留言本管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('145','Manage/Guestbook/index','列表','1','1','144','');
INSERT INTO `xyh_auth_rule` VALUES ('146','Manage/Guestbook/add','添加','1','1','144','');
INSERT INTO `xyh_auth_rule` VALUES ('147','Manage/Guestbook/reply','回复','1','1','144','');
INSERT INTO `xyh_auth_rule` VALUES ('148','Manage/Guestbook/del','删除','1','1','144','');
INSERT INTO `xyh_auth_rule` VALUES ('149','Manage/Comment','评论管理','1','1','0','');
INSERT INTO `xyh_auth_rule` VALUES ('150','Manage/Comment/index','列表','1','1','149','');
INSERT INTO `xyh_auth_rule` VALUES ('151','Manage/Comment/edit','编辑','1','1','149','');
INSERT INTO `xyh_auth_rule` VALUES ('152','Manage/Comment/del','删除','1','1','149','');
INSERT INTO `xyh_auth_rule` VALUES ('153','Manage/System/index','配置项管理','1','1','36','');
INSERT INTO `xyh_auth_rule` VALUES ('154','Manage/System/add','添加配置项','1','1','36','');
INSERT INTO `xyh_auth_rule` VALUES ('155','Manage/System/edit','修改配置项','1','1','36','');
INSERT INTO `xyh_auth_rule` VALUES ('156','Manage/System/del','删除配置项','1','1','36','');
INSERT INTO `xyh_auth_rule` VALUES ('157','Manage/System/sort','配置项排序','1','1','36','');
INSERT INTO `xyh_auth_rule` VALUES ('158','Manage/Auth/categoryAccess','职位栏目权限','1','1','17','');
INSERT INTO `xyh_auth_rule` VALUES ('159','Manage/Membergroup/categoryAccess','会员组栏目权限','1','1','50','');


# 转存表中的数据:xyh_category
INSERT INTO `xyh_category` VALUES ('1','关于我们','guanyuwomen','','0','1','0','','公司介绍','关于我们','','List_gywm.html','Show_article.html','','<p>萌芽时期 在公司出现以前，个人独资企业是最典型的企业形式；与独资企业并存的是各种合伙组织，当时的合伙组织中最典型的就是家族经营团体。 在公司产生以前，合伙组织都没有取得法人的地位，但是却有其他的一些法人团体出现。这种情况最早可以追溯至古罗马时期。在古罗马，国家、地方自治团体、寺院等宗教团体、养老院等公益慈善团体都取得了法人的地位。到了中世纪，有一些贸易团体取得了法人的资格，尤其是其中从事海外贸易的组织。在中世纪英国，这样的组织享有相对合伙更大的独立性。 无限公司 最早产生的公司是无限公司。但是，无限公司与合伙没有本质上的区别，只是取得了法人地位的合伙组织而已。 有关无限公司的第一个立法是1673年法国路易十四的《商事条例》，在当时被称为普通公司。在1807年的《法国商法典》中又改名为合名公司。《日本商法典》中也规定有合名会社。无限公司在产生以后，曾经有过长足的发展，但是随着股份有限公司和有限责任公司的产生，无限公司已经退居次要位置。 两合公司 两合公司是由15世纪出现的康曼达组织演变而来的。在康曼达组织中，一部分人出资，但是承担有限责任；一部分人出力，但是承担无限责任。后来，康曼达组织发展为两种企业形式，一种是隐名合伙（有限合伙），一种是两合公司。在股份有限公司出现以后，两合公司还演变出了一种新的形式:股份两合公司。但是最终由于股份有限公司和有限责任公司的出现，两合公司也没有得到很大规模的发展。 股份有限公司 1555年，英国女皇特许与俄国公司进行贸易，从而产生了第一个现代意义上的股份有限公司。一般认为，股份有限公司起源于17世纪英国、荷兰等国设...</p>','1','1');
INSERT INTO `xyh_category` VALUES ('2','案例展示','anlizhanshi','','0','1','0','新闻中心','','','','List_alzs.html','Show_article.html','','','1','3');
INSERT INTO `xyh_category` VALUES ('5','工艺服务','gongyifuwu','','0','1','0','产品展示','','','','List_gyfw.html','Show_article.html','','','1','4');
INSERT INTO `xyh_category` VALUES ('14','公司新闻','gongsixinwen','','11','1','0','','','','','List_xwdt_gsxw.html','Show_article.html','','','1','1');
INSERT INTO `xyh_category` VALUES ('9','设计团队','shejituandui','','0','1','0','','','','','List_sjtd.html','Show_article.html','','','1','5');
INSERT INTO `xyh_category` VALUES ('13','联系我们','lianxiwomen','','0','1','0','','','','','List_lxwm.html','Show_article.html','','','1','6');
INSERT INTO `xyh_category` VALUES ('15','行业新闻01','xingyexinwen','','11','1','0','','','','','List_xwdt_hyxw.html','Show_article.html','','','1','1');
INSERT INTO `xyh_category` VALUES ('16','现代风格','xiandaifengge','','2','4','0','','','','','List_alzs_xdfg.html','Show_article.html','','','1','1');
INSERT INTO `xyh_category` VALUES ('17','欧式风格','oushifengge','','2','1','0','','','','','List_alzs_osfg.html','Show_article.html','','','1','1');
INSERT INTO `xyh_category` VALUES ('18','中式风格','zhongshifengge','','2','1','0','','','','','List_alzs_zsfg.html','Show_article.html','','','1','1');
INSERT INTO `xyh_category` VALUES ('19','阳台风格','yangtaifengge','','2','1','0','','','','','List_alzs_ytfg.html','Show_article.html','','','1','1');
INSERT INTO `xyh_category` VALUES ('11','新闻动态01','xinwendongtai','','0','1','0','','','','','List_xwdt.html','Show_article.html','','','1','2');


# 转存表中的数据:xyh_category_access


# 转存表中的数据:xyh_comment
INSERT INTO `xyh_comment` VALUES ('1','12','1','智能汽车战场硝烟弥漫 苹果谷歌双雄对决','小明','zhao@163.com','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','2017-10-06 22:59:59','4444','0','0','2');


# 转存表中的数据:xyh_config
INSERT INTO `xyh_config` VALUES ('1','CFG_WEBNAME','网站名称','','','2','1','我的网站','0');
INSERT INTO `xyh_config` VALUES ('2','CFG_WEBURL','网站域名','','','2','1','http://xyhcms02.io','0');
INSERT INTO `xyh_config` VALUES ('3','CFG_WEBTITLE','网站标题','站点首页title(SEO)的设置','','2','1','我的网站','0');
INSERT INTO `xyh_config` VALUES ('4','CFG_KEYWORDS','站点关键词','','','2','1','我的网站','0');
INSERT INTO `xyh_config` VALUES ('5','CFG_DESCRIPTION','站点描述','','textarea','3','1','','0');
INSERT INTO `xyh_config` VALUES ('6','CFG_THEMESTYLE','模板风格','','select\r\n__CFG_THEMESTYLE__','2','1','default','0');
INSERT INTO `xyh_config` VALUES ('7','CFG_COOKIE_ENCODE','cookie加密码','','','2','1','UsYqWNRgi','0');
INSERT INTO `xyh_config` VALUES ('8','CFG_POWERBY','网站版权信息','','textarea','3','1','6666666666666666666','0');
INSERT INTO `xyh_config` VALUES ('9','CFG_STATS','网站统计','','textarea','3','1','','0');
INSERT INTO `xyh_config` VALUES ('10','CFG_BEIAN','网站备案号','','','2','1','666666666666666666','0');
INSERT INTO `xyh_config` VALUES ('11','CFG_ADDRESS','联系地址','','','2','1','昆明北京路','0');
INSERT INTO `xyh_config` VALUES ('12','CFG_PHONE','联系电话','','','2','1','0871-66666','0');
INSERT INTO `xyh_config` VALUES ('13','CFG_WEBSITE_CLOSE','关闭网站','','radio\r\n1:::是\r\n0:::否','4','2','0','0');
INSERT INTO `xyh_config` VALUES ('14','CFG_WEBSITE_CLOSE_INFO','关站提示','','textarea','3','2','站点维护中，请稍等一会...','0');
INSERT INTO `xyh_config` VALUES ('15','CFG_MOBILE_AUTO','手机版开启','','radio\r\n1:::是\r\n0:::否','4','2','0','1');
INSERT INTO `xyh_config` VALUES ('16','CFG_EMAIL_FROM','发件邮箱地址','','','2','3','ddend@qq.com','0');
INSERT INTO `xyh_config` VALUES ('17','CFG_EMAIL_FROM_NAME','发件人名称','','','2','3','站名','0');
INSERT INTO `xyh_config` VALUES ('18','CFG_EMAIL_HOST','STMP服务器','','','2','3','smtp.exmail.qq.com','0');
INSERT INTO `xyh_config` VALUES ('19','CFG_EMAIL_PORT','服务器端口','','','1','3','25','0');
INSERT INTO `xyh_config` VALUES ('20','CFG_EMAIL_LOGINNAME','邮箱帐号','','','2','3','ddend@qq.com','0');
INSERT INTO `xyh_config` VALUES ('21','CFG_EMAIL_PASSWORD','邮箱密码','','','2','3','123zstQhz4','0');
INSERT INTO `xyh_config` VALUES ('22','CFG_BADWORD','禁用词语','','textarea','3','2','艾滋病|中国共产党|111111111','0');
INSERT INTO `xyh_config` VALUES ('23','CFG_FEEDBACK_GUEST','允许匿名评论','','radio\r\n1:::是\r\n0:::否','4','2','1','0');
INSERT INTO `xyh_config` VALUES ('24','CFG_MEMBER_OPEN','开启会员功能','','radio\r\n1:::是\r\n0:::否','4','5','1','0');
INSERT INTO `xyh_config` VALUES ('25','CFG_MEMBER_VERIFYEMAIL',' 开启邮件验证','','radio\r\n1:::是\r\n0:::否','4','5','0','0');
INSERT INTO `xyh_config` VALUES ('26','CFG_MEMBER_NOTALLOW','禁止使用的昵称','','textarea','3','5','www,bbs,ftp,mail,user,users,admin,administrator,xyhcms','0');
INSERT INTO `xyh_config` VALUES ('27','CFG_UPLOAD_MAXSIZE','允许上传大小','KB','','1','4','2048','0');
INSERT INTO `xyh_config` VALUES ('28','CFG_IMGTHUMB_SIZE','缩略图组尺寸','长X高，长X0(固定宽度)，一个尺寸一行，如:300X300 600X0','textarea','5','4','300X300\r\n600X0','0');
INSERT INTO `xyh_config` VALUES ('29','CFG_IMGTHUMB_TYPE','缩略图生成方式','固定大小截取 ,原图等比例缩略','radio\r\n0:::原图等比例缩略\r\n1:::固定大小截取','4','4','0','0');
INSERT INTO `xyh_config` VALUES ('30','CFG_CLICK_NUM_INIT','文档点击数初始化','','radio\r\n1:::固定\r\n0:::随机','1','6','0','0');
INSERT INTO `xyh_config` VALUES ('31','CFG_UPLOAD_ROOTPATH','上传根目录','','','2','4','./uploads/','0');
INSERT INTO `xyh_config` VALUES ('32','CFG_UPLOAD_FILE_EXT','允许附件类型','','textarea','3','4','jpg,gif,png,jpeg,txt,doc,docx,xls,ppt,zip,rar,mp3','0');
INSERT INTO `xyh_config` VALUES ('33','CFG_UPLOAD_IMG_EXT','允许图片类型','带缩略图的图片','','2','4','jpg,gif,png,jpeg','0');
INSERT INTO `xyh_config` VALUES ('34','CFG_VERIFY_REGISTER','开启注册验证码','','radio\r\n1:::是\r\n0:::否','4','2','0','0');
INSERT INTO `xyh_config` VALUES ('35','CFG_VERIFY_LOGIN','开启登录验证码','','radio\r\n1:::是\r\n0:::否','4','2','0','0');
INSERT INTO `xyh_config` VALUES ('36','CFG_VERIFY_GUESTBOOK','开启留言板验证码','','radio\r\n1:::是\r\n0:::否','4','2','0','0');
INSERT INTO `xyh_config` VALUES ('37','CFG_VERIFY_REVIEW','开启评论验证码','','radio\r\n1:::是\r\n0:::否','4','2','1','0');
INSERT INTO `xyh_config` VALUES ('38','CFG_SQL_FILESIZE','sql文件大小','备份数据库，值不可太大，否则会导致内存溢出备份、恢复失败，合理大小在512K~10M间，建议3M一卷。单位字节,5M=5*1024*1024=5242880','','1','6','5242880','0');
INSERT INTO `xyh_config` VALUES ('39','CFG_DOWNLOAD_HIDE','隐藏下载地址','','radio\r\n1:::是\r\n0:::否','4','4','1','0');
INSERT INTO `xyh_config` VALUES ('40','CFG_MOBILE_THEMESTYLE','手机模板风格','','select\r\n__CFG_MOBILE_THEMESTYLE__','2','2','default','1');
INSERT INTO `xyh_config` VALUES ('41','HOME_URL_MODEL','URL模式','','radio\r\n0:::普通模式\r\n1:::PATHINFO模式\r\n2:::REWRITE模式(需要URL_REWRITE支持)\r\n3:::兼容模式','1','900','3','0');
INSERT INTO `xyh_config` VALUES ('42','HOME_URL_PATHINFO_DEPR','参数分割符','针对PATHINFO模式,默认为&quot;/&quot;,如改为&quot;-&quot;:http://www.xyhcms.com/index.php/List-index-id-1','','2','900','/','0');
INSERT INTO `xyh_config` VALUES ('43','HOME_URL_ROUTER_ON','开启路由','开启URL路由(路由规则不熟悉的不要乱改)','radio\r\n1:::是\r\n0:::否','4','900','0','0');
INSERT INTO `xyh_config` VALUES ('44','HOME_URL_ROUTE_RULES','路由规则','路由规则不熟悉的不要乱改','textarea','5','900','Mobile$:::Mobile/Index/index\r\nSpecial/:id\\d:::Special/shows\r\nTag/:tname\\w:::Tag/shows\r\n:e/p/:p\\d:::List/index\r\n:e/:id\\d:::Show/index\r\n/^(\\w+)$/:::List/index?e=:1','0');
INSERT INTO `xyh_config` VALUES ('45','HOME_HTML_CACHE_ON','开启电脑版缓存','开启电脑版缓存','radio\r\n1:::是\r\n0:::否','4','900','0','0');
INSERT INTO `xyh_config` VALUES ('46','MOBILE_HTML_CACHE_ON','开启手机版缓存','','radio\r\n1:::是\r\n0:::否','4','900','0','0');
INSERT INTO `xyh_config` VALUES ('47','HTML_CACHE_INDEX_ON','首页缓存','','radio\r\n1:::是\r\n0:::否','4','900','0','0');
INSERT INTO `xyh_config` VALUES ('48','HTML_CACHE_INDEX_TIME','首页缓存时间','首页缓存时间','','1','900','1200','0');
INSERT INTO `xyh_config` VALUES ('49','HTML_CACHE_LIST_ON','栏目缓存','','radio\r\n1:::是\r\n0:::否','4','900','0','0');
INSERT INTO `xyh_config` VALUES ('50','HTML_CACHE_LIST_TIME','栏目缓存时间','栏目缓存时间','','1','900','0','0');
INSERT INTO `xyh_config` VALUES ('51','HTML_CACHE_SHOW_ON','文章缓存','','radio\r\n1:::是\r\n0:::否','4','900','0','0');
INSERT INTO `xyh_config` VALUES ('52','HTML_CACHE_SHOW_TIME','文章缓存时间','','','1','900','0','0');
INSERT INTO `xyh_config` VALUES ('53','HTML_CACHE_SPECIAL_ON','专题缓存','','radio\r\n1:::是\r\n0:::否','4','900','0','0');
INSERT INTO `xyh_config` VALUES ('54','HTML_CACHE_SPECIAL_TIME','专题缓存时间','专题缓存时间','','1','900','0','0');
INSERT INTO `xyh_config` VALUES ('55','ONLINE_CFG_MODE','客服显示状态','','radio\r\n1:::显示\r\n0:::隐藏','4','901','1','0');
INSERT INTO `xyh_config` VALUES ('56','ONLINE_CFG_STYLE','客服样式','','select\r\n__ONLINE_CFG_STYLE__','2','901','blue','0');
INSERT INTO `xyh_config` VALUES ('57','ONLINE_CFG_H','水平位置','设置水平显示位置','radio\r\n0:::左对齐\r\n1:::右对齐\r\n2:::水平居中','1','901','1','0');
INSERT INTO `xyh_config` VALUES ('58','ONLINE_CFG_H_MARGIN','与边界的距离','水平位置与边界的距离(像素)','','1','901','0','0');
INSERT INTO `xyh_config` VALUES ('59','ONLINE_CFG_V','垂直位置','','radio\r\n0:::顶部对齐\r\n1:::底部对齐\r\n2:::垂直居中','1','901','2','0');
INSERT INTO `xyh_config` VALUES ('60','ONLINE_CFG_V_MARGIN','与边界的距离','垂直位置与边界的距离(像素)','','1','901','0','0');
INSERT INTO `xyh_config` VALUES ('61','ONLINE_CFG_QQ','QQ号码','一行一个QQ号(QQ:::说明)','textarea','5','901','销售咨询:::307299635\r\n售后服务:::307299635','0');
INSERT INTO `xyh_config` VALUES ('62','ONLINE_CFG_WANGWANG','旺旺号码','一行一个旺旺号(旺旺:::说明)','textarea','5','901','在线旺旺:::7bucn','0');
INSERT INTO `xyh_config` VALUES ('63','ONLINE_CFG_PHONE_ON','显示电话','','radio\r\n1:::显示\r\n0:::隐藏','4','901','1','0');
INSERT INTO `xyh_config` VALUES ('64','ONLINE_CFG_PHONE','电话号码','一行一个电话号码(电话号码:::说明)','textarea\r\n','5','901','销售热线:::6525411\r\n技术支持:::6525412','0');
INSERT INTO `xyh_config` VALUES ('65','ONLINE_CFG_GUESTBOOK_ON','显示留言链接','显示留言链接','radio\r\n1:::显示\r\n0:::隐藏','2','901','1','0');
INSERT INTO `xyh_config` VALUES ('66','ONLINE_CFG_QQ_PARAM','QQ参数','QQ参数。不熟悉的，请不要动','textarea','3','901','<a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=[客服号]&site=qq&menu=yes\" class=\"xyh-online-item\"><em class=\"xyh-online-ico-qq\"> </em>[客服说明]</a>','0');
INSERT INTO `xyh_config` VALUES ('67','ONLINE_CFG_WANGWANG_PARAM','旺旺参数','QQ参数。不熟悉的，请不要动','textarea','3','901','<a target=\"_blank\" href=\"http://www.taobao.com/webww/ww.php?ver=3&touid=[客服号]&siteid=cntaobao&status=1&charset=utf-8\" class=\"xyh-online-item\"><em class=\"xyh-online-ico-wangwang\"> </em>[客服说明]</a>','0');
INSERT INTO `xyh_config` VALUES ('68','CFG_IMAGE_WATER_ON','上传图片加水印','水印开启，同时会影响到缩略图','radio\r\n1:::开启\r\n0:::关闭','4','4','0','0');
INSERT INTO `xyh_config` VALUES ('69','CFG_IMAGE_WATER_FILE','水印图片文件','','file@ad','2','4','/uploads/abc1/20171102/59fa9a98da71f.png','0');
INSERT INTO `xyh_config` VALUES ('70','CFG_IMAGE_WATER_POSITION','水印位置','','radio\r\n1:::顶部居左\r\n2:::顶部居中\r\n3:::顶部居右\r\n4:::左边居中\r\n5:::图片中心\r\n6:::右边居中\r\n7:::底部居左\r\n8:::底部居中\r\n9:::底部居右\r\n','1','4','9','0');
INSERT INTO `xyh_config` VALUES ('71','CFG_IMAGE_WATER_DIAPHANEITY','水印透明度','透明度0~100之间，超小超透明','text','1','4','100','0');
INSERT INTO `xyh_config` VALUES ('72','CFG_IMAGE_WATER_IGNORE_WIDTH','加水印最小宽度','上传的图片宽度小于最小宽度(像素)，则不再添加水印。全部添加水印，请填写0','','2','4','300','0');


# 转存表中的数据:xyh_copyfrom


# 转存表中的数据:xyh_department
INSERT INTO `xyh_department` VALUES ('1','网络部','0','网络部','0');
INSERT INTO `xyh_department` VALUES ('3','销售部','0','销售','1');
INSERT INTO `xyh_department` VALUES ('4','美工部','1','美工','0');


# 转存表中的数据:xyh_free_block
INSERT INTO `xyh_free_block` VALUES ('1','Introduction','','<p>网络科技有限公司成立于2007年。是一家集科研、生产、开发、销售为一体的互联网产业高新技术企业。 我公司在全国与多个大型门户网站保持密切技术合作与往来；并且与全国多所高校合作，开发与研究互联网深度产品，取得了不错的研究成果，获得良好的好评</p>','3');


# 转存表中的数据:xyh_guestbook
INSERT INTO `xyh_guestbook` VALUES ('1','小平','','','','','112.115.215.93','2014-03-31 13:35:41','2017-11-24 21:35:16','1','0','网站不错，很喜欢！！！','谢谢支持！','0');
INSERT INTO `xyh_guestbook` VALUES ('2','明明','','','','','112.115.192.30','2014-04-01 15:38:26','2017-11-24 21:35:24','1','0','蓝色很大气，模板很好看！','','0');
INSERT INTO `xyh_guestbook` VALUES ('3','测试','','0@qq.com','','','127.0.0.1','2019-04-25 11:55:16','','0','0','saff ','','0');
INSERT INTO `xyh_guestbook` VALUES ('4','FAFA=','','1873222@QQ.COM','','','127.0.0.1','2019-04-25 14:04:53','','0','0','ASDAS','','0');


# 转存表中的数据:xyh_item_group
INSERT INTO `xyh_item_group` VALUES ('1','flagtype','文档属性','0');
INSERT INTO `xyh_item_group` VALUES ('2','blocktype','自由块类别','0');
INSERT INTO `xyh_item_group` VALUES ('3','softtype','软件类型','0');
INSERT INTO `xyh_item_group` VALUES ('4','softlanguage','软件语言','0');
INSERT INTO `xyh_item_group` VALUES ('5','star','星座','0');
INSERT INTO `xyh_item_group` VALUES ('6','animal','生肖','0');
INSERT INTO `xyh_item_group` VALUES ('7','education','教育程度','0');
INSERT INTO `xyh_item_group` VALUES ('8','configgroup','配置分组','0');
INSERT INTO `xyh_item_group` VALUES ('9','configtype','配置变量类型','0');


# 转存表中的数据:xyh_item_info
INSERT INTO `xyh_item_info` VALUES ('1','图片','flagtype','1','0','0');
INSERT INTO `xyh_item_info` VALUES ('2','头条','flagtype','2','0','0');
INSERT INTO `xyh_item_info` VALUES ('3','推荐','flagtype','4','0','0');
INSERT INTO `xyh_item_info` VALUES ('4','特荐','flagtype','8','0','0');
INSERT INTO `xyh_item_info` VALUES ('5','幻灯','flagtype','16','0','0');
INSERT INTO `xyh_item_info` VALUES ('6','跳转','flagtype','32','0','0');
INSERT INTO `xyh_item_info` VALUES ('7','其他','flagtype','64','0','0');
INSERT INTO `xyh_item_info` VALUES ('8','文字','blocktype','1','0','0');
INSERT INTO `xyh_item_info` VALUES ('9','图片','blocktype','2','0','0');
INSERT INTO `xyh_item_info` VALUES ('10','丰富','blocktype','3','0','0');
INSERT INTO `xyh_item_info` VALUES ('11','国产','softtype','1','0','0');
INSERT INTO `xyh_item_info` VALUES ('12','中文版','softlanguage','1','0','0');
INSERT INTO `xyh_item_info` VALUES ('13','英文版','softlanguage','2','0','0');
INSERT INTO `xyh_item_info` VALUES ('14','多语言版','softlanguage','3','0','0');
INSERT INTO `xyh_item_info` VALUES ('15','白羊座','star','1','0','0');
INSERT INTO `xyh_item_info` VALUES ('16','金牛座','star','2','0','0');
INSERT INTO `xyh_item_info` VALUES ('17','双子座','star','3','0','0');
INSERT INTO `xyh_item_info` VALUES ('18','巨蟹座','star','4','0','0');
INSERT INTO `xyh_item_info` VALUES ('19','狮子座','star','5','0','0');
INSERT INTO `xyh_item_info` VALUES ('20','处女座','star','6','0','0');
INSERT INTO `xyh_item_info` VALUES ('21','天枰座','star','7','0','0');
INSERT INTO `xyh_item_info` VALUES ('22','天蝎座','star','8','0','0');
INSERT INTO `xyh_item_info` VALUES ('23','射手座','star','9','0','0');
INSERT INTO `xyh_item_info` VALUES ('24','摩羯座','star','10','0','0');
INSERT INTO `xyh_item_info` VALUES ('25','水瓶座','star','11','0','0');
INSERT INTO `xyh_item_info` VALUES ('26','双鱼座','star','12','0','0');
INSERT INTO `xyh_item_info` VALUES ('27','鼠','animal','1','0','0');
INSERT INTO `xyh_item_info` VALUES ('28','牛','animal','2','0','0');
INSERT INTO `xyh_item_info` VALUES ('29','虎','animal','3','0','0');
INSERT INTO `xyh_item_info` VALUES ('30','兔','animal','4','0','0');
INSERT INTO `xyh_item_info` VALUES ('31','龙','animal','5','0','0');
INSERT INTO `xyh_item_info` VALUES ('32','蛇','animal','6','0','0');
INSERT INTO `xyh_item_info` VALUES ('33','马','animal','7','0','0');
INSERT INTO `xyh_item_info` VALUES ('34','羊','animal','8','0','0');
INSERT INTO `xyh_item_info` VALUES ('35','猴','animal','9','0','0');
INSERT INTO `xyh_item_info` VALUES ('36','鸡','animal','10','0','0');
INSERT INTO `xyh_item_info` VALUES ('37','狗','animal','11','0','0');
INSERT INTO `xyh_item_info` VALUES ('38','猪','animal','12','0','0');
INSERT INTO `xyh_item_info` VALUES ('39','小学','education','1','0','0');
INSERT INTO `xyh_item_info` VALUES ('40','初中','education','2','0','0');
INSERT INTO `xyh_item_info` VALUES ('41','高中/中专','education','3','0','0');
INSERT INTO `xyh_item_info` VALUES ('42','大学专科','education','4','0','0');
INSERT INTO `xyh_item_info` VALUES ('43','大学本科','education','5','0','0');
INSERT INTO `xyh_item_info` VALUES ('44','硕士','education','6','0','0');
INSERT INTO `xyh_item_info` VALUES ('45','博士以上','education','7','0','0');
INSERT INTO `xyh_item_info` VALUES ('46','站点配置','configgroup','1','0','0');
INSERT INTO `xyh_item_info` VALUES ('47','核心配置','configgroup','2','0','0');
INSERT INTO `xyh_item_info` VALUES ('48','邮箱配置','configgroup','3','0','0');
INSERT INTO `xyh_item_info` VALUES ('49','上传配置','configgroup','4','0','0');
INSERT INTO `xyh_item_info` VALUES ('50','会员配置','configgroup','5','0','0');
INSERT INTO `xyh_item_info` VALUES ('51','其他配置','configgroup','6','0','0');
INSERT INTO `xyh_item_info` VALUES ('52','数字','configtype','1','0','0');
INSERT INTO `xyh_item_info` VALUES ('53','字符','configtype','2','0','0');
INSERT INTO `xyh_item_info` VALUES ('54','文本','configtype','3','0','0');
INSERT INTO `xyh_item_info` VALUES ('55','布尔(真假)','configtype','4','0','0');
INSERT INTO `xyh_item_info` VALUES ('56','数组','configtype','5','0','0');
INSERT INTO `xyh_item_info` VALUES ('57','伪静态/缓存','configgroup','900','0','0');
INSERT INTO `xyh_item_info` VALUES ('58','在线客服','configgroup','901','0','0');


# 转存表中的数据:xyh_link
INSERT INTO `xyh_link` VALUES ('1','行云海CMS','http://www.xyhcms.com','','','0','2014-03-31 16:40:03','1');
INSERT INTO `xyh_link` VALUES ('2','行云海软件','http://www.0871k.com','','','0','2014-03-31 16:40:03','1');
INSERT INTO `xyh_link` VALUES ('3','许愿网','http://www.yuanabc.com','','','1','2014-03-31 16:40:03','1');


# 转存表中的数据:xyh_member


# 转存表中的数据:xyh_member_detail


# 转存表中的数据：xyh_member_group 
INSERT INTO `xyh_member_group` VALUES ('1','游客','','0','0','0');
INSERT INTO `xyh_member_group` VALUES ('2','注册会员','','10','0','0');
INSERT INTO `xyh_member_group` VALUES ('3','中级会员','','30','0','0');


# 转存表中的数据：xyh_menu 
INSERT INTO `xyh_menu` VALUES ('1','常规管理','Manage/MenuA1','0','0','1','1');
INSERT INTO `xyh_menu` VALUES ('2','模块扩展','Manage/MenuA2','0','0','1','2');
INSERT INTO `xyh_menu` VALUES ('3','系统设置','Manage/MenuA3','0','0','1','3');
INSERT INTO `xyh_menu` VALUES ('4','扩展管理','Manage/MenuA4','0','0','1','4');
INSERT INTO `xyh_menu` VALUES ('5','栏目管理','Manage/Category','1','0','1','11');
INSERT INTO `xyh_menu` VALUES ('6','内容管理','Manage/MenuB1','1','0','1','12');
INSERT INTO `xyh_menu` VALUES ('7','快捷面板','Manage/MenuB2','1','0','1','13');
INSERT INTO `xyh_menu` VALUES ('8','栏目管理','Manage/Category/index','5','0','1','111');
INSERT INTO `xyh_menu` VALUES ('9','内置模块','Manage/MenuB3','2','0','1','21');
INSERT INTO `xyh_menu` VALUES ('10','自由块管理','Manage/FreeBlock/index','9','0','1','211');
INSERT INTO `xyh_menu` VALUES ('11','广告管理','Manage/Abc/index','9','1','1','212');
INSERT INTO `xyh_menu` VALUES ('12','专题管理','Manage/Special/index','9','0','1','213');
INSERT INTO `xyh_menu` VALUES ('13','公告管理','Manage/Announce/index','9','1','1','214');
INSERT INTO `xyh_menu` VALUES ('14','友情链接','Manage/Link/index','9','1','1','215');
INSERT INTO `xyh_menu` VALUES ('15','留言本管理','Manage/Guestbook/index','9','1','1','216');
INSERT INTO `xyh_menu` VALUES ('16','评论管理','Manage/Comment/index','9','1','1','217');
INSERT INTO `xyh_menu` VALUES ('17','系统设置','Manage/System','3','0','1','31');
INSERT INTO `xyh_menu` VALUES ('18','会员管理','Manage/Member','3','0','1','34');
INSERT INTO `xyh_menu` VALUES ('19','管理员管理','Manage/Auth','3','0','1','35');
INSERT INTO `xyh_menu` VALUES ('20','网站设置','Manage/System/site','17','0','1','311');
INSERT INTO `xyh_menu` VALUES ('21','伪静态|缓存设置','Manage/System/url','17','0','1','312');
INSERT INTO `xyh_menu` VALUES ('22','清除系统缓存','Manage/System/clearCache','17','1','1','316');
INSERT INTO `xyh_menu` VALUES ('23','在线客服设置','Manage/System/online','17','0','1','313');
INSERT INTO `xyh_menu` VALUES ('24','更新静态缓存','Manage/ClearHtml/index','17','1','1','317');
INSERT INTO `xyh_menu` VALUES ('30','会员管理','Manage/Member/index','18','0','1','331');
INSERT INTO `xyh_menu` VALUES ('31','会员组管理','Manage/MemberGroup/index','18','0','1','332');
INSERT INTO `xyh_menu` VALUES ('32','系统用户管理','Manage/Auth/indexOfUser','19','0','1','341');
INSERT INTO `xyh_menu` VALUES ('33','职位权限','Manage/Auth/index','19','0','1','342');
INSERT INTO `xyh_menu` VALUES ('34','部门管理','Manage/Department/index','19','0','1','343');
INSERT INTO `xyh_menu` VALUES ('35','扩展管理','Manage/MenuB5','4','0','1','41');
INSERT INTO `xyh_menu` VALUES ('36','我的账户','Manage/Personal','3','0','1','33');
INSERT INTO `xyh_menu` VALUES ('37','模型管理','Manage/Model/index','35','0','1','411');
INSERT INTO `xyh_menu` VALUES ('38','菜单管理','Manage/Menu/index','35','0','1','412');
INSERT INTO `xyh_menu` VALUES ('39','数据库管理','Manage/Database/index','35','0','1','413');
INSERT INTO `xyh_menu` VALUES ('40','联动管理','Manage/ItemGroup/index','35','0','1','414');
INSERT INTO `xyh_menu` VALUES ('41','区域管理','Manage/Area/index','35','0','1','415');
INSERT INTO `xyh_menu` VALUES ('42','修改我的信息','Manage/Personal/index','36','0','1','421');
INSERT INTO `xyh_menu` VALUES ('43','修改密码','Manage/Personal/pwd','36','0','1','422');
INSERT INTO `xyh_menu` VALUES ('44','其他模块','Manage/MenuB4','2','0','1','22');
INSERT INTO `xyh_menu` VALUES ('45','已传文件管理','Manage/Attachment/index','35','0','1','416');
INSERT INTO `xyh_menu` VALUES ('46','数据预留--','Manage/Index/index','35','0','0','417');
INSERT INTO `xyh_menu` VALUES ('47','模板管理','Manage/Templets/index','35','0','1','428');
INSERT INTO `xyh_menu` VALUES ('48','Tag管理','Manage/Tag/index','9','0','1','214');


# 转存表中的数据：xyh_model 
INSERT INTO `xyh_model` VALUES ('1','文章模型','','article','1','','List_article.html','Show_article.html','1');
INSERT INTO `xyh_model` VALUES ('2','单页模型','','page','1','','List_page.html','Show_page.html','2');
INSERT INTO `xyh_model` VALUES ('3','产品模型','','product','1','','List_product.html','Show_product.html','3');
INSERT INTO `xyh_model` VALUES ('4','图片模型','','picture','1','','List_picture.html','Show_picture.html','4');
INSERT INTO `xyh_model` VALUES ('5','软件下载模型','','soft','1','','List_soft.html','Show_soft.html','5');


# 转存表中的数据：xyh_order_action 


# 转存表中的数据：xyh_order_detail 


# 转存表中的数据：xyh_order_info 


# 转存表中的数据：xyh_picture 
INSERT INTO `xyh_picture` VALUES ('2','案例标题一','','','/uploads/img1/20190424/5cc006c461f6f.jpg!300X300.jpg','这里是产品的文字描述，后台发布产品时进行编辑，前台会自动调用！','2019-04-24 14:44:35','2019-04-25 11:32:17','','','[{\"url\":\"\\/uploads\\/img1\\/20190424\\/5cc006c461f6f.jpg\",\"alt\":\"\"}]','<p>这里是产品的文字描述，后台发布产品时进行编辑，前台会自动调用！</p><p><img src=\"/uploads/img1/20190425/5cc12a40b226c.jpg\" title=\"5cc12a40b226c.jpg\" alt=\"1.jpg\"/></p>','12','16','100','1','1','','0','1','0','1');
INSERT INTO `xyh_picture` VALUES ('3','案例标题二','','','/uploads/img1/20190424/5cc0080460e71.jpg!300X300.jpg','案例标题二','2019-04-24 14:49:26','2019-04-25 11:32:06','','','[{\"url\":\"\\/uploads\\/img1\\/20190424\\/5cc0080460e71.jpg\",\"alt\":\"\"}]','<p>案例标题二</p><p><img src=\"/uploads/img1/20190425/5cc12a34cb181.jpg\" title=\"5cc12a34cb181.jpg\" alt=\"2.jpg\"/></p>','76','16','100','1','1','','0','1','0','1');
INSERT INTO `xyh_picture` VALUES ('4','案例标题三','','','/uploads/img1/20190424/5cc0081485f36.jpg!300X300.jpg','','2019-04-24 14:54:05','2019-04-25 12:33:45','','','[{\"url\":\"\\/uploads\\/img1\\/20190424\\/5cc0081485f36.jpg\",\"alt\":\"\"}]','<p><br/></p><p><img src=\"/uploads/img1/20190425/5cc12a26011d6.jpg\" title=\"5cc12a26011d6.jpg\" alt=\"3.jpg\"/></p>','26','16','100','1','1','','0','1','0','1');


# 转存表中的数据：xyh_product 


# 转存表中的数据：xyh_search_all 
INSERT INTO `xyh_search_all` VALUES ('34','27',' 装修流程 — 咨询和签订合同阶段','','&nbsp;装修流程 — 咨询和签订合同阶段：\r\n	1、电话或通过客服在线进行咨询，选择最合适的设计师，并预约现场勘察；\r\n	2、现场测量，对装修风格、空间功能划分等与您进行初步沟通；\r\n	3、征求客户的意见后，我们将在三个工作日内给出二到','','2019-04-25 10:53:08','5','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('32','25','建设网站之前必须要搞懂的几件事','/uploads/img1/20190425/5cc11879d272a.jpg!300X300.jpg','  建设网站分为自主建设和找专业的建站公司建设这两种，但无论你选择哪一种建站方式，都要提前了解一些关于建站的基本信息，下面来说几点你在建设网站之前必须要搞懂的几件事。\r\n	\r\n	一、花费情况\r\n	\r\n	　　很多人容易把网站建设与网','','2019-04-25 10:04:10','15','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('33','26','一个成功的网站的建设需要做的几件事','/uploads/img1/20190425/5cc11871e7fcc.jpg!300X300.jpg','  对于一个每天跟网站打交道的程序员来说，怎样建设一个好网站是他们每天都在思考的问题。其实要建设一个好的网站并不困难，只需要做好下面的几个事情就可以了。\r\n	 \r\n	　　第一、清楚的定位 \r\n	\r\n	　　谈到定','','2019-04-25 10:04:53','15','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('31','24','网站建设公司都需要经过哪些步骤','','&nbsp; 一些企业管理层觉得找第三方网站建设公司需要花费比较多的钱，因此想要自己建站，但是他们不懂建站需要经过哪些步骤，以及建站都需要注意哪些事项，下面网站建设公司资深人员就带大家了解。\r\n	&nbsp;\r\n	　　1、对企业市场用户做调','','2019-04-25 10:03:51','14','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('30','23','网站维护对于企业来说具有哪些重要性','/uploads/img1/20190425/5cc11578ac5f3.jpg!300X300.jpg','&nbsp; &nbsp;企业在网站建设成功之后并不是大功告成了，旗鱼科技成功建设网站只是第一步，最重要的就是需要合理的进行维护和优化只有这样才会让网站的推广效果更好，并且可以让自己的网站争取更多的资源，所以大家在进行企业网站建设之后需要注','','2019-04-25 10:03:17','14','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('29','22','网站建设公司网站策划需要考虑到哪些','/uploads/img1/20190425/5cc11560a767d.jpg!300X300.jpg','&nbsp; &nbsp;建立一个属于自己的企业网站简单吗？每一个程序员肯定说看似简单实则麻烦，单单企业网站策划方案的确定就需要长时间的考察和确定时间，不经过策划就盲目制作的企业网站只能看不能用，或者发挥不出其基本的功能。那么，作为一个网站','','2019-04-25 10:00:40','14','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('27','20','关于我们','','萌芽时期 在公司出现以前，个人独资企业是最典型的企业形式；与独资企业并存的是各种合伙组织，当时的合伙组织中最典型的就是家族经营团体。 在公司产生以前，合伙组织都没有取得法人的地位，但是却有其他的一些法人团体出现。这种情况最早可以追溯至古罗马','','2019-04-24 16:14:33','1','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('26','4','案例标题三','/uploads/img1/20190424/5cc0081485f36.jpg!300X300.jpg','','','2019-04-24 14:54:05','16','4','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('25','3','案例标题二','/uploads/img1/20190424/5cc0080460e71.jpg!300X300.jpg','案例标题二','','2019-04-24 14:49:26','16','4','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('24','2','案例标题一','/uploads/img1/20190424/5cc006c461f6f.jpg!300X300.jpg','这里是产品的文字描述，后台发布产品时进行编辑，前台会自动调用！','','2019-04-24 14:44:35','16','4','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('23','19','网站建设公司网站策划需要考虑到哪些','','&nbsp; &nbsp;建立一个属于自己的企业网站简单吗？每一个程序员肯定说看似简单实则麻烦，单单企业网站策划方案的确定就需要长时间的考察和确定时间，不经过策划就盲目制作的企业网站只能看不能用，或者发挥不出其基本的功能。那么，作为一个网站','','2019-04-19 10:03:39','11','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('22','18','建网站需要什么 你需要知道这些','','&nbsp; &nbsp;随着互联网时代的来临，人们目前的工作和生活都是离不开网络的。在网络社会当中网站是其中的一个不可缺少的环节，目前网络上面的各种各样的网站数量是非常的多的，也有很多的单位或者是个人对于建网站的需求的。对于众多的需求者们','','2019-04-19 10:01:23','11','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('28','21','建网站需要什么 你需要知道这些','/uploads/img1/20190425/5cc114c32b79f.jpg!300X300.jpg','&nbsp; &nbsp;随着互联网时代的来临，人们目前的工作和生活都是离不开网络的。在网络社会当中网站是其中的一个不可缺少的环节，目前网络上面的各种各样的网站数量是非常的多的，也有很多的单位或者是个人对于建网站的需求的。对于众多的需求者们','','2019-04-25 09:59:26','14','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('35','28','案例标题五','/uploads/img1/20190425/5cc124a5289f0.jpg!300X300.jpg','案例标题四','','2019-04-25 11:07:44','17','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('36','29','案例标题四','/uploads/img1/20190425/5cc124bc79b8a.jpg!300X300.jpg','案例标题四','','2019-04-25 11:08:34','17','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('37','30','案例标题六','/uploads/img1/20190425/5cc124cd17b22.jpg!300X300.jpg','案例标题六','','2019-04-25 11:08:48','17','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('38','31','案例标题七','/uploads/img1/20190425/5cc124daed0de.jpg!300X300.jpg','案例标题七','','2019-04-25 11:09:07','18','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('39','32','案例标题八','/uploads/img1/20190425/5cc124f01cebb.jpg!300X300.jpg','案例标题八','','2019-04-25 11:09:27','18','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('40','33','案例标题九','/uploads/img1/20190425/5cc124fdbb254.jpg!300X300.jpg','案例标题八','','2019-04-25 11:09:41','18','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('41','34','案例标题十','/uploads/img1/20190425/5cc1250d1e7db.jpg!300X300.jpg','案例标题十','','2019-04-25 11:09:57','19','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('42','35','案例标题十一','/uploads/img1/20190425/5cc1251a5b4ed.jpg!300X300.jpg','案例标题十一','','2019-04-25 11:10:09','19','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('43','36','案例标题十二','/uploads/img1/20190425/5cc1252bd4c0d.jpg!300X300.jpg','案例标题十一','','2019-04-25 11:10:22','19','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('44','37','设计师一','/uploads/img1/20190425/5cc1295924b15.jpg!300X300.jpg','设计师一','','2019-04-25 11:27:54','9','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('45','38','设计师二','/uploads/img1/20190425/5cc129758a0c0.jpg!300X300.jpg','设计师二','','2019-04-25 11:28:43','9','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('46','39','设计师三','/uploads/img1/20190425/5cc1298e8d067.jpg!300X300.jpg','设计师三','','2019-04-25 11:29:06','9','1','100','0','1');
INSERT INTO `xyh_search_all` VALUES ('47','40','设计师四','/uploads/img1/20190425/5cc129b1cdc2a.jpg!300X300.jpg','设计师四','','2019-04-25 11:29:40','9','1','100','0','1');


# 转存表中的数据：xyh_soft 


# 转存表中的数据：xyh_special 
INSERT INTO `xyh_special` VALUES ('1','文章汇集','','','','','http://img9.xyhcms.com/201410/53391df14c069.jpg!200X200.jpg','文章汇集','2014-04-28 15:01:49','2017-10-03 08:52:06','','82','1','200','1','1','','0','1','','Special_content.html','1');


# 转存表中的数据：xyh_tag 
INSERT INTO `xyh_tag` VALUES ('1','风投界','0','0','100','2017-11-24 22:17:27');
INSERT INTO `xyh_tag` VALUES ('2','阿里','0','0','100','2017-11-24 22:17:37');
INSERT INTO `xyh_tag` VALUES ('3','58同城','0','0','100','2017-11-24 22:17:46');
INSERT INTO `xyh_tag` VALUES ('4','比特币','0','0','100','2017-11-24 22:17:57');
INSERT INTO `xyh_tag` VALUES ('5','Facebook','0','0','100','2017-11-24 22:18:11');
INSERT INTO `xyh_tag` VALUES ('6','无人机','0','0','100','2017-11-24 22:18:11');
INSERT INTO `xyh_tag` VALUES ('7','外卖','0','0','100','2017-11-24 22:18:31');
INSERT INTO `xyh_tag` VALUES ('8','移动应用','0','0','100','2017-11-24 22:18:57');
INSERT INTO `xyh_tag` VALUES ('9','互联网','0','0','100','2017-11-24 22:19:33');
INSERT INTO `xyh_tag` VALUES ('10','打车','0','0','100','2017-11-24 22:21:47');
INSERT INTO `xyh_tag` VALUES ('11','嘀嘀打车','0','0','100','2017-11-24 22:21:47');
INSERT INTO `xyh_tag` VALUES ('12','微软','0','0','100','2017-11-24 22:22:03');
INSERT INTO `xyh_tag` VALUES ('13','服务商','0','0','100','2017-11-24 22:22:26');
INSERT INTO `xyh_tag` VALUES ('14','豌豆荚','0','0','100','2017-11-24 22:23:31');


# 转存表中的数据：xyh_tag_index 
