<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
   	<meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>小米商城</title>
    <link href="css/base.css" type="text/css" rel="stylesheet"/>
    <link href="css/index.css" type="text/css" rel="stylesheet"/>
    
</head>
<body>
    <!--商城头部-->
    <%@ include file="header.jsp"%> 
    <!--商城头部结束-->
    <!--导航栏开始-->
    <%@ include file="searchBar.jsp"%>
    <!--导航栏结束-->
    <!--轮播图部分开始-->
    <div class="home-hero-container w">
        <div class="home-hero">
            <!--导航栏与轮播图-->
            <div class="home-hero-slider">
                <!--侧边导航栏部分-->
                <div class="slider-category">
                    <ul>
                        <li class="category-item">
                            <a class="title" href="#">手机 电话卡
                                <span class="icomoon"></span>
                            </a>
                            <div class="children"></div>
                        </li>
                        <li class="category-item"><a class="title" href="">电视 盒子<span class="icomoon"></span></a></li>
                        <li class="category-item"><a class="title" href="">笔记本 平板<span class="icomoon"></span></a></li>
                        <li class="category-item"><a class="title" href="">家电 插线板<span class="icomoon"></span></a></li>
                        <li class="category-item"><a class="title" href="">出行 穿戴<span class="icomoon"></span></a></li>
                        <li class="category-item"><a class="title" href="">智能 路由器<span class="icomoon"></span></a></li>
                        <li class="category-item"><a class="title" href="">电源 配件<span class="icomoon"></span></a></li>
                        <li class="category-item"><a class="title" href="">健康 儿童<span class="icomoon"></span></a></li>
                        <li class="category-item"><a class="title" href="">耳机 音箱<span class="icomoon"></span></a></li>
                        <li class="category-item"><a class="title" href="">生活 箱包<span class="icomoon"></span></a></li>
                    </ul>
                </div>
                <!--轮播图部分-->
                <div class="ui-viewport">
                    <ul>
                        <li><a href="goods.jsp"><img src="images/1.jpg" alt=""></a></li>
                        <li><a href="#"><img src="images/2.jpg" alt=""></a></li>
                        <li><a href="#"><img src="images/3.jpg" alt=""></a></li>
                        <li><a href="#"><img src="images/4.jpg" alt=""></a></li>
                        <li><a href="#"><img src="images/5.jpg" alt=""></a></li>

                    </ul>
                </div>
                <!--轮播图上的点和左右按钮-->
                <div class="ui-controls-direction">
                    <a class="ui-prev icomoon"></a>
                    <a class="ui-next icomoon"></a>
                </div>
                <div class="ui-pager">
                    <div class="ui-pager-item l_click"><a href="#"></a></div>
                    <div class="ui-pager-item"><a href=""></a></div>
                    <div class="ui-pager-item"><a href=""></a></div>
                    <div class="ui-pager-item"><a href=""></a></div>
                    <div class="ui-pager-item"><a href=""></a></div>
                </div>
            </div>
            <!--导航栏下面部分-->
            <div class="home-hero-sub w">
                <!--导航栏下面左侧部分-->
                <div class="sub-left">
                    <ul class="home-channel-list">
                        <li>
                            <a href="#">
                                <i class="icomoon"></i>
                                	选购手机
                            </a>
                        </li>
                        <li><a href=""><i class="icomoon"></i>企业团购</a><span></span></li>
                        <li><a href=""><i class="icomoon"></i>F码通道</a><span></span></li>
                        <li><em></em><a href=""><i class="icomoon"></i>米粉卡</a></li>
                        <li><em></em><a href=""><i class="icomoon"></i>以旧换新</a><span></span></li>
                        <li><em></em><a href=""><i class="icomoon"></i>话费充值</a><span></span></li>
                    </ul>
                </div>
                <!--导航栏下面右侧部分-->
                <div class="sub-right">
                    <ul>
                        <li><a href=""><img src="images/sub1.jpg" alt=""></a></li>
                        <li class="sub-right-li2"><a href=""><img src="images/sub2.jpg" alt=""></a></li>
                        <li><a href=""><img src="images/sub3.jpg" alt=""></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--下面的那一条-->
        <div class="home-banner-box">
            <a href="#"><img src="images/kGyBr.jpg" alt="小米8屏幕指纹"></a>
        </div>
    </div>
    <!--轮播图部分结束-->
    <!--主体部分开始-->
    <div class="home-main">
        <div class="w">
            <!--手机部分开始-->
            <div id="phone" class="home-brick-box">
                <div class="box-hd">
                    <h2 class="title">手机</h2>
                    <div class="more J_brickNav">
                        <a class="more-link" href="#">查看全部<i class="icomoon"></i></a>
                    </div>
                </div>
                <div class="box-bd">
                    <div class="span4">
                        <ul class="brick-promo-list">
                            <li class="brick-item brick-item-1">
                                <a href="#">
                                    <img src="images/Jmowx1.jpg">
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="span16">
                        <ul class="brick-list">
                            <li class="brick-item brick-item-m">
                                <div><a href="#"><img src="images/phone1.jpg" alt="小米9 6GB+128GB"></a></div>
                                <h3 class="title"><a href="#">小米9 6GB+128GB</a></h3>
                                <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
                                <p class="price">
                                    <span class="num">2799</span>元
                                    <del><span class="num">2999</span>元</del>
                                </p>
                                <div class="flag flag-new">新品</div>
                            </li>
                            <li class="brick-item brick-item-m">
                                <div><a href="#"><img src="images/goods5.jpg" alt="小米9 6GB+128GB"></a></div>
                                <h3 class="title"><a href="#">小米9 6GB+128GB</a></h3>
                                <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
                                <p class="price">
                                    <span class="num">2799</span>元
                                    <del><span class="num">2999</span>元</del>
                                </p>
                                <div class="flag flag-saleoff">秒杀</div>
                            </li>
                            <li class="brick-item brick-item-m">
                                <div><a href="#"><img src="images/goods6.jpg" alt="小米9 6GB+128GB"></a></div>
                                <h3 class="title"><a href="#">小米9 6GB+128GB</a></h3>
                                <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
                                <p class="price">
                                    <span class="num">2799</span>元
                                    <del><span class="num">2999</span>元</del>
                                </p>
                            </li>
                            <li class="brick-item brick-item-m">
                                <div><a href="#"><img src="images/goods7.jpg" alt="小米9 6GB+128GB"></a></div>
                                <h3 class="title"><a href="#">小米9 6GB+128GB</a></h3>
                                <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
                                <p class="price">
                                    <span class="num">2799</span>元
                                    <del><span class="num">2999</span>元</del>
                                </p>
                                <div class="flag flag-saleoff">秒杀</div>
                            </li>
                            <li class="brick-item brick-item-m">
                                <div><a href="#"><img src="images/goods8.jpg" alt="小米9 6GB+128GB"></a></div>
                                <h3 class="title"><a href="#">小米9 6GB+128GB</a></h3>
                                <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
                                <p class="price">
                                    <span class="num">2799</span>元
                                    <del><span class="num">2999</span>元</del>
                                </p>
                                <div class="flag flag-saleoff">秒杀</div>
                            </li>
                            <li class="brick-item brick-item-m">
                                <div><a href="#"><img src="images/goods9.jpg" alt="小米9 6GB+128GB"></a></div>
                                <h3 class="title"><a href="#">小米9 6GB+128GB</a></h3>
                                <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
                                <p class="price">
                                    <span class="num">2799</span>元
                                    <del><span class="num">2999</span>元</del>
                                </p>
                                <div class="flag flag-saleoff">减200元</div>
                            </li>
                            <li class="brick-item brick-item-m">
                                <div><a href="#"><img src="images/phone1.jpg" alt="小米9 6GB+128GB"></a></div>
                                <h3 class="title"><a href="#">小米9 6GB+128GB</a></h3>
                                <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
                                <p class="price">
                                    <span class="num">2799</span>元
                                    <del><span class="num">2999</span>元</del>
                                </p>
                                <div class="flag flag-saleoff">秒杀</div>
                            </li>
                            <li class="brick-item brick-item-m">
                                <div><a href="#"><img src="images/phone1.jpg" alt="小米9 6GB+128GB"></a></div>
                                <h3 class="title"><a href="#">小米9 6GB+128GB</a></h3>
                                <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
                                <p class="price">
                                    <span class="num">2799</span>元
                                    <del><span class="num">2999</span>元</del>
                                </p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--手机部分结束-->
            <div class="home-banner-box home-banner-box-brick">
                <a href="#"><img src="images/zqQwg.jpg" alt="众筹 锋味电磁炉"></a>
            </div>
            <!--家电部分开始-->
            <div id="homeelec" class="home-brick-box">
                <div class="box-hd">
                    <h2 class="title">家电</h2>
                    <div class="more J_brickNav xm-plain-box">
                        <ul class="tab-list J_brickTabSwitch">
                            <li class="tab-active">热门</li>
                            <li>电视影音</li>
                            <li>电脑</li>
                            <li>家居</li>
                        </ul>
                    </div>
                </div>
                <div class="box-bd">
                    <div class="span4">
                        <ul class="brick-promo-list">
                            <li class="brick-item brick-item-m">
                                <a href="#">
                                    <img src="images/homeelec1.jpg">
                                </a>
                            </li>
                            <li class="brick-item brick-item-m">
                                <a href="#">
                                    <img src="images/homeelec2.jpg">
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="span16" id="homeelec-content">
                        <ul class="brick-list">
                            <li class="brick-item brick-item-m">
                                <div><a href="#"><img src="images/homeelc3.jpg" alt="小米壁画电视65英寸"></a></div>
                                <h3 class="title">小米壁画电视65英寸<a href="#"></a></h3>
                                <p class="desc"></p>
                                <p class="price">
                                    <span class="num">6999</span>元
                                </p>
                                <div class="flag flag-new">新品</div>
                            </li>
                            <li class="brick-item brick-item-m">
                                <div><a href="#"><img src="images/homeelec4.jpg" alt="小米9 6GB+128GB"></a></div>
                                <h3 class="title"><a href="#">小米9 6GB+128GB</a></h3>
                                <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
                                <p class="price">
                                    <span class="num">2799</span>元
                                    <del><span class="num">2999</span>元</del>
                                </p>
                                <div class="flag flag-saleoff">秒杀</div>
                            </li>
                            <li class="brick-item brick-item-m">
                                <div><a href="#"><img src="images/homeelec5.png" alt="小米9 6GB+128GB"></a></div>
                                <h3 class="title"><a href="#">小米9 6GB+128GB</a></h3>
                                <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
                                <p class="price">
                                    <span class="num">2799</span>元
                                    <del><span class="num">2999</span>元</del>
                                </p>
                            </li>
                            <li class="brick-item brick-item-m">
                                <div><a href="#"><img src="images/homeelec6.png" alt="小米9 6GB+128GB"></a></div>
                                <h3 class="title"><a href="#">小米9 6GB+128GB</a></h3>
                                <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
                                <p class="price">
                                    <span class="num">2799</span>元
                                    <del><span class="num">2999</span>元</del>
                                </p>
                                <div class="flag flag-saleoff">秒杀</div>
                            </li>
                            <li class="brick-item brick-item-m">
                                <div><a href="#"><img src="images/homeelec7.png" alt="小米9 6GB+128GB"></a></div>
                                <h3 class="title"><a href="#">小米9 6GB+128GB</a></h3>
                                <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
                                <p class="price">
                                    <span class="num">2799</span>元
                                    <del><span class="num">2999</span>元</del>
                                </p>
                                <div class="flag flag-saleoff">秒杀</div>
                            </li>
                            <li class="brick-item brick-item-m">
                                <div><a href="#"><img src="images/homeelec8.png" alt="小米9 6GB+128GB"></a></div>
                                <h3 class="title"><a href="#">小米9 6GB+128GB</a></h3>
                                <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
                                <p class="price">
                                    <span class="num">2799</span>元
                                    <del><span class="num">2999</span>元</del>
                                </p>
                                <div class="flag flag-saleoff">减200元</div>
                            </li>
                            <li class="brick-item brick-item-m">
                                <div><a href="#"><img src="images/homeelec9.png" alt="小米9 6GB+128GB"></a></div>
                                <h3 class="title"><a href="#">小米9 6GB+128GB</a></h3>
                                <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
                                <p class="price">
                                    <span class="num">2799</span>元
                                    <del><span class="num">2999</span>元</del>
                                </p>
                                <div class="flag flag-saleoff">秒杀</div>
                            </li>
                            <li class="brick-item brick-item-m">
                                <div><a href="#"><img src="images/phone1.jpg" alt="小米9 6GB+128GB"></a></div>
                                <h3 class="title"><a href="#">小米9 6GB+128GB</a></h3>
                                <p class="desc">骁龙855，索尼4800万超广角微距三摄</p>
                                <p class="price">
                                    <span class="num">2799</span>元
                                    <del><span class="num">2999</span>元</del>
                                </p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--家电部分结束-->
            <div class="home-banner-box home-banner-box-brick">
                <a href="#"><img src="images/BEfMH.jpg" alt="众筹 锋味电磁炉"></a>
            </div>
        </div>
    </div>

    <!--主体部分结束-->
    <!--商城底部-->
    <%@ include file="footer.jsp"%>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            let count=0;
            let $li=$(".ui-viewport li");
            let $dot=$(".ui-pager-item");
            let len=$li.length;
            $(".ui-next").click(function () {
               count++;
               if (count==len){
                   count=0;
               }
               //让第count张图片渐渐的显示，其他渐渐的隐藏
                $li.eq(count).fadeIn().siblings("li").fadeOut();
                $dot.eq(count).addClass("l_click").siblings().removeClass("l_click");
            });
            $(".ui-prev").click(function () {
                count--;
                if (count==-1){
                    count=length-1;
                }
                $li.eq(count).fadeIn().siblings("li").fadeOut();
                $dot.eq(count).addClass("l_click").siblings().removeClass("l_click");
            });
            $dot.hover(function () {
                count=$(this).index();
                $li.eq(count).fadeIn().siblings("li").fadeOut();
                $dot.eq(count).addClass("l_click").siblings().removeClass("l_click");
            });
        });
    </script>
</body>
</html>