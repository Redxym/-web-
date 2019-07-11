<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的订单</title>
<link href="css/base.css" type="text/css" rel="stylesheet"/>
<link href="css/orders.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<%@ include file="header.jsp"%> 
<!-- 订单主体页面 -->
<div class="order-form-all order-top">
    <img src="images/logo.png">
    <h3>我的订单</h3>
</div>
<div class="order-form-all">
    <div class="order-form-all-container">
        <div class="order-form-all-bottom">
            <div class="order-form">
                <div class="order-form-top">
                    <span class="order-form-number-text">订单号：</span>
                    <span class="order-form-number">1</span>

                    <div class="order-form-time">
                        <span class="order-form-time-text">订单成立时间：</span>
                        <span class="time">2019/6/25</span>
                    </div>

                    <a href="#" class="order-form-more">详细信息</a>
                </div>

                <a href="#" class="goods">
                    <img class="picture" src="images/homeelec1.jpg">
                    <span class="name">小米9你值得拥有</span>
                    <span class="yen-text">单价：¥</span>
                    <span class="price-one">65.00</span>
                    <span class="number-text">数量：</span>
                    <span class="number">1</span>
                    <span class="yen-text">总价：¥</span>
                    <span class="price-number">300</span>
                </a>

                <div class="total-prices">
                    <span class="total-prices-text">总价：</span>
                    <span class="yen">¥</span>
                    <span class="prices">65.00</span>
                    <input class="button" class="buygoods" value="立即结算">
                </div>
            </div>        
        </div>
    </div>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>