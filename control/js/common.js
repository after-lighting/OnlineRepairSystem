
/**
 * Simplified Chinese translation for bootstrap-datetimepicker
 * Yuan Cheung <advanimal@gmail.com>
 */

// JScript 文件
function getQueryString(){
     var result = location.search.match(new RegExp("[\?\&][^\?\&]+=[^\?\&]+","g")); 
     if(result == null){
         return"";
     }
     for(var i = 0; i < result.length; i++){
         result[i] = result[i].substring(1);
     }
     return result;
}
//newParam 包含了所有要更新的参数 不存在就添加
function getQueryStringUrl(newParam){
     var result = getQueryString();
     var sb = new StringBuilder();
     var index =0;
     
     for(var i=0;i < newParam.length;i++){
            
            if(i==0){
                sb.append('?')
            }else{
                sb.append('&')
            }
            index++;
            var item = newParam[i];
            sb.append(item.param+"="+item.value);             
        
     }
     
     for(var i = 0; i < result.length; i++){
         var isAdd = true;
         for(var j=0;j < newParam.length;j++){
           if(newParam[j].param==result[i].split("=")[0]){  
                isAdd = false; 
                break;
           }
         }
         if(isAdd){
            if(index==0)sb.append('?');
            else sb.append('&')
            index++;
            sb.append(result[i]);
         }
         
     }
     return sb.tostring();
}
//修改QUERYString 并重新刷新网页
function ReloadQueryString(newParam){
    window.location.href = GetPageName()  
        + getQueryStringUrl(newParam);
} 

function GetPageName()
{
    var arrurl = window.location.pathname.split("/");
     return arrurl[arrurl.length-1];
}

//根据QueryString参数名称获取值
function getQueryStringByName(name){
     var result = location.search.match(new RegExp("[\?\&]" + name+ "=([^\&]+)","i"));
     if(result == null || result.length < 1){
         return"";
     }
     return result[1];
}
//根据QueryString参数索引获取值
function getQueryStringByIndex(index){
     if(index == null){
         return"";
     }
     var queryStringList = getQueryString();
     if (index >= queryStringList.length){
         return"";
     }
     var result = queryStringList[index];
     var startIndex = result.indexOf("=") + 1;
     result = result.substring(startIndex);
     return result;
}

function StringBuilder() {
    this.__strings__ = new Array;
    
     if (typeof StringBuilder._initialized == "undefined") {
        StringBuilder.prototype.append = function (str) {
            this.__strings__.push(str);
        };
        
        StringBuilder.prototype.prvAppend = function (str) {
            this.__strings__.unshift(str);
        };  
          
        StringBuilder.prototype.tostring = function () {
            return this.__strings__.join("");
        };
        StringBuilder._initialized = true;
     }
}
//------------------Format---------------------------
String.prototype.format = function()
 {
     var args = arguments;
     return this.replace(/\{(\d+)\}/g,               
         function(m,i){
             return args[i];
         });
 }
 String.format = function() {
     if( arguments.length == 0 )
         return null;
 
    var str = arguments[0];
     for(var i=1;i<arguments.length;i++) {
         var re = new RegExp('\\{' + (i-1) + '\\}','gm');
         str = str.replace(re, arguments[i]);
    }
    return str;
}

function load(str){
                var mask = $("#window_mask_div");
                var elapsed = $("#window_mask_elapsed");
                if(mask.size()==0){
                      mask = $("<div id='window_mask_div'></div>").css({
				            'display'	: 'none',
				            'position'	: 'absolute',
				            'clear'		: 'both',
				            'overflow'	: 'hidden',
				            'z-index'	: 10000,
				            'top'		: 0,
				            'left'		: 0,
				            'width'		: $(document).width(),
				            'height'	: $(document).height(),
                            'opacity'			: '0.100',
                            'background-color'	: '#fff',
                            'display'			: 'block'
			          });
			          $(window).resize(function(){
                          $("#window_mask_div").css({
                                'width'		: $(document).width(),
                                'height'	: $(document).height()
                          });
                      });
			          $("body").append(mask);
			     }else{
			         mask.css({
				        'width'	: $(document).width(),
				        'height': $(document).height()
			         });
			     }
			     if(elapsed.size()==0){
                    elapsed = $("<div id='window_mask_elapsed'></div>").css({
                        'position' : 'absolute',
                        'z-index' : 10001,
                       	'top' : ($(window).height()/3)-(elapsed.height()/3)+$(document).scrollTop(),
		                'left' :($(window).width() /2)-(elapsed.width()/2)+$(document).scrollLeft(),
		                'display' : 'block'
                    });
                    elapsed.html("<span class='window_loading' id='window_mask_elapsed_text' ></span>");
                    $("body").append(elapsed);
			     }else{
		            elapsed.css({
                       	'top' : ($(window).height()/3)-(elapsed.height()/3)+$(document).scrollTop(),
		                'left' :($(window).width()/2)-(elapsed.width()/2)+$(document).scrollLeft(),
		                'display' : 'block'
                    });
			     } 
			     $("#window_mask_elapsed_text").text(str);
                mask.show();
                elapsed.show();
}
function unload(){
            $("#window_mask_div").hide();
            $("#window_mask_elapsed").hide();
}

