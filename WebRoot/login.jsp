<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<title>小米帐号-登录</title>
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/login.css">
<script type="text/javascript">
function validateform(){
	return true;
}
</script>
</head>
<body>
    <!--登录头部开始-->
    <div class="login-hd container-lg">
        <div class="h-logo">
            <a href="index.jsp">小米网</a>
        </div>
    </div>
    <!--登录主体部分开始-->
    <div class="login-banner_panel">
        <!--底部背景-->
        <div class="container-lg layout_panel">
            <div class="main-box form-panel">
                <div class="nav_tabs_panel">
                    <a class="navtab-link now" href="#">帐号登录</a>
                    <span class="line"></span>
                    <a class="navtab-link" href="#">扫码登录</a>
                </div>
                <!--输入框-->
                <div class="tabs-con">
                    <form onsubmit="return validateform();" action="register?key=login" method="post" id="login-main-form">
                        <div class="loginbox">
                            <!--账号密码-->
                            <div class="lgn_input">
                                <label id="region-code" class="lablebox">
                                    <input class="item_account" type="text" name="userId" id="username" placeholder="邮箱/手机号码/小米ID">
                                </label>
                                <label>
                                    <input class="item_account" type="password" name="userPwd" id="pwd" placeholder="密码">
                                </label>
                            </div>
                            <!--登录按钮-->
                            <div class="btn_bg">
                                <input class="btnadpt" id="login-button" type="submit" value="登录">
                            </div>
                            <div class="other_panel">
                                <!--手机短信登录注册-->
                                <span id="custom_display_256" class="sms_link">
                                    <a href="#" class="btnadpt btn_gray login_type_link">手机短信登录/注册</a>
                                </span>
                                <div class="n_links_area" id="custom_display_64">
                                    <a class="outer-link" href="register.jsp">立即注册</a>
                                    <span>|</span>
                                    <a class="outer-link" href="#">忘记密码 ?</a>
                                </div>
                                <!--其他登录方式-->
                                <div class="other_login_type sns-login-container">
                                    <fieldset class="other_type_tit">
                                        <legend class="other_type_txt">其他方式登录</legend>
                                    </fieldset>
                                    <div id="sns-login-links" class="oth_type_links">
                                        <a href="#" class="icon_type btn_qq sns-login-link" title="QQ登录">
                                            <i class="btn_sns_icontype icon_default_qq"></i>
                                        </a>
                                        <a href="#" class="icon_type btn_weibo sns-login-link" title="微博登录">
                                            <i class="btn_sns_icontype icon_default_weibo"></i>
                                        </a>
                                        <a href="#" class="icon_type btn_alipay sns-login-link" title="支付宝登录">
                                            <i class="btn_sns_icontype icon_default_alipay"></i>
                                        </a>
                                        <a href="#" class="icon_type btn_weixin sns-login-link" title="微信登录">
                                            <i class="btn_sns_icontype icon_default_weixin"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <a href="#" id="J_link">小米网</a>
    </div>
    <!--登录主体部分结束-->
    <!--底部开始-->
    <%@ include file="footer.jsp"%>
    
</body>
</html>