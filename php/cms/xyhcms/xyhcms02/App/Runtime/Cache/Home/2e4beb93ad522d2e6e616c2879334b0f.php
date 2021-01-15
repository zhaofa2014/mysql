<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html Public "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<body data-spy="scroll" data-target="#myScrollspy" data-offset="20">
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
    <!--xyhcms-->
    <script type="text/javascript" src="/Public/Home/default/js/map.js"></script>

<!-- pcbanner -->
<div id="banner">
    <div id="myCarousel" class="carousel slide">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
        </ol>
        <div class="carousel-inner">
            <!--xyhcms-->
            <?php
 $_id = intval('1'); $where = array('aid'=> $_id, 'status' => 1); $limit = "1"; $abc_cate = M('abc')->find($_id); if ($abc_cate) { $limit = empty($limit) ? $abc_cate['num'] : $limit; $where['start_time'] = array('lt', date('Y-m-d H:i:s')); $where['end_time'] = array('gt', date('Y-m-d H:i:s')); $_abc = M('abcDetail')->where($where)->order('sort')->limit($limit)->select(); }else { $_abc = array(); } if (empty($_abc)) { $_abc = array(); } foreach($_abc as $autoindex => $abc): $abc['width'] = $abc_cate['width']; $abc['height'] = $abc_cate['height']; ?><div class='item active'><img src='<?php echo ($abc["content"]); ?>'/></div>
                <div class='item'><img src='<?php echo ($abc["content"]); ?>'/></div><?php endforeach;?>
        </div>
        <a class="carousel-control left s-prev" href="#myCarousel" data-slide="prev">&lt;</a> <a
            class="carousel-control right s-next" href="#myCarousel" data-slide="next">&gt;</a></div>
</div>
<!-- 手机banner -->
<div id="molbanner">
    <div class="swiper-container swiper-banner">
        <ul class="swiper-wrapper banner-img">
            <!--xyhcms-->
            <?php
 $_id = intval('1'); $where = array('aid'=> $_id, 'status' => 1); $limit = "2"; $abc_cate = M('abc')->find($_id); if ($abc_cate) { $limit = empty($limit) ? $abc_cate['num'] : $limit; $where['start_time'] = array('lt', date('Y-m-d H:i:s')); $where['end_time'] = array('gt', date('Y-m-d H:i:s')); $_abc = M('abcDetail')->where($where)->order('sort')->limit($limit)->select(); }else { $_abc = array(); } if (empty($_abc)) { $_abc = array(); } foreach($_abc as $autoindex => $abc): $abc['width'] = $abc_cate['width']; $abc['height'] = $abc_cate['height']; ?><li class="swiper-slide"><a class="pic"><img src="<?php echo ($abc["content"]); ?>"/></a>
                </li>
                <li class="swiper-slide"><a class="pic"><img src="<?php echo ($abc["content"]); ?>"/></a>
                </li><?php endforeach;?>
        </ul>
        <!-- Add Pagination -->
        <div class="swiper-dote">
            <ul>
            </ul>
        </div>
    </div>
