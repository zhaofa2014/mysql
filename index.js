function MM_popupMsg(msg) { //v1.0
	alert(msg);
}

function MM_goToURL() { //v3.0
	var i, args = MM_goToURL.arguments;
	document.MM_returnValue = false;
	for (i = 0; i < (args.length - 1); i += 2) eval(args[i] + ".location='" + args[i + 1] + "'");
}


var obj = {
	name: '我是对象的属性值，name是属性名，',
	fn: function() {
		console.log('我是对象的方法6666666666666');
	}
}