// JScript 文件
//打开窗口的集合
var openerList  = new Array();
function ShowDialog(title, url, width, height, top, left, modal, ID) {
    var diag = new Dialog();

    if (typeof (ID) != "undefined") {

        diag.ID = ID;
    }
    diag.Modal = modal;
    if (top != 0) {
        diag.Top = top;
    }
    if (left != 0) {
        diag.Left = left;
    }
    diag.title = title;
    diag.Height = height;
    diag.Width = width;
    diag.URL = url;
    diag.show();

}
//-------------JSON---------------------
(function($){$.toJSON=function(o)
{if(typeof(JSON)=='object'&&JSON.stringify)
return JSON.stringify(o);var type=typeof(o);if(o===null)
return"null";if(type=="undefined")
return undefined;if(type=="number"||type=="boolean")
return o+"";if(type=="string")
return $.quoteString(o);if(type=='object')
{if(typeof o.toJSON=="function")
return $.toJSON(o.toJSON());if(o.constructor===Date)
{var month=o.getUTCMonth()+1;if(month<10)month='0'+month;var day=o.getUTCDate();if(day<10)day='0'+day;var year=o.getUTCFullYear();var hours=o.getUTCHours();if(hours<10)hours='0'+hours;var minutes=o.getUTCMinutes();if(minutes<10)minutes='0'+minutes;var seconds=o.getUTCSeconds();if(seconds<10)seconds='0'+seconds;var milli=o.getUTCMilliseconds();if(milli<100)milli='0'+milli;if(milli<10)milli='0'+milli;return'"'+year+'-'+month+'-'+day+'T'+
hours+':'+minutes+':'+seconds+'.'+milli+'Z"';}
if(o.constructor===Array)
{var ret=[];for(var i=0;i<o.length;i++)
ret.push($.toJSON(o[i])||"null");return"["+ret.join(",")+"]";}
var pairs=[];for(var k in o){var name;var type=typeof k;if(type=="number")
name='"'+k+'"';else if(type=="string")
name=$.quoteString(k);else
continue;if(typeof o[k]=="function")
continue;var val=$.toJSON(o[k]);pairs.push(name+":"+val);}
return"{"+pairs.join(", ")+"}";}};$.evalJSON=function(src)
{if(typeof(JSON)=='object'&&JSON.parse)
return JSON.parse(src);return eval("("+src+")");};$.secureEvalJSON=function(src)
{if(typeof(JSON)=='object'&&JSON.parse)
return JSON.parse(src);var filtered=src;filtered=filtered.replace(/\\["\\\/bfnrtu]/g,'@');filtered=filtered.replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,']');filtered=filtered.replace(/(?:^|:|,)(?:\s*\[)+/g,'');if(/^[\],:{}\s]*$/.test(filtered))
return eval("("+src+")");else
throw new SyntaxError("Error parsing JSON, source is not valid.");};$.quoteString=function(string)
{if(string.match(_escapeable))
{return'"'+string.replace(_escapeable,function(a)
{var c=_meta[a];if(typeof c==='string')return c;c=a.charCodeAt();return'\\u00'+Math.floor(c/16).toString(16)+(c%16).toString(16);})+'"';}
return'"'+string+'"';};var _escapeable=/["\\\x00-\x1f\x7f-\x9f]/g;var _meta={'\b':'\\b','\t':'\\t','\n':'\\n','\f':'\\f','\r':'\\r','"':'\\"','\\':'\\\\'};})(jQuery);


//----------------------cookie--------------------------
/*!
 * jQuery Cookie Plugin v1.4.0
 * https://github.com/carhartl/jquery-cookie
 *
 * Copyright 2013 Klaus Hartl
 * Released under the MIT license
 */
(function (factory) {
	if (typeof define === 'function' && define.amd) {
		// AMD
		define(['jquery'], factory);
	} else if (typeof exports === 'object') {
		// CommonJS
		factory(require('jquery'));
	} else {
		// Browser globals
		factory(jQuery);
	}
}(function ($) {

	var pluses = /\+/g;

	function encode(s) {
		return config.raw ? s : encodeURIComponent(s);
	}

	function decode(s) {
		return config.raw ? s : decodeURIComponent(s);
	}

	function stringifyCookieValue(value) {
		return encode(config.json ? JSON.stringify(value) : String(value));
	}

	function parseCookieValue(s) {
		if (s.indexOf('"') === 0) {
			// This is a quoted cookie as according to RFC2068, unescape...
			s = s.slice(1, -1).replace(/\\"/g, '"').replace(/\\\\/g, '\\');
		}

		try {
			// Replace server-side written pluses with spaces.
			// If we can't decode the cookie, ignore it, it's unusable.
			// If we can't parse the cookie, ignore it, it's unusable.
			s = decodeURIComponent(s.replace(pluses, ' '));
			return config.json ? JSON.parse(s) : s;
		} catch(e) {}
	}

	function read(s, converter) {
		var value = config.raw ? s : parseCookieValue(s);
		return $.isFunction(converter) ? converter(value) : value;
	}

	var config = $.cookie = function (key, value, options) {

		// Write

		if (value !== undefined && !$.isFunction(value)) {
			options = $.extend({}, config.defaults, options);

			if (typeof options.expires === 'number') {
				var days = options.expires, t = options.expires = new Date();
				t.setTime(+t + days * 864e+5);
			}

			return (document.cookie = [
				encode(key), '=', stringifyCookieValue(value),
				options.expires ? '; expires=' + options.expires.toUTCString() : '', // use expires attribute, max-age is not supported by IE
				options.path    ? '; path=' + options.path : '',
				options.domain  ? '; domain=' + options.domain : '',
				options.secure  ? '; secure' : ''
			].join(''));
		}
		// Read
		var result = key ? undefined : {};

		// To prevent the for loop in the first place assign an empty array
		// in case there are no cookies at all. Also prevents odd result when
		// calling $.cookie().
		var cookies = document.cookie ? document.cookie.split('; ') : [];

		for (var i = 0, l = cookies.length; i < l; i++) {
			var parts = cookies[i].split('=');
			var name = decode(parts.shift());
			var cookie = parts.join('=');

			if (key && key === name) {
				// If second argument (value) is a function it's a converter...
				result = read(cookie, value);
				break;
			}

			// Prevent storing a cookie that we couldn't decode.
			if (!key && (cookie = read(cookie)) !== undefined) {
				result[name] = cookie;
			}
		}

		return result;
	};
	config.defaults = {};
	$.removeCookie = function (key, options) {
		if ($.cookie(key) === undefined) {
			return false;
		}

		// Must not alter options, thus extending a fresh object...
		$.cookie(key, '', $.extend({}, options, { expires: -1 }));
		return !$.cookie(key);
	};

}));





//------------------验证填空项选项----------------------
function validBlankFillingSelectOption(optionString, datatype) {
    var options = optionString.split("、");
    datatype = parseInt(datatype);
    for (var oindex = 0; oindex < options.length; oindex++) {
        var op = options[oindex];
        if ($.trim(op) == "") {
            continue;
        }
        switch (datatype) {
            case 1:
                if (!IsInteger(op)) {
                    alert(String.format("错误：选项({0})不是有效的整数！", op));
                    return false;
                }
                break;
            case 2:
                if (!IsDouble(op)) {
                    alert(String.format("错误：选项({0})的不是有效浮点数！", op));
                    return false;
                }
                var zx = op.split('.');
                if (zx[0].length > 9 || (zx.length == 2 && zx[1].length > 6)) {
                    alert(String.format("错误：选项({0})和当前数据类型不匹配（小数整数部分最大9位小数部分最大6位）！", op));
                    return false;
                }
                break;
            case 3:

                if (!IsDateTime(op)) {
                    alert(String.format("错误：选项({0})不是有效的日期时间格式！", op));
                    return false;
                }
                break;
            case 4:
                if (!IsDate(op)) {
                    alert(String.format("错误：选项({0})不是有效的日期格式！", op));
                    return false;
                }
                break;
            case 5:
                if (op.length > 255) {
                    alert(String.format("错误：选项(第{0}行)字符数超出255个！", i));
                    return false;
                }
                break;
        }
    }
    return true;
}

function IsInteger(str) {
    if (str.length != 0) {
        reg = /^[-+]?\d*$/;
        return reg.test(str);
    }
    return false;
}
//判断输入的字符是否为双精度    
function IsDouble(str) {
    if (str.length != 0) {
        reg = /^[-\+]?\d+(\.\d+)?$/;
        return reg.test(str);
    }
    return false;
}

//判断日期类型是否为YYYY-MM-DD格式的类型    
function IsDate(str) {
    if (str.length != 0) {
        var reg = /^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2})$/;
        return str.match(reg);
    }
    return false;
}

//判断日期类型是否为YYYY-MM-DD hh:mm:ss格式的类型
function IsDateTime(str) {
    if (str.length != 0) {
        var reg = /^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2}) (\d{1,2}):(\d{1,2}):(\d{1,2})$/;
        return str.match(reg);
    }
    return false;
}