</div>
<div id="main">
    <div class="About">
        <div class="container">
            <div class="row">
                <?php
 $_typeid = '1'; $_keyword = ''; if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); $_table_name = ''; if (!empty($_typeid)) { $_typeid_arr = explode(',',$_typeid); $ids_arr = array(); foreach($_typeid_arr as $_typeid_key => $_typeid_val) { $_typeid_val = intval($_typeid_val); if (empty($_typeid_val)) { continue; } if (empty($_table_name)) { $_selfcate = \Common\Lib\Category::getSelf(get_category(10), $_typeid_val); $_table_name = strtolower($_selfcate['table_name']); } $_typeid_ids = \Common\Lib\Category::getChildsId(get_category(10), $_typeid_val, true); $ids_arr = array_merge($ids_arr,$_typeid_ids); } $ids_arr = array_unique($ids_arr); if ($_table_name == '') { $_table_name = 'article'; } $where = array($_table_name.'.delete_status' => 0, 'cate_status' => array('LT',2)); if (!empty($ids_arr)) { $where[$_table_name.'.cid'] = array('IN',$ids_arr); } }else { $_table_name = 'article'; $where = array($_table_name.'.delete_status' => 0, 'cate_status' => array('LT',2)); } if (0 > 0 && 0 > 0) { $where[$_table_name.'.point'] = array('between',array(0,0)); }else if (0 > 0) { $where[$_table_name.'.point'] = array('EGT', 0); }else if (0 > 0) { $where[$_table_name.'.point'] = array('ELT', 0); } if ($_keyword != '') { $where[$_table_name.'.title'] = array('like','%'.$_keyword.'%'); } if (0 > 0) { $where['_string'] = $_table_name.'.flag & 0 = 0 '; } if (!empty($_table_name) && $_table_name != 'page') { if (0 > 0) { $count = D2('ArcView',"$_table_name")->where($where)->count(); $ename = I('e', '', 'htmlspecialchars,trim'); if (!empty($ename) && C('URL_ROUTER_ON') == true) { $param['p'] = I('p', 1, 'intval'); $param_action = '/'.$ename; }else { $param = array(); $param_action = ''; } $thisPage = new \Common\Lib\Page($count, 0, $param, $param_action); $thisPage->rollPage = 5; $thisPage->setConfig('theme'," %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%"); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "50"; } $_list = D2('ArcView',"$_table_name")->nofield('content,picture_urls')->where($where)->order("point DESC,id DESC")->limit($limit)->select(); if (empty($_list)) { $_list = array(); } }else { $_list = array(); } foreach($_list as $autoindex => $list): $_jumpflag = ($list['flag'] & B_JUMP) == B_JUMP? true : false; $list['url'] = get_content_url($list['id'], $list['cid'], $list['ename'], $_jumpflag, $list['jump_url']); if(0) $list['title'] = str2sub($list['title'], 0, 0); if(0) $list['description'] = str2sub($list['description'], 0, 0); if(isset($list['picture_urls'])) $list['picture_urls'] = get_picture_array($list['picture_urls']); ?><!-- <div class="about_line col-md-12 col-sm-12 hidden-xs">
                                   <img src="">
                              </div> -->
                    <div class="about_img col-md-7 col-sm-7 hidden-xs"><img src="/Public/Home/default/images/about.png">
                    </div>
                    <div class="about_dec col-lg-6 col-md-7 col-sm-7 col-xs-12">
                        <!--xyhcms-->
                        <?php
 $_typeid = intval('1'); $_level = ""; $_category_all = get_category(0); if ($_level == 'parent') { $type = \Common\Lib\Category::getParent($_category_all, $_typeid, 1); } else if ($_level == 'top') { $type = \Common\Lib\Category::getParent($_category_all, $_typeid, 2); } else { $type = \Common\Lib\Category::getSelf($_category_all, $_typeid); } if (!empty($type)): $type['url'] = get_url($type); ?><h2 class="title">
                                <i class="zoomInRight wow"><?php echo ($type["ename"]); ?></i>
                                <span class="fadeInLeft wow"><?php echo ($type["name"]); ?></span>
                            </h2><?php endif;?>
                        <div class="a_decs slideInUp wow">
                            <?php echo ($list["description"]); ?>
                            <!--<?php echo ($list["content"]); ?>-->
                        </div>
                        <a href="<?php echo ($list["url"]); ?>" class="more db"><span>Read more</span></a></div><?php endforeach;?>
            </div>
        </div>
    </div>
