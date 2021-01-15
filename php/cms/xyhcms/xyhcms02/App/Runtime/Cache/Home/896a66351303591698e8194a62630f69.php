<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!--xyhcms-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo ($title); ?>-我的网站</title>
<meta name="description" content="<?php echo ($description); ?>" />
<meta name="keywords" content="<?php echo ($keywords); ?>" />
<meta name="author" content="order by yhcms.com" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- <link href="/Public/Home/default/css/bootstrap.css" rel="stylesheet"> -->
<link href="/Public/Home/default/css/bootstrap.min.css" rel="stylesheet">
<link href="/Public/Home/default/css/animate.css" rel="stylesheet">
<link href="/Public/Home/default/css/swiper-3.3.1.min.css" rel="stylesheet" />
<link href="/Public/Home/default/css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="/Public/Home/default/js/html5shiv.min.js"></script>
<script src="/Public/Home/default/js/respond.min.js"></script>
<![endif]-->
<script src="/Public/Home/default/js/jquery-1.11.3.js" type="text/javascript"></script>
<script src="/Public/Home/default/js/jquery.superslide.2.1.1.js" type="text/javascript"></script>
<script src="/Public/Home/default/js/swiper-3.3.1.jquery.min.js" type="text/javascript"></script>
<script src="/Public/Home/default/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/Public/Home/default/js/wow.min.js" type="text/javascript"></script>
<script src="/Public/Home/default/js/main.js" type="text/javascript"></script>
<script src="/Public/Home/default/js/funtion.js" type="text/javascript"></script>
<link href="/Public/Home/default/css/sdf.css" rel="stylesheet" type="text/css" />
<script src="/Public/Home/default/js/common.js" type="text/javascript"></script>
<script src="/Public/Home/default/js/myfocus-2.0.4.min.js" type="text/javascript"></script>
</head>
<body data-offset="20" data-spy="scroll" data-target="#myScrollspy">
<div id="wrap">
    <!--xyhcms-->
    <!-- 侧边导航 -->

