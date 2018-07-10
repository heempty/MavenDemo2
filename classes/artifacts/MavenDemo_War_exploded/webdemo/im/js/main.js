/**
 * 主要业务逻辑相关
 */
var  acct = "1115348101";
var psw = "8023530";
setCookie('uid', acct.toLocaleLowerCase());
setCookie('sdktoken', MD5(psw));
var userUID = readCookie("uid")
/**
 * 实例化
 * @see module/base/js
 */
var yunXin = new YX(userUID)