</div>
<div class="Probox">
    <div class="container">
        <div class="row">
            <div class="pros col-md-12 col-sm-12 col-xs-12">
                <!--xyhcms-->
                <?php
 $_typeid = intval('2'); $_level = ""; $_category_all = get_category(0); if ($_level == 'parent') { $type = \Common\Lib\Category::getParent($_category_all, $_typeid, 1); } else if ($_level == 'top') { $type = \Common\Lib\Category::getParent($_category_all, $_typeid, 2); } else { $type = \Common\Lib\Category::getSelf($_category_all, $_typeid); } if (!empty($type)): $type['url'] = get_url($type); ?><h2 class="title">
                        <i class="zoomInRight wow"><?php echo ($type["ename"]); ?></i>
                        <span class="fadeInLeft wow"><?php echo ($type["name"]); ?></span>
                    </h2><?php endif;?>

                <div class="slide_pro">
                    <div class="hd col-md-7 col-sm-7 col-xs-12">
                        <ul>
                            <?php
 $_typeid = intval('2'); $_type = 'son'; $_temp = explode(',', "10"); $_temp[0] = $_temp[0] > 0? $_temp[0] : 10; if (isset($_temp[1]) && intval($_temp[1]) > 0) { $_limit[0] = $_temp[0]; $_limit[1] = intval($_temp[1]); }else { $_limit[0] = 0; $_limit[1] = $_temp[0]; } if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); if (1 == 1) { $__catlist = get_category(10); } else{ $__catlist = get_category(1); } if (0) { $__catlist = \Common\Lib\Category::getLevelOfModelId($__catlist, 0); } if (1 == 0) { $__catlist = \Common\Lib\Category::clearPageAndLink($__catlist); } if($_typeid == 0 || $_type == 'top') { $_catlist = \Common\Lib\Category::toLayer($__catlist); }else { if ($_type == 'self') { $_typeinfo = \Common\Lib\Category::getSelf($__catlist, $_typeid ); $_catlist = \Common\Lib\Category::toLayer($__catlist, 'child', $_typeinfo['pid']); }else { $_catlist = \Common\Lib\Category::toLayer($__catlist, 'child', $_typeid); } } foreach($_catlist as $autoindex => $catlist): if($autoindex < $_limit[0]) continue; if($autoindex >= ($_limit[1]+$_limit[0])) break; $catlist['url'] = get_url($catlist); ?><li class='pro_lb on'><?php echo ($catlist["name"]); ?></li><?php endforeach;?>

                        </ul>
                    </div>
                    <div class="bd col-md-12 col-sm-12 col-xs-12">
                        <div class="detil">
                            <?php
 $_id = intval('3'); $where = array('aid'=> $_id, 'status' => 1); $limit = "0"; $abc_cate = M('abc')->find($_id); if ($abc_cate) { $limit = empty($limit) ? $abc_cate['num'] : $limit; $where['start_time'] = array('lt', date('Y-m-d H:i:s')); $where['end_time'] = array('gt', date('Y-m-d H:i:s')); $_abc = M('abcDetail')->where($where)->order('sort')->limit($limit)->select(); }else { $_abc = array(); } if (empty($_abc)) { $_abc = array(); } foreach($_abc as $autoindex => $abc): $abc['width'] = $abc_cate['width']; $abc['height'] = $abc_cate['height']; ?><div class="pro1 col-md-7 col-sm-7 col-xs-12 slideInLeft wow animated"><a
                                    href='#'><img
                                    src='/Public/Home/default/images/allimg/180726/1-1PH6162941463.jpg'>
                                <p class="p_title transition">案例标题三</p>
                            </a></div><?php endforeach;?>

                            <div class="pro1 pro2 col-md-5 col-sm-5 col-xs-6 slideInRight wow animated"><a
                                    href='#'><img
                                    src='/Public/Home/default/images/allimg/180726/1-1PH6162914638.jpg'>
                                <p class="p_title transition">案例标题二</p>
                            </a></div>

                            <div class="pro1 pro3 col-md-4 col-sm-4 col-xs-6 slideInUp wow animated"><a
                                    href='#'><img
                                    src='/Public/Home/default/images/allimg/180726/1-1PH6162Ta11.jpg'>
                                <p class="p_title transition">案例标题一</p>
                            </a></div>

                            <div class="col-md-12 col-sm-12 col-xs-12"><a href='/a/cp1/'
                                                                          class="more db"><span>Read more</span></a>
                            </div>
                        </div>
                        <div class="detil">
                            <div class="pro1 col-md-7 col-sm-7 col-xs-12 slideInLeft wow animated"><a
                                    href='#><img
                                    src='/Public/Home/default/images/allimg/180726/1-1PZ5093530643.jpg'>
                                <p class="p_title transition">案例标题六</p>
                            </a></div>

                            <div class="pro1 pro2 col-md-5 col-sm-5 col-xs-6 slideInRight wow animated"><a
                                    href='#'><img
                                    src='/Public/Home/default/images/allimg/180726/1-1PH616302a21.jpg'>
                                <p class="p_title transition">案例标题五</p>
                            </a></div>

                            <div class="pro1 pro3 col-md-4 col-sm-4 col-xs-6 slideInUp wow animated"><a
                                    href='#'><img
                                    src='/Public/Home/default/images/allimg/180726/1-1PH6163004H1.jpg'>
                                <p class="p_title transition">案例标题四</p>
                            </a></div>

                            <div class="col-md-12 col-sm-12 col-xs-12"><a href='/a/cp2/'
                                                                          class="more db"><span>Read more</span></a>
                            </div>
                        </div>
                        <div class="detil">
                            <div class="pro1 col-md-7 col-sm-7 col-xs-12 slideInLeft wow animated"><a
                                    href='#'><img
                                    src='/Public/Home/default/images/allimg/180726/1-1PH61632451R.jpg'>
                                <p class="p_title transition">案例标题九</p>
                            </a></div>

                            <div class="pro1 pro2 col-md-5 col-sm-5 col-xs-6 slideInRight wow animated"><a
                                    href='#'><img
                                    src='/Public/Home/default/images/allimg/180726/1-1PH6163524425.jpg'>
                                <p class="p_title transition">案例标题八</p>
                            </a></div>

                            <div class="pro1 pro3 col-md-4 col-sm-4 col-xs-6 slideInUp wow animated"><a
                                    href='#'><img
                                    src='/Public/Home/default/images/allimg/180726/1-1PH6163152550.jpg'>
                                <p class="p_title transition">案例标题七</p>
                            </a></div>

                            <div class="col-md-12 col-sm-12 col-xs-12"><a href='/a/cp3/'
                                                                          class="more db"><span>Read more</span></a>
                            </div>
                        </div>
                        <div class="detil">
                            <div class="pro1 col-md-7 col-sm-7 col-xs-12 slideInLeft wow animated"><a
                                    href='#'><img
                                    src='/Public/Home/default/images/allimg/180726/1-1PZ5093Q2602.jpg'>
                                <p class="p_title transition">案例标题十二</p>
                            </a></div>

                            <div class="pro1 pro2 col-md-5 col-sm-5 col-xs-6 slideInRight wow animated"><a
                                    href='#'><img
                                    src='/Public/Home/default/images/allimg/180726/1-1PZ5093K3D3.jpg'>
                                <p class="p_title transition">案例标题十一</p>
                            </a></div>

                            <div class="pro1 pro3 col-md-4 col-sm-4 col-xs-6 slideInUp wow animated"><a
                                    href='#'><img
                                    src='/Public/Home/default/images/allimg/180726/1-1PH6163219505.jpg'>
                                <p class="p_title transition">案例标题十</p>
                            </a></div>

                            <div class="col-md-12 col-sm-12 col-xs-12"><a href='#'
                                                                          class="more db"><span>Read more</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="Newbox pr">
    <div class="container">
        <div class="row">
            <div class="new_bg pa col-md-12 col-sm-12 col-xs-12"><img src="/Public/Home/default/images/new_bg.jpg">
            </div>
            <div class="news pr">
                <!--xyhcms-->
                <?php
 $_typeid = intval('11'); $_level = ""; $_category_all = get_category(0); if ($_level == 'parent') { $type = \Common\Lib\Category::getParent($_category_all, $_typeid, 1); } else if ($_level == 'top') { $type = \Common\Lib\Category::getParent($_category_all, $_typeid, 2); } else { $type = \Common\Lib\Category::getSelf($_category_all, $_typeid); } if (!empty($type)): $type['url'] = get_url($type); ?><h2 class="title">
                        <i class="zoomInRight wow"><?php echo ($type["ename"]); ?></i><br>
                        <span class="fadeInLeft wow"><?php echo ($type["name"]); ?></span>
                    </h2><?php endif;?>


                <ul class="newlist">
                    <?php
 $_typeid = '14'; $_keyword = ''; if($_typeid == -1) $_typeid = I('cid', 0, 'intval'); $_table_name = ''; if (!empty($_typeid)) { $_typeid_arr = explode(',',$_typeid); $ids_arr = array(); foreach($_typeid_arr as $_typeid_key => $_typeid_val) { $_typeid_val = intval($_typeid_val); if (empty($_typeid_val)) { continue; } if (empty($_table_name)) { $_selfcate = \Common\Lib\Category::getSelf(get_category(10), $_typeid_val); $_table_name = strtolower($_selfcate['table_name']); } $_typeid_ids = \Common\Lib\Category::getChildsId(get_category(10), $_typeid_val, true); $ids_arr = array_merge($ids_arr,$_typeid_ids); } $ids_arr = array_unique($ids_arr); if ($_table_name == '') { $_table_name = 'article'; } $where = array($_table_name.'.delete_status' => 0, 'cate_status' => array('LT',2)); if (!empty($ids_arr)) { $where[$_table_name.'.cid'] = array('IN',$ids_arr); } }else { $_table_name = 'article'; $where = array($_table_name.'.delete_status' => 0, 'cate_status' => array('LT',2)); } if (0 > 0 && 0 > 0) { $where[$_table_name.'.point'] = array('between',array(0,0)); }else if (0 > 0) { $where[$_table_name.'.point'] = array('EGT', 0); }else if (0 > 0) { $where[$_table_name.'.point'] = array('ELT', 0); } if ($_keyword != '') { $where[$_table_name.'.title'] = array('like','%'.$_keyword.'%'); } if (0 > 0) { $where['_string'] = $_table_name.'.flag & 0 = 0 '; } if (!empty($_table_name) && $_table_name != 'page') { if (0 > 0) { $count = D2('ArcView',"$_table_name")->where($where)->count(); $ename = I('e', '', 'htmlspecialchars,trim'); if (!empty($ename) && C('URL_ROUTER_ON') == true) { $param['p'] = I('p', 1, 'intval'); $param_action = '/'.$ename; }else { $param = array(); $param_action = ''; } $thisPage = new \Common\Lib\Page($count, 0, $param, $param_action); $thisPage->rollPage = 5; $thisPage->setConfig('theme'," %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%"); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "2"; } $_list = D2('ArcView',"$_table_name")->nofield('content,picture_urls')->where($where)->order("point DESC,id DESC")->limit($limit)->select(); if (empty($_list)) { $_list = array(); } }else { $_list = array(); } foreach($_list as $autoindex => $list): $_jumpflag = ($list['flag'] & B_JUMP) == B_JUMP? true : false; $list['url'] = get_content_url($list['id'], $list['cid'], $list['ename'], $_jumpflag, $list['jump_url']); if(30) $list['title'] = str2sub($list['title'], 30, 0); if(100) $list['description'] = str2sub($list['description'], 100, 0); if(isset($list['picture_urls'])) $list['picture_urls'] = get_picture_array($list['picture_urls']); ?><li>
                            <div class="nimg col-md-3 col-sm-3 hidden-xs"><a href="<?php echo ($list["url"]); ?>"><img
                                    src="<?php echo ($list["litpic"]); ?>"></a></div>
                            <div class="newdec col-md-9 col-sm-9 col-xs-12">
                                <div class="time tc col-md-2 col-sm-2 col-xs-3"><span><?php echo (get_date($list["publish_time"],'d')); ?></span><br>
                                   <?php echo (get_date($list["publish_time"],'Y-m')); ?>
                                </div>
                                <div class="descript col-md-10 col-sm-10 col-xs-9">
                                    <dd><a href="<?php echo ($list["url"]); ?>"><?php echo ($list["title"]); ?></a></dd>
                                    <dt>
                                        <?php echo ($list["description"]); ?>...
                                    </dt>
                                </div>
                            </div>
                        </li><?php endforeach;?>
                </ul>
                <a href="<?php echo ($list["url"]); ?>" class="more db"><span>Read more</span></a></div>
        </div>
    </div>
