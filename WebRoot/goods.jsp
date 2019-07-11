<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>商品详情</title>
    <link href="css/base.css" type="text/css" rel="stylesheet"/>
    <script>
    	var uid = document.getElementById("userID")[0];
    </script>
    <style>
    	em{
    		font-style:normal;
    	}
        .goods_infro{
        	width: 1226px;
        	height: 450px;
        	margin: 0 auto;
            border: 1px solid #ccc;
            
        }
        /*商品图片部分*/
        .goods_imge{
            width: 400px;
            height: 400px;
            float: left;
            margin: 20px;
            background-color: #00aaee;
        }
        .goods_imge img{
            display: block;
            width: 400px;
            height: 400px;
            vertical-align: middle;
        }
        /*商品详情部分*/
        .goods_details{
            width: 480px;
            height: 400px;
            margin: 20px;
            background-color: #fff;
            float: left;
        }
        .goods_details .title{
            font-weight: 400;
            font-size: 18px;
            margin-bottom: 10px;
        }
        /*商品价格部分*/
        .tb-meta{
            background-color: #FFF2E8;
            height: 70px;
            line-height: 70px;
        }
        .tb-meta span{
            line-height: 70px;

        }
        .tb-meta strong{
            position: relative;
            color: #f40;
            font-weight: 700;
            font-size:24px;
        }
        .tb-rmb{
            font-weight: 400;
        }
        /*配送地区部分*/
        .J_logistic{
            height: 40px;
            font-size: 14px;
        }
        .tb-property-type{

            float: left;
            width: 80px;
            font-size: 14px;
            color: #6c6c6c;
            line-height: 40px;
            padding-left: 10px;
            display: block;
            font-weight: 400;

        }
        .w1-areainfo{
            height: 24px;
            line-height: 40px;
        }
        .w1-areainfo s{
            display: inline-block;
            position: relative;

        }
        .w1-addressinfo{
            cursor: pointer;
            margin: 0 5px;
        }
        .goods-style{
            height: 40px;
            line-height: 40px;
            font-size: 14px;
            border-top:1px dotted #ccc;
        }
        .goods-style span{
            padding-left: 10px;
        }
        .goods-style li{
            float: left;
            margin: 0 2px;

        }
        a{
            color: #000;
        }
        a:hover{
            color: #ff6700;
        }
        .tb-stock a{
            display: inline-block;
            width: 26px;
            height: 26px;
            border: 1px solid #ccc;
            line-height: 22px;
            font-size: 24px;
            padding: 0;
            text-align: center;
            vertical-align: middle;
            background-color: #ededed;
        }
        .tb-stock input {
            -webkit-writing-mode: horizontal-tb !important;
            text-rendering: auto;
            color: initial;
            display: inline-block;
            height: 26px;
            width: 50px;
            text-align: start;
            -webkit-appearance: textfield;
            background-color: white;
            -webkit-rtl-ordering: logical;
            cursor: text;
            border-width: 2px;
            border-style: inset;
            border-color: initial;
            border-image: initial;
            outline: none;
        }
        .goods_number .tb-property-type{
            position: absolute;
            float: left;
        }
        /*购买加购车部分*/
        .tb-action{
            height: 60px;
            margin-top: 20px;

        }
        .tb-btn-buy,.tb-btn-add{
            float: left;
        }
        .tb-btn-buy a{
            display: inline-block;
            cursor: pointer;
            width: 134px;
            height: 38px;
            margin: 0 10px;
            text-align: center;
            font-size: 16px;
            line-height: 38px;
            color: #ff6700;
            border-color: #f0cab6;
            background-color: #ffe4d0;
        }
        .tb-btn-add a{

            display: inline-block;
            cursor: pointer;
            width: 180px;
            height: 38px;
            line-height: 38px;
            text-align: center;
            font-size: 16px;
            color: #fff;
            background-color: #ff6700;
        }
        /*承诺支付部分*/
        .tb-extra{
            height: 80px;
            padding-left: 10px;
            font-size: 14px;
            color: #6c6c6c;

        }
        .tb-extra dl{
            display: block;
            height: 37px;
        }
        .tb-extra dl dt{
            float: left;
            width: 60px;
            height: 22px;
            line-height: 22px;

        }
        .tb-extra dl dd a{
            display: inline-block;
            height: 22px;
            line-height: 22px;
            margin-right: 15px;
            color: #6c6c6c;
        }
        .tb-extra dl dd a img{
            display: block;
            float: left;
            margin: 2px 7px 0 0;
            height: 16px;
            line-height: 12px;
            vertical-align: middle;
        }

        /*商家详情部分*/
        .tb-sidebar{
            width: 220px;
            height: 400px;
            margin: 20px;
            float: right;
            border: 1px solid #ffe2a3;
        }
        .tb-shop-info-bg{
            height: 50px;
            display: block;
        }
        .tb-sidebar img{
            width: 218px;
        }
        /*店铺年龄*/
        .tb-shop-age{
            height: 30px;
            line-height: 30px;
            text-align: center;
            color: #000;
            font-size: 16px;
            background-color: #fffdf8;
            border-bottom: 1px solid #ccc;
        }
        /*店铺详细信息*/
        .tb-shop-info-wrap{
            margin-top: 5px;
            height: 240px;
            background-color: #fff;
        }
        .tb-shop-info-wrap .store-name{
            padding-left: 15px;
            text-align: center;
            font-weight: 700;
        }
        .tb-shop-info-wrap dt{
            color:#6c6c6c;
            float:left;
            font-weight:400;
            margin-right:10px;
            padding-left: 15px;
            padding-top: 5px;
            width:50px;
        }
        .tb-shop-info-wrap dd{
            color:#6c6c6c;
            margin: 2px 0;
            padding: 5px 0;
        }
        .tb-shop-info-wrap dd a{
            color: #6c6c6c;
        }
        .tb-shop-info-wrap dd.icomoon{
            padding-top: 8px;
            color: #ff6700;
        }
        /*店铺评分部分*/
        .tb-shop-info-bd{
            margin: 0 0 16px;
            width: 200px;
            padding-top: 13px;
            border-top: 1px dotted #e1e1e1;
            overflow: hidden;
        }
        .tb-shop-rate dl{
            float: left;
            border-right: 1px solid #ebebeb;
        }
        .tb-shop-rate dt{
            line-height: 12px;
            font-size: 12px;
            padding-bottom: 4px;
        }
        .tb-shop-rate dd{
            color: #ff6700;
            display: block;
            line-height: 14px;
            font-size: 12px;
            padding-top: 5px;
            padding-left: 16px;
        }
        /*进入店铺部分*/
        .tb-shop-info-ft{
            height: 40px;
            margin-left: 15px;
        }
        .tb-shop-info-ft a{
            display: block;
            float: left;
            margin-right: 8px;
            width: 85px;
            height: 32px;
            font-size: 14px;
            line-height: 28px;
            text-align: center;
            border-radius: 2px;
            border: 1px solid #ededed;
            background:#fafafa;
        }
    </style>
