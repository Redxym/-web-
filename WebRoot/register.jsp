<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
function validateform(){
	return true;
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>小米帐号-注册</title>
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/register.css">
</head>
<body>  
    <!--注册界面主体部分-->
    <div class="wrapper">
        <div class="wrap">
            <div class="layout">
                <div class="n-frame device-frame reg_frame" id="main_container">
                    <div class="external_logo_area">
                        <!--logo部分-->
                        <a class="milogo" href="index.jsp"></a>
                    </div>
                    <div class="title-item t_c">
                        <h4 class="title_big30">注册小米帐号</h4>
                    </div>
                    <div>
                    <form onsubmit="return validateform();" action="register?key=add" method="post" id="regForm">
                        <div class="regbox">
                            <!--注册表单部分-->
                            <div class="phone_step1">
                                <h4 class="tit_normal"> 用户名</h4>
                                <label id="region-code" class="lablebox">
                                    <input class="item_account" type="text" name="id" id="username" placeholder="请输入用户名">
                                </label>
                                <h4 class="tit_normal"> 密码</h4>
                                <label id="region-code1" class="lablebox">
                                    <input class="item_account" type="password" name="pwd" id="psw" placeholder="请输入6-12位密码">
                                </label>
                                <h4 class="tit_normal"> 验证密码</h4>
                                <label id="region-code2" class="lablebox">
                                    <input class="item_account" type="password" name="passwordc" id="pswc" placeholder="请再次输入密码">
                                </label>
                                <div class="btn_rg">
                                    <input class="btnadpt" id="register-button" type="submit" value="立即注册">
                                </div>
                            </div>
                        </div>
                        <div class="privacy_box">
                            <div class="msg">
                                <label class="n_checked select-privacy">
                                    <input  type="radio" name="agree" class="icon_select">
                                   	 注册帐号即表示您同意并遵守小米
                                    <a href="cn.html" class="inspec_link agreement_link" title="用户协议" target="_blank">用户协议</a>和
                                    <a href="#" class="inspec_link privacy_link" title="隐私政策">隐私政策</a>
                                </label>
                            </div>
                        </div>
                    </form>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
    <!--登录底部开始-->
    <div id="custom_display_4" class="n-footer container-lg">
        <div class="nf-link-area">
            <ul>
                <li><a href="#" class="current">简体</a><span>|</span></li>
                <li><a href="#">繁体</a><span>|</span></li>
                <li><a href="#">English</a><span>|</span></li>
                <li><a href="#">常见问题</a><span>|</span></li>
                <li><a href="#">隐私政策</a></li>
            </ul>
        </div>
        <p class="nf-intro">
            小米公司版权所有-京ICP备10046444-
            <a class="begin-record-link" href="#">
                <span><img src="images/ghs.png"></span>京公网安备11010802020134号
            </a>
            -京ICP证110507号
        </p>
    </div>
    <script src="js/jquery-3.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">

        $('.icon_select').click(function () {
            let $radio = $(this);
            let icon_selected = 0; //0不选中，1选中
            if($radio.data('waschecked')===true){
                $radio.prop('checked',false);
                $radio.data('waschecked',false);
                icon_selected = 0;
            }else{
                $radio.prop('checked',true);
                $radio.data('waschecked',true);
                icon_selected = 1;
            }
        });
    </script>
</body>
</html>