</div>
<div class="Yousbox">
    <div class="chiz"></div>
    <div class="container">
        <div class="row">
            <h2 class="title"><span class="zoomInRight wow">我们的优势</span><br>
                <i class=" fadeInLeft wow">为大众节省装修费用，提供便捷服务，营造幸福之家</i></h2>
            <div class="youshis">
                <ul class="ys_list">
                    <li><a>
                        <div class="icon transition tc"><img src="/Public/Home/default/images/a1.png"></div>
                        <p>国内外优秀设计师</p>
                    </a></li>
                    <li><a>
                        <div class="icon transition tc"><img src="/Public/Home/default/images/a2.png"></div>
                        <p>顶级的服务水平</p>
                    </a></li>
                    <li><a>
                        <div class="icon transition tc"><img src="/Public/Home/default/images/a3.png"></div>
                        <p>完善的材料供应链</p>
                    </a></li>
                    <li><a>
                        <div class="icon transition tc"><img src="/Public/Home/default/images/a4.png"></div>
                        <p>多风格的设计方案</p>
                    </a></li>
                    <li><a>
                        <div class="icon transition tc"><img src="/Public/Home/default/images/a5.png"></div>
                        <p>性价比最高的报价方案</p>
                    </a></li>
                    <li><a>
                        <div class="icon transition tc"><img src="/Public/Home/default/images/a6.png"></div>
                        <p>优质环保的装修材料</p>
                    </a></li>
                    <li><a>
                        <div class="icon transition tc"><img src="/Public/Home/default/images/a7.png"></div>
                        <p>完善的施工团队</p>
                    </a></li>
                    <li><a>
                        <div class="icon transition tc"><img src="/Public/Home/default/images/a8.png"></div>
                        <p>一条龙服务</p>
                    </a></li>
                </ul>
            </div>
            <!-- 手机优势 -->
            <div id="molyousbox">
                <div class="swiper-container swiper-yous">
                    <ul class="swiper-wrapper youshi">
                        <li class="swiper-slide">
                            <div class="y_icons"><a>
                                <div class="icon tc dtc vm"><img src='/Public/Home/default/images/a1.png'></div>
                                <p>国内外优秀设计师</p>
                            </a></div>
                            <div class="y_icons"><a>
                                <div class="icon tc dtc vm"><img src='/Public/Home/default/images/a2.png'></div>
                                <p>顶级的服务水平</p>
                            </a></div>
                            <div class="y_icons"><a>
                                <div class="icon tc dtc vm"><img src='/Public/Home/default/images/a3.png'></div>
                                <p>完善的材料供应链</p>
                            </a></div>
                            <div class="y_icons"><a>
                                <div class="icon tc dtc vm"><img src='/Public/Home/default/images/a4.png'></div>
                                <p>多风格的设计方案</p>
                            </a></div>
                        </li>
                        <li class="swiper-slide">
                            <div class="y_icons"><a>
                                <div class="icon tc dtc vm"><img src='/Public/Home/default/images/a5.png'></div>
                                <p>性价比最高的报价方案</p>
                            </a></div>
                            <div class="y_icons"><a>
                                <div class="icon tc dtc vm"><img src='/Public/Home/default/images/a6.png'></div>
                                <p>优质环保的装修材料</p>
                            </a></div>
                            <div class="y_icons"><a>
                                <div class="icon tc dtc vm"><img src='/Public/Home/default/images/a7.png'></div>
                                <p>完善的施工团队</p>
                            </a></div>
                            <div class="y_icons"><a>
                                <div class="icon tc dtc vm"><img src='/Public/Home/default/images/a8.png'></div>
                                <p>一条龙服务</p>
                            </a></div>
                        </li>
                    </ul>
                    <!-- Add Pagination -->
                    <div class="swiper-dote">
                        <ul>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="chiz2"></div>
