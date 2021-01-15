<?php
$z[0] = Array("field", "", 369, 388);
$z[0][4] = array();
$z[0][4]['name'] = "title";
$z[1] = Array("global", "", 389, 415);
$z[1][4] = array();
$z[1][4]['name'] = "cfg_webname";
$z[2] = Array("field", "", 456, 485);
$z[2][4] = array();
$z[2][4]['name'] = "keywords";
$z[3] = Array("field", "", 525, 583);
$z[3][4] = array();
$z[3][4]['name'] = "description";
$z[3][4]['function'] = "html2text(@me)";
$z[4] = Array("channel", "\r\n            <li><a href=\"list.php?tid=[field:id/]\">[field:typename/]</a></li>\r\n            ", 1773, 1981);
$z[4][4] = array();
$z[4][4]['type'] = "son";
$z[4][4]['currentstyle'] = "<li><a href='~typelink~' class='active'>~typename~</a></li>";
$z[5] = Array("list", "\r\n          <div class=\"newstitem plr10 wow fadeIn\"><a class=\"newsinfo\" href=\"view.php?aid=[field:id/]\">\r\n            <div class=\"newsdate\">\r\n              <p class=\"md\">[field:pubdate function='strftime(\"%m-%d\",@me)'/]</p>\r\n              <p class=\"year\">[field:pubdate function='strftime(\"%Y\",@me)'/]</p>\r\n            </div>\r\n            <div class=\"newsbody\">\r\n              <p class=\"title ellipsis\">[field:title/]</p>\r\n              <p class=\"description\">[field:description function='cn_substr(@me,150)'/]...</p>\r\n            </div>\r\n            </a></div>\r\n          ", 2055, 2679);
$z[5][4] = array();
$z[5][4]['pagesize'] = "10";
$z[5][4]['titlelen'] = "60";
$z[6] = Array("pagelist", "", 2762, 2811);
$z[6][4] = array();
$z[6][4]['listitem'] = "pre,next";
$z[6][4]['listsize'] = "5";
$z[7] = Array("include", "", 2873, 2910);
$z[7][4] = array();
$z[7][4]['filename'] = "foot_m.htm";
$z[8] = Array("include", "", 2930, 2967);
$z[8][4] = array();
$z[8][4]['filename'] = "head_m.htm";

?>