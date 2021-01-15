

//输出Flash
function flash(url, w, h) {
    document.write('<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" width="' + w + '" height="' + h + '">');
    document.write('<param name="movie" value="' + url + '">');
    document.write('<param name="quality" value="high"> ');
    document.write('<param name="wmode" value="transparent"> ');
    document.write('<param name="menu" value="false"> ');
    document.write('<embed src="' + url + '" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="' + w + '" height="' + h + '" quality="High" wmode="transparent">');
    document.write('</embed>');
    document.write('</object>');
}

//添加到收藏夹  
function addBookmark(url, title) {
    var sTitle = document.title;
    var sURL = document.location.href;
    try {
        window.external.addFavorite(sURL, sTitle);
    } catch (e) {
        try {
            window.sidebar.addPanel(sTitle, sURL, "");
        } catch (e) {
            alert("加入收藏失败,请手动Ctrl+D添加.");
        }
    }
}

//设为首页  
function setHomepage() {
    if (document.all) {
        document.body.style.behavior = 'url(#default#homepage)';
        document.body.setHomePage(window.location.href);
    } else if (window.sidebar) {
        if (window.netscape) {
            try {
                netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
            } catch (e) {
                alert("该操作被浏览器拒绝，如果想启用该功能，请在地址栏内输入 about:config,然后将项 signed.applets.codebase_principal_support 值该为true");
            }
        }
        var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch);
        prefs.setCharPref('browser.startup.homepage', window.location.href);
    } else {
        alert('您的浏览器不支持自动自动设置首页, 请使用浏览器菜单手动设置!');
    }  
}

function ImgFix(i, MaxW, MaxH) {
    var o = new Image();
    o.src = i.src;
    var w = o.width;
    var h = o.height;
    var t;
    if (w > MaxW) {
        t = MaxW;
    }
    else {
        t = w;
    }
    if ((h * t / w) > MaxH) {
        i.height = MaxH;
        i.width = MaxH / h * w;
    }
    else {
        i.width = t;
        i.height = t / w * h;
    }
}

//移动端跳转
function mobileJump(mobileUrl) {
    var sUserAgent = navigator.userAgent.toLowerCase();
    var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
    var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
    var bIsMidp = sUserAgent.match(/midp/i) == "midp";
    var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
    var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
    var bIsAndroid = sUserAgent.match(/android/i) == "android";
    var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
    var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";

    if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
        window.location.href = mobileUrl;
    }
}


//将jquery序列化后的值转为name:value的形式。
function convertArray(o) {
    var v = {};
    for (var i in o) {
        if (typeof (v[o[i].name]) == 'undefined') v[o[i].name] = o[i].value;
        else v[o[i].name] += "," + o[i].value;
    }
    return v;
}

function getUrlParam(name) {
    var search = document.location.search;
    var pattern = new RegExp("[?&]" + name + "\=([^&]+)", "g");
    var matcher = pattern.exec(search);
    var items = null;

    if (null != matcher) {
        try {
            items = decodeURIComponent(decodeURIComponent(matcher[1]));
        } catch (e) {
            try {
                items = decodeURIComponent(matcher[1]);
            } catch (e) {
                items = matcher[1];
            }
        }
    }
    return items;
}

/*表单AJAX提交封装*/
function AjaxOnSubmit(form_id, btn_id, send_url) {
    $('#' + form_id).validate({
        errorElement: "span",
        success: function (label) {
            //正确时的样式
            label.text(" ").addClass("success");
        },
        submitHandler: function (form) {
            //AJAX提交表单
            $(form).ajaxSubmit({
                beforeSubmit: formRequest,
                success: formResponse,
                error: formError,
                url: send_url,
                type: "post",
                dataType: "json",
                //resetForm: true,
                timeout: 30000
            });
            return false;
        }
    });

    //表单提交前
    function formRequest(formData, jqForm, options) {
        $("#" + btn_id).attr("disabled", "disabled");
        $("#" + btn_id).val("提交中...");
    }

    //表单提交后
    function formResponse(data, textStatus) {
        if (data.msg == 1) {
            alert(data.msgbox);
            //window.location.reload();
            var $returnUrl = $('#returnUrl');
            if ($returnUrl.length > 0 && $returnUrl.val() != "") {
                location.href = $returnUrl.val();
            }
        } else {
            alert(data.msgbox);
            $("#" + btn_id).attr("disabled", "");
            $("#" + btn_id).val("再次提交");
        }
    }

    //表单提交出错
    function formError(XMLHttpRequest, textStatus, errorThrown) {
        alert("状态:" + textStatus + "；出错提示:" + errorThrown);
        $("#" + btn_id).attr("disabled", "");
        $("#" + btn_id).val("再次提交");
    }
}