</div>
<div class="Map">
    <div class="container">
        <div class="row">
            <div class="map col-md-12 col-sm-12 col-xs-12">
                <div style="width:100%;height:600px;border:#ccc solid 1px;font-size:12px" id="map"></div>
            </div>
            <script type="text/javascript">
                $(document).ready(function () {
                    //创建和初始化地图函数:
                    function initMap() {
                        createMap();//创建地图
                        setMapEvent();//设置地图事件
                        addMapControl();//向地图添加控件
                        addMapOverlay();//向地图添加覆盖物
                    }

                    function createMap() {
                        map = new BMap.Map("map");
                        map.centerAndZoom(new BMap.Point(122.129632, 37.430076), 15);
                    }

                    function setMapEvent() {
                        map.enableScrollWheelZoom();
                        map.enableKeyboard();
                        map.enableDragging();
                        map.enableDoubleClickZoom()
                    }

                    function addClickHandler(target, window) {
                        target.addEventListener("click", function () {
                            target.openInfoWindow(window);
                        });
                    }

                    function addMapOverlay() {
                    }

                    //向地图添加控件
                    function addMapControl() {
                        var scaleControl = new BMap.ScaleControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT});
                        scaleControl.setUnit(BMAP_UNIT_IMPERIAL);
                        map.addControl(scaleControl);
                        var navControl = new BMap.NavigationControl({
                            anchor: BMAP_ANCHOR_TOP_LEFT,
                            type: BMAP_NAVIGATION_CONTROL_LARGE
                        });
                        map.addControl(navControl);
                        var overviewControl = new BMap.OverviewMapControl({
                            anchor: BMAP_ANCHOR_BOTTOM_RIGHT,
                            isOpen: true
                        });
                        map.addControl(overviewControl);
                    }

                    var map;
                    initMap();
                });
            </script>
        </div>
    </div>
