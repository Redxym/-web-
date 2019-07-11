<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
/*小米顶部开始*/
.site-topbar{
    width: 100%;
    height: 40px;
    background-color: #333;
}
.container{
    width: 1226px;
    height: 40px;
    margin: 0 auto;
}
/*顶部导航栏开始*/
.topbar-nav{
    height: 40px;
    line-height: 40px;
    float: left;
    color: #b0b0b0;
    font-size: 12px;
}
.topbar-nav a{
    color: #b0b0b0;
    line-height: 40px;
    display: inline-block;
}
.topbar-nav a:hover{
    color: #fff;
}
.sep{
    display: inline-block;
    margin: 0 .5em;
    background-color: #424242;
    width: 1px;
    height: 10px;
}
/*顶部购物部分*/
.topbar-cart{
    width:120px;
    height: 40px;
    background-color: #424242;
    float: right;
    text-align: center;
}
.topbar-cart em{
    font-family: "icomoon";
    margin-right: 4px;
}
.cart-mini{
    color: #b0b0b0;
    font-size: 12px;
    line-height: 40px;
}
/*顶部登录注册部分*/
.topbar-info{
    min-width: 140px;
    float: right;
    height: 40px;
    line-height: 40px;
    margin-right: 20px;
}
.topbar-info span{
	color: #ff5600;
    font-size: 12px;
}
.topbar-info a{
    color: #b0b0b0;
    font-size: 12px;

}
.topbar-info a:hover{
    color: #fff;
}
/*小米顶部结束*/
</style>
 <!--商城头部开始-->
    <div class="site-topbar">
        <div class="container">
            <!--商城头部导航栏开始-->
            <div class="topbar-nav">
                <a href="index.jsp">小米商城</a><span class="sep"></span>
                <a href="">MIUI</a><span class="sep"></span>
                <a href="">loT</a><span class="sep"></span>
                <a href="">云服务</a><span class="sep"></span>
                <a href="">金融</a><span class="sep"></span>
                <a href="">有品</a><span class="sep"></span>
                <a href="">小爱开放平台</a><span class="sep"></span>
                <a href="">企业团购</a><span class="sep"></span>
                <a href="">资质证照</a><span class="sep"></span>
                <a href="">协议规则</a><span class="sep"></span>
                <a href="">下载APP</a><span class="sep"></span>
                <a href="updateInfo.jsp" class="personInfo">个人中心</a>
            </div>
            <!--商城头部购物车开始-->
            <div class="topbar-cart">
                <a href="#" class="cart-mini">
                    <i class="icomoon"></i>
                   	 购物车
                    <span class="cart-mimi-num">(0)</span>
                </a>
            </div>
         <!--商城头部登录注册开始-->
            <div class="topbar-info">
				<%if(session.getAttribute("user")== null){ %>
					<span class="fl">你好,请&nbsp;<a href="login.jsp" >登录</a><span class="sep"></span></span></span>
                	<a href="register.jsp">注册</a><span class="sep"></span></span>
				<%}else{ %>
					<a href="index.jsp">欢迎回来!</a><span class="userID" id="userID"><%= session.getAttribute("user")%></span></span></span>
					<a href="register?key=quit">退出登录</a><span class="sep"></span></span>
				<%} %>   
                <a href="#">消息通知</a>
            </div>
        </div>
    </div>
    <!--商城头部结束-->