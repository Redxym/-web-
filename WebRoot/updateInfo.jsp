<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改个人信息</title>
<link rel="stylesheet" href="css/base.css">
	<style rel="stylesheet">
		/*修改个人信息主界面*/
        .updateinfo{
            width: 845px;
            margin: 10px auto;
            height: 500px;
            background-color: #f5f5f5;
        }

        /*logo部分*/
        .external_logo_area{
            padding-bottom: 20px;
        }
        .milogo{
            width: 49px;
            height: 48px;
            margin: 0 auto;
            display: block;
            background-image: url("images/milogo.png");
        }
        .t_c{
            text-align: center;
        }
        .title_big30 {
            font-size: 30px;
            font-weight: 400;
            color: #333;
            line-height: 1.5;
        }
        /*修改框部分*/
        .updatebox{
            width: 330px;
            padding: 20px 0;
            margin: 0 auto;
            line-height: 20px;
        }
        .updatebox .tit_normal{
            padding-bottom: 3px;
            color: #333;
            font-weight: 400;
            font-size: 14px;
        }
        .updatebox input{
            width: 100%;
            height: 30px;
            border: 1px solid #e0e0e0;
            margin: 0 0 15px;
            padding-left: 12px;
            font-size: 14px;
        }
        /*修改按钮*/
        .btn_update{
            height: 60px;
            margin: 24px auto 0;
        }
        .btn_update .btnadpt{
            background-color: #ff6700;
            width: 100%;
            height: 50px;
            line-height: 50px;
            text-align: center;
            font-size: 14px;
            color: #fff;
            cursor: pointer;
        }
    </style>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript">
function validateform(){
	return true;
}

</script>
</head>
<body> 
 	<!--商城头部-->
    <%@ include file="header.jsp"%> 
    <!--商城头部结束-->     
   	<!-- 修改个人信息主界面开始 -->
    <div class="updateinfo">
        <!--logo部分-->
        <div class="external_logo_area">
            <a class="milogo" href="index.jsp"></a>
        </div>
        <div class="title-item t_c">
            <h4 class="title_big30">修改个人信息</h4>
        </div>
        <!--修改信息表单部分-->
        <div class="updatebox">
        	<form onsubmit="return validateform();" action="register?key=update" method="post" id="updateForm">
            <div class="update_step1">
                <h4 class="tit_normal">用户ID</h4>
                <label id="update-id" class="lablebox">
                    <input class="item_account" type="text" name="userid" id="userid" value=<%= session.getAttribute("user")%> readonly="readonly">
                </label>
                <h4 class="tit_normal">用户名称</h4>
                <label id="update-code" class="lablebox">
                    <input class="item_account" type="text" name="username" id="updatename" placeholder="请输入用户名">
                </label>
                <h4 class="tit_normal">新设密码</h4>
                <label id="update-code1" class="lablebox">
                    <input class="item_account" type="password" name="newpwd" id="psw" placeholder="请输入修改后的6-12位数字密码">
                </label>
                <h4 class="tit_normal"> 验证密码</h4>
                <label id="update-code2" class="lablebox">
                    <input class="item_account" type="password" name="checkpwd" id="pswc" placeholder="请再次输入密码">
                </label>
                <div class="btn_update">
                    <input class="btnadpt" id="register-button" type="submit" value="立即修改">
                </div>
            </div>
            </form>
        </div>
    </div>
    <!-- 修改个人信息主界面结束 -->
    <!--商城底部-->
    <%@ include file="footer.jsp"%>
</body>
</html>