</div>
<div class="container">
    <div class="Contact pr">
        <div class="row">
            <div class="tact_l col-md-6 col-sm-12 col-xs-12">
                <div class="compy">地址:
                    昆明北京路
                    <br>
                    电话:
                    0871-66666
                    <br>
                    手机:
                    0871-66666
                    <br>
                    邮箱:
                </div>
                <div class="shares"><a
                        href="javascript:(function(){window.open('http://v.t.sina.com.cn/share/share.php?title='+encodeURIComponent(document.title)+'&url='+encodeURIComponent(location.href)+'&source=bookmark','_blank','width=450,height=400');})()"
                        title="新浪微博分享"><img src="/Public/Home/default/images/s1.png"></a>
                    <!--    <a href=""><img src="/Public/Home/default/images/s2.png"></a>-->
                    <a href="javascript:void(0);"
                       onclick="window.open('http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url='+encodeURIComponent(document.location.href));return false;"
                       title="分享到QQ空间" target="_blank"><img src="/Public/Home/default/images/s3.png"></a></div>
            </div>
            <div class="tact_r col-md-6 col-sm-12 col-xs-12">
                <h2 class="title wow zoomInLeft">Feedback<span>意见反馈</span></h2>
                <script type="text/javascript">
                    function checkemail() {
                        var emial = $("#email").val();
                        if (emial != "") {
                            var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
                            if (!myreg.test(emial)) {
                                $("#email").val("");
                                alert("请输入正确的邮箱格式");
                                return false;
                            }
                        }
                    }
                </script>
                <form class="search_div" action="/index.php?s=/Guestbook/add.html" enctype="multipart/form-data" method="post">
                    <input type="hidden" name="action" value="post"/>
                    <input type="hidden" name="diyid" value="1"/>
                    <input type="hidden" name="do" value="2"/>
                    <span class="input fl">姓名:
              <input name="username" type="text" placeholder="" required="required">
              </span> <span class="input fr">邮箱:
              <input id="email" name="email" type="text" placeholder="" required="required">
              </span> <span class="input2">内容:
              <input name="content" type="text" placeholder="" required="required">
              </span>
                    <input type="submit" class="btn transition" value="提交" onclick=" return checkemail();">
                </form>
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