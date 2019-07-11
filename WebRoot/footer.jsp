<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
/*界面底部*/
.n-footer{
    height: 80px;
    margin-top: 40px;
    padding-bottom:60px;
    text-align: center;
}
.nf-link-area li{
    display: inline-block;
}
.nf-link-area a{
    display: inline-block;
    padding: 0 10px;
    font-size: 14px;
    color: #757575;
}
.nf-link-area a:hover,.nf-link-area a.current{
    color: #333;
}
.nf-link-area span{
    display: inline-block;
}
.nf-intro{
    padding: 10px;
}
.nf-intro a{
    color: #757575;
}
</style>
<!--底部开始-->
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