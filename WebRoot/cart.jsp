<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车界面</title>
<link href="css/base.css" type="text/css" rel="stylesheet"/>
<link href="css/cart.css" type="text/css" rel="stylesheet">
<style>
.item-content .item-op{
    margin-left: 70px;
    width: 50px;
    height: 50px;
}
</style>
</head>
<body>
<!--商城头部-->
<%@ include file="header.jsp"%> 
<!--商城头部结束-->
<!--导航栏开始-->
<%@ include file="searchBar.jsp"%>
<!--导航栏结束-->
<!--购物车部分开始-->
<div class="cart container">
    <div class="cart-container">
        <div class="shop_box">
            <!--购物车头部-->
            <div class="head_text_box">
                <span id="head_text">
                    	我的购物车
                </span>
            </div>
            <div class="shop_title">
                <div id="st1">商品</div>
                <div id="st2">规格</div>
                <div id="st3">单价</div>
                <div id="st4">数量</div>
                <div id="st5">小计</div>
                <div id="st6">操作</div>
            </div>
            <!--购物车中商品部分开始-->
            <div class="shop">
                <ul class="item-content">
                    <li class="td td-chk">
                        <div class="td-inner">
                            <input class="J_CheckBoxItem" type="checkbox">
                        </div>
                    </li>
                    <li class="td td-item">
                        <div class="item-pic"><a href="#" target="_blank" data-title="瓷器"></a></div>
                        <div class="item-basic-info"><a href="#" class="title-item">${goods.gname}</a></div>
                    </li>
                    <li class="td td-info">
                        <div class="item-props">
                            <p>颜色分类：红色</p>
                            <P>套餐类型：官方标配</P>
                        </div>

                    </li>
                    <li class="td td-price">
                        <div class="item-price" style="width:40px;">
                            <span>￥</span><em>${goods.up}</em>
                        </div>
                    </li>
                    <li class="td td-amount">
                        <div class="item-amount">
                            <a href="#" class="no-minus">-</a>
                            <input type="text" value="1" class="text-amount">
                            <a href="#" class="no-plus">+</a>
                        </div>
                    </li>
                    <li class="td td-sum">
                        <div class="item-sum">
                            <span>￥</span><em>${goods.up}</em>
                        </div>
                    </li>
                    <li class="td td-op">
                        <div class="item-op">
                            <a href="#">收藏</a>
                            <a href="#">删除</a>
                        </div>
                    </li>
                </ul>
            </div>
           
            <div class="shop">
                <ul class="item-content">
                    <li class="td td-chk">
                        <div class="td-inner">
                            <input class="J_CheckBoxItem" type="checkbox">
                        </div>
                    </li>
                    <li class="td td-item">
                        <div class="item-pic"><a href="#" target="_blank" data-title="瓷器"></a></div>
                        <div class="item-basic-info"><a href="#" class="title-item">走出国门的精美瓷器,你值得拥有</a></div>
                    </li>
                    <li class="td td-info">
                        <div class="item-props">
                            <p>颜色分类：红色</p>
                            <P>套餐类型：官方标配</P>
                        </div>

                    </li>
                    <li class="td td-price">
                        <div class="item-price" style="width:40px;">
                            <span>￥</span><em>69.00</em>
                        </div>
                    </li>
                    <li class="td td-amount">
                        <div class="item-amount">
                            <a href="#" class="no-minus">-</a>
                            <input type="text" value="1" class="text-amount">
                            <a href="#" class="no-plus">+</a>
                        </div>
                    </li>
                    <li class="td td-sum">
                        <div class="item-sum">
                            <span>￥</span><em>69.00</em>
                        </div>
                    </li>
                    <li class="td td-op">
                        <div class="item-op">
                            <a href="#">收藏</a>
                            <a href="#">删除</a>
                        </div>
                    </li>
                </ul>
            </div>
            <!--购物车中商品部分结束-->
            <!--购物车底部-->
            <div class="shop_footer">
                &nbsp;
            </div>
        </div>
        <!--结算金额部分-->
        <div class="sum_mon">
            <div class="money">商品总金额：<span id="money">￥00.00 </span></div><br />
            <input type="button" name="" id="addmon" value="订单结算" />
        </div>
    </div>
</div>
<!--购物车部分结束-->
</body>
</html>