</head>
<body>
<!--商城头部开始-->
<%@ include file="header.jsp"%> 
<!--商城头部结束-->
<!--导航栏开始--> 
<%@ include file="searchBar.jsp"%>
<!--导航栏结束-->
<div class="goods_infro">
    <!--商品图片-->
    <div class="goods_imge">
        <img src="images/goods1.jpg">
    </div>
    <!--商品信息-->
    <div class="goods_details">
        <h3 class="title">${goods.gname}</h3>
        <!--商品价格部分-->
        <div class="tb-meta">
            <span class="tb-property-type">价格</span>
            <strong>
                <em class="tb-rmb">￥</em>
                <em class="tb-rmb-num">${goods.up}</em>
            </strong>
        </div>
        <div class="J_logistic">
            <span class="tb-property-type">配送</span>
            <div class="tb-logistic-info">
                <div class="w1-areainfo">
                    <span id="J-From">广东广州</span>至
                    <span id="J-To">
                        <span class="w1-addressinfo" id="J_WlAddressInfo" title="湖南湘潭">
                           	 湖南湘潭
                            <i class="icomoon"></i>
                        </span>
                    </span>
                    <span class="wl-servicemarkinfo" id="J_ServiceMarkInfo">48小时内发货</span>
                </div>
            </div>
        </div>
        <!--商品款式部分-->
        <div class="goods-style">
           <span class="tb-property-type">颜色分类</span>
            <ul>
                <li><a href="#">红色</a></li>
                <li><a href="#">绿色</a></li>
                <li><a href="#">白色</a></li>
                <li><a href="#">黑色</a></li>
            </ul>
        </div>
        <!--库存部分-->
        <div class="goods-number goods-style">
            <span class="tb-property-type">数量</span>
            <span class="tb-stock">
                <a href="#" title="减1" class="tb-reduce">-</a>
                <input id="J_IptAmount" type="text" class="tb-text" value="1" maxlength="8" title="请输入购买量">
                <a href="#" title="加1" class="tb-reduce">+</a>件
                <em>(库存<span id="J_SpanStoc" class="tb-count">1000</span>
                件)
                </em>
            </span>
        </div>
        <!--购买加购物车部分-->
        <div id="J_juValid" class="tb-action">
        	
            <div class="tb-btn-buy">
                <a href="orders.jsp" title="点击此按钮，到下一步确认购买信息" class="J_LinkBuy">立即购买</a>
            </div>
            <div class="tb-btn-add">
                <a href="cart?key=add&gid=${goods.gid}&uid=uid" title="加入购物车" class="J_LinkAdd" >
                    <i class="icomoon"></i>&nbsp&nbsp&nbsp加入购物车</a>
            </div>
        </div>
        <!--服务承诺部分-->
        <div class="tb-extra" id="J_tbExtra">
            <dl>
                <dt>承诺</dt>
                <dd>
                    <a class="J_Cont" title="15天退货，退货邮费卖家承担" target="_blank"><img src="images/7tuihuo.png">15天退货</a>
                    <a title="卖家为您购买的商品投保退货运费险(保单生效以确认订单展示的运费险为准)"><img src="images/yunfeixian.png">运费险</a>
                </dd>
            </dl>
            <dl>
                <dt>支付</dt>
                <dd>
                    <a href="#" target="_blank"><img src="images/alipay.png">蚂蚁花呗</a>
                    <a href="#" target="_blank"><img src="images/credit-card.png">信用卡支付</a>
                    <a href="#" target="_blank"><img src="images/jifenbao.png">集分宝</a>
                </dd>
            </dl>
        </div>
        <!--支付方式部分-->
    </div>
    <!--店铺信息-->
    <div class="tb-sidebar">
        <a class="J_ShopInfoHeader tb-shop-info-bg">
            <img src="images/huangguanmaijai.png">
        </a>
        <div class="tb-shop-age">
            <span class="tb-shop-age-val">5</span>
            <span class="tb-shop-age-des">年老店</span>
        </div>
        <div class="tb-shop-info-wrap">
            <span class="store-name">JIANAN小梅的店铺</span>
            <dl>
                <dt>信誉</dt>
                <dd class="icomoon"></dd>
                <dt>掌柜</dt>
                <dd>qq2679521390</dd>
                <dt>联系</dt>
                <dd><a href="#">和我联系</a></dd>
            </dl>
            <!--店铺评分部分-->
            <div class="tb-shop-info-bd">
                <div class="tb-shop-rate">
                    <dl>
                        <dt>描述</dt>
                        <dd class="tb-rate-height">4.9</dd>
                    </dl>
                    <dl>
                        <dt>服务</dt>
                        <dd class="tb-rate-height">4.9</dd>
                    </dl>
                    <dl>
                        <dt>物流</dt>
                        <dd class="tb-rate-height">4.9</dd>
                    </dl>
                </div>
            </div>
            <!--进入店铺部分-->
            <div class="tb-shop-info-ft">
                <a href="#">进入店铺</a>
                <a href="#">收藏店铺</a>
            </div>
        </div>

    </div>
</div>
<!--商城底部-->
    <%@ include file="footer.jsp"%>
</body>
</html>