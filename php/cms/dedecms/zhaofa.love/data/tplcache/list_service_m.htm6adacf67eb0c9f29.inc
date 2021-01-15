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
$z[4] = Array("list", "\r\n            <li class=\"serviceitem wow fadeIn\"><a href=\"view.php?aid=[field:id/]\" target=\"_blank\"><img src=\"[field:litpic/]\" width=\"320\" height=\"120\" /></a>\r\n              <div>\r\n                <p class=\"title ellipsis\">[field:title/]</p>\r\n                <p class=\"description\">[field:description function='cn_substr(@me,150)'/]...</p>\r\n              </div>\r\n            </li>\r\n            <li class=\"line\"></li>\r\n            ", 1573, 2054);
$z[4][4] = array();
$z[4][4]['pagesize'] = "50";
$z[4][4]['titlelen'] = "36";
$z[5] = Array("include", "", 2166, 2203);
$z[5][4] = array();
$z[5][4]['filename'] = "foot_m.htm";
$z[6] = Array("include", "", 2223, 2260);
$z[6][4] = array();
$z[6][4]['filename'] = "head_m.htm";

?>