<div class="class page-prev visible-xs">
  <h1 class="class-top"><img src="/Public/Home/default/images/logo.png"><span class="class-close">×</span></h1>
  <div class="class-m">
    <ul class="nnav">
      <li><a href="<?php echo ($navlist["url"]); ?>" class="ce">网站首页</a> </li>
      <!--xyhcms-->
      <?php
 $_typeid = intval('0'); if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); $_navlist = get_category(1); if($_typeid == 0) { $_navlist = \Common\Lib\Category::toLayer($_navlist); }else { $_navlist = \Common\Lib\Category::toLayer($_navlist, 'child', $_typeid); } foreach($_navlist as $autoindex => $navlist): $navlist['url'] = get_url($navlist); ?><li class="menu_head">
          <dl class="ericon">
            <span class="icon1">-</span><span class="icon2">+</span>
          </dl>
          <a href="<?php echo ($navlist["url"]); ?>" class="ce"><?php echo ($navlist["name"]); ?></a>
          <ul class="menu_body">
            <!--xyhcms-->
            <?php if(is_array($navlist['child'])): $i = 0; $__LIST__ = $navlist['child'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href='<?php echo (get_url($vo)); ?>' class="er"><?php echo ($vo["name"]); ?></a> </li><?php endforeach; endif; else: echo "" ;endif; ?>
          </ul>
        </li><?php endforeach;?>
    </ul>
  </div>
</div>
<div class="opacity2"></div>
<div id="header" class="head">
  <div class="container">
    <div class="mol_navbutton visible-xs fl tc"> <img src="/Public/Home/default/images/menu.png"> </div>
    <div class="logo fl"> <a href="http://xyhcms02.io"> <img src="/Public/Home/default/images/logo.png"> </a> </div>
    <div class="collapse navbar-collapse fr">
      <ul class="nav navbar-nav nav_box">
        <li id="pindex" class='yiji current'><a href="http://xyhcms02.io">首页</a> </li>
        <!--xyhcms-->
        <?php
 $_typeid = intval('0'); if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); $_navlist = get_category(1); if($_typeid == 0) { $_navlist = \Common\Lib\Category::toLayer($_navlist); }else { $_navlist = \Common\Lib\Category::toLayer($_navlist, 'child', $_typeid); } foreach($_navlist as $autoindex => $navlist): $navlist['url'] = get_url($navlist); ?><li id="pcase" class="yiji "><a href="<?php echo ($navlist["url"]); ?>"><?php echo ($navlist["name"]); ?></a> 
            <!--xyhcms-->
            <?php if(is_array($navlist['child'])): $i = 0; $__LIST__ = $navlist['child'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="libox"> <a href="<?php echo (get_url($vo)); ?>"><?php echo ($vo["name"]); ?></a> </div><?php endforeach; endif; else: echo "" ;endif; ?>
          </li><?php endforeach;?>
      </ul>
    </div>
  </div>
</div>
<!---->
    <div id="banner_ny">
        <!--xyhcms轮播图-->
        <?php
 $_id = intval('2'); $where = array('aid'=> $_id, 'status' => 1); $limit = "0"; $abc_cate = M('abc')->find($_id); if ($abc_cate) { $limit = empty($limit) ? $abc_cate['num'] : $limit; $where['start_time'] = array('lt', date('Y-m-d H:i:s')); $where['end_time'] = array('gt', date('Y-m-d H:i:s')); $_abc = M('abcDetail')->where($where)->order('sort')->limit($limit)->select(); }else { $_abc = array(); } if (empty($_abc)) { $_abc = array(); } foreach($_abc as $autoindex => $abc): $abc['width'] = $abc_cate['width']; $abc['height'] = $abc_cate['height']; ?><img src="<?php echo ($abc["content"]); ?>"/><?php endforeach;?>
        <div id="main">
            <div class="container">
                <div class="adr_top col-md-12 col-sm-12 col-xs-12">
                    <!--xyhcms指定顶级栏目调用-->
                    <?php
 $_typeid = intval('11'); $_level = ""; $_category_all = get_category(0); if ($_level == 'parent') { $type = \Common\Lib\Category::getParent($_category_all, $_typeid, 1); } else if ($_level == 'top') { $type = \Common\Lib\Category::getParent($_category_all, $_typeid, 2); } else { $type = \Common\Lib\Category::getSelf($_category_all, $_typeid); } if (!empty($type)): $type['url'] = get_url($type); ?><p class="posnav fl fadeInLeft wow"><?php echo ($type["name"]); ?><span><?php echo ($type["ename"]); ?></span></p><?php endif;?>
                    <span class="navmore visible-xs"><i class="down">+</i><i class="up">-</i></span> <span
                        class="adress fr hidden-xs"><?php
 $_sname = ''; $_surl = ''; $_hname = ''; $_typeid = intval('-1'); if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); if ($_typeid == 0 && $_sname == '') { $_sname = isset($title) ? $title : ''; } echo get_position($_typeid, $_sname, $_surl, 0, "",$_hname); ?> </span></div>
                <div class="mainav_l col-md-3 col-sm-4 col-xs-12">
                    <ul class="ce">
                        <!--xyhcms指定二级栏目调用-->
                        <?php
 $_typeid = intval('11'); $_type = 'son'; $_temp = explode(',', "10"); $_temp[0] = $_temp[0] > 0? $_temp[0] : 10; if (isset($_temp[1]) && intval($_temp[1]) > 0) { $_limit[0] = $_temp[0]; $_limit[1] = intval($_temp[1]); }else { $_limit[0] = 0; $_limit[1] = $_temp[0]; } if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); if (1 == 1) { $__catlist = get_category(10); } else{ $__catlist = get_category(1); } if (0) { $__catlist = \Common\Lib\Category::getLevelOfModelId($__catlist, 0); } if (1 == 0) { $__catlist = \Common\Lib\Category::clearPageAndLink($__catlist); } if($_typeid == 0 || $_type == 'top') { $_catlist = \Common\Lib\Category::toLayer($__catlist); }else { if ($_type == 'self') { $_typeinfo = \Common\Lib\Category::getSelf($__catlist, $_typeid ); $_catlist = \Common\Lib\Category::toLayer($__catlist, 'child', $_typeinfo['pid']); }else { $_catlist = \Common\Lib\Category::toLayer($__catlist, 'child', $_typeid); } } foreach($_catlist as $autoindex => $catlist): if($autoindex < $_limit[0]) continue; if($autoindex >= ($_limit[1]+$_limit[0])) break; $catlist['url'] = get_url($catlist); ?><li><a href="<?php echo ($catlist["url"]); ?>"><?php echo ($catlist["name"]); ?></a></li><?php endforeach;?>

                        <div class="clear"></div>
                    </ul>
                </div>
                <script type="text/javascript">
                    jQuery(function () {
                        jQuery('.sub2').hide();
                        jQuery('.sub3').hide();
                        jQuery(".sub1").each(function () {
                            if (jQuery(this).next('.sub2').length > 0) {
                                jQuery(this).find('a').attr('href', "javascript:void(0)");
                            }
                        });
                        jQuery('.sub1').click(function () {
                            jQuery('.sub2').hide();
                            jQuery('.sub3').hide();
                            jQuery(this).nextUntil('.sub1').show();
                        });

                        var jcurrent = jQuery('#');
                        var pid = jcurrent.attr("pid");
                        var depth = jcurrent.attr("depth");
                        if (depth == 2) {
                            jQuery("#" + pid).show().nextUntil(".sub1").show();
                        } else if (depth == 3) {
                            var c1id = jQuery("#" + pid).attr('pid');
                            jQuery('#' + c1id).nextUntil(".sub1").show();
                        }

                        jcurrent.find('a').addClass("current");
                    })
                </script>
                <div class="main_r newss col-md-9 col-sm-8 col-xs-12">
                    <div class="dectil list">
                        <ul class="newlist">
                            <?php
 $_typeid = '11'; $_keyword = ''; if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); $_table_name = ''; if (!empty($_typeid)) { $_typeid_arr = explode(',',$_typeid); $ids_arr = array(); foreach($_typeid_arr as $_typeid_key => $_typeid_val) { $_typeid_val = intval($_typeid_val); if (empty($_typeid_val)) { continue; } if (empty($_table_name)) { $_selfcate = \Common\Lib\Category::getSelf(get_category(10), $_typeid_val); $_table_name = strtolower($_selfcate['table_name']); } $_typeid_ids = \Common\Lib\Category::getChildsId(get_category(10), $_typeid_val, true); $ids_arr = array_merge($ids_arr,$_typeid_ids); } $ids_arr = array_unique($ids_arr); if ($_table_name == '') { $_table_name = 'article'; } $where = array($_table_name.'.delete_status' => 0, 'cate_status' => array('LT',2)); if (!empty($ids_arr)) { $where[$_table_name.'.cid'] = array('IN',$ids_arr); } }else { $_table_name = 'article'; $where = array($_table_name.'.delete_status' => 0, 'cate_status' => array('LT',2)); } if (0 > 0 && 0 > 0) { $where[$_table_name.'.point'] = array('between',array(0,0)); }else if (0 > 0) { $where[$_table_name.'.point'] = array('EGT', 0); }else if (0 > 0) { $where[$_table_name.'.point'] = array('ELT', 0); } if ($_keyword != '') { $where[$_table_name.'.title'] = array('like','%'.$_keyword.'%'); } if (0 > 0) { $where['_string'] = $_table_name.'.flag & 0 = 0 '; } if (!empty($_table_name) && $_table_name != 'page') { if (5 > 0) { $count = D2('ArcView',"$_table_name")->where($where)->count(); $ename = I('e', '', 'htmlspecialchars,trim'); if (!empty($ename) && C('URL_ROUTER_ON') == true) { $param['p'] = I('p', 1, 'intval'); $param_action = '/'.$ename; }else { $param = array(); $param_action = ''; } $thisPage = new \Common\Lib\Page($count, 5, $param, $param_action); $thisPage->rollPage = 5; $thisPage->setConfig('theme'," %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%"); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "10"; } $_list = D2('ArcView',"$_table_name")->nofield('content,picture_urls')->where($where)->order("point DESC,id DESC")->limit($limit)->select(); if (empty($_list)) { $_list = array(); } }else { $_list = array(); } foreach($_list as $autoindex => $list): $_jumpflag = ($list['flag'] & B_JUMP) == B_JUMP? true : false; $list['url'] = get_content_url($list['id'], $list['cid'], $list['ename'], $_jumpflag, $list['jump_url']); if(30) $list['title'] = str2sub($list['title'], 30, 0); if(0) $list['description'] = str2sub($list['description'], 0, 0); if(isset($list['picture_urls'])) $list['picture_urls'] = get_picture_array($list['picture_urls']); ?><li class="col-md-12 col-sm-12 col-xs-12">
                                <div class="nimg col-md-4 col-sm-4 col-xs-12"><a href="<?php echo ($list["url"]); ?>"><img
                                        src="<?php echo ($list["litpic"]); ?>"></a></div>
                                <div class="newdec2 col-md-8 col-sm-8 col-xs-12">
                                    <dd><a href="<?php echo ($list["url"]); ?>"><?php echo ($list["title"]); ?></a></dd>
                                    <dt>
                                        <?php echo ($list["description"]); ?>...
                                    </dt>
                                    <span><?php echo ($list["publish_time"]); ?></span></div>
                            </li><?php endforeach;?>
                        </ul>
                        <div class="page tc">
                            <?php echo ($page); ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--xyhcms-->
        <div id="footer">
  <div class="container">
    <div class="row">
      <div class="foot col-md-12 col-sm-12 col-xs-12 tc">
        <div class="link hidden-xs">友情链接:
			<?php
 $_type = intval('-1'); if ($_type == 0) { $where = array('is_check'=> 0); }else if ($_type == 1) { $where = array('is_check'=> 1); } else { $where = array('id' => array('gt',0)); } if (0 > 0) { $count = M('link')->where($where)->count(); $thisPage = new \Common\Lib\Page($count, 0); $thisPage->rollPage = 5; $thisPage->setConfig('theme'," %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%"); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "10"; } $_flink = M('link')->where($where)->order("sort ASC")->limit($limit)->select(); if (empty($_flink)) { $_flink = array(); } foreach($_flink as $autoindex => $flink): ?><a href="<?php echo ($flink["url"]); ?>" target="_blank">
                    <?php echo ($flink["name"]); ?>
                </a><?php endforeach;?> 
		  </div>
        <div class="copy">  6666666666666666666    备案号:666666666666666666 <br>
        </div>
        <div id="back_top" class="n_top hidden-xs"><img src="/Public/Home/default/images/top.png"></div>
      </div>
    </div>
  </div>
</div>

    </div>
</body>
</html>