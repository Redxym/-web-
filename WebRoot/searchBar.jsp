<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
</style>
 <link href="css/base.css" type="text/css" rel="stylesheet"/>
    <style rel="stylesheet">
        /*导航栏与搜索部分开始*/
        .site-header{
            height: 100px;
            position: relative;
        }
        .site-header .container{
            height: 100%;
            position: relative;
        }
        /*logo部分*/
        .header-logo{
            position: absolute;
            width: 55px;
            height: 55px;
            background-color: #b0b0b0;
            margin-top: 22px;
            text-indent: -9999px;
            overflow: hidden;
        }
        .header-logo a{
            width: 55px;
            height: 55px;
            display:block;
            background: url("images/logo.png") no-repeat center ;
        }
        /*导航栏部分*/
        .header-nav{
            float: left;
            width: 620px;
            height: 100px;
            line-height: 100px;
            margin-left:235px;
        }
        .header-nav li{
            float: left;
            cursor: pointer;
        }
        .header-nav li a{
            font-size: 16px;
            color: #333;
            margin: 8px;
        }
        .header-nav li:hover a{
            color: #ff6700;
        }
        .header-nav .item-children{
            display: none;

        }
        /*搜素商品部分*/
        .header-search{
            float: right;
            width: 296px;
            margin-top: 25px;
        }
        .search-form{
            position: relative;
            width: 295px;
            height: 50px;
        }
        .search-text{
            position: absolute;
            height: 50px;
            width: 223px;
            border: 1px solid #e0e0e0;
            border-right: 0;
        }
        .search-btn{
            position: absolute;
            right: 0;
            top: 0;
            height: 50px;
            width: 72px;
            background-color: #fff;
            border: 1px solid #e0e0e0;
            font-size: 20px;
            line-height: 20px;
            color: #616161;
            cursor:pointer;
        }
         .search-form a{
            display: block;
            position: absolute;
            right: 0;
            top: 0;
            height: 50px;
            width: 72px;
            cursor:pointer;
        }
        /*导航栏与搜索部分结束*/
    </style>
<script type="text/javascript">
function validateform(){
	return true;
}
</script>
<!--导航栏与搜索部分开始-->
<div class="site-header">
    <div class="container w">
        <!--logo部分-->
        <div class="header-logo">
            <a href="index.jsp" title="小米官网">小米官网</a>
        </div>
        <!--导航栏部分-->
        <div class="header-nav">
            <ul>
                <li class="nav-item">
                    <a href="#">小米手机</a>
                    <div class="item-children"></div>
                </li>
                <li><a href="">Redmi红米</a></li>
                <li><a href="">电视</a></li>
                <li><a href="">笔记本</a></li>
                <li><a href="">家电</a></li>
                <li><a href="">路由器</a></li>
                <li><a href="">智能硬件</a></li>
                <li><a href="">服务</a></li>
                <li><a href="">社区</a></li>
            </ul>
        </div>
        <!--搜索部分-->
        <div class="header-search search-form">
            <form onsubmit="return validateform();" id="J_searchForm" action="goods" >
                <input class="search-text" name="gname" type="search">
                <input type="hidden" name="goods_detail" value="search">
                <a href="goods_main.jsp"><input class="search-btn icomoon" type="submit" value=></a>
            </form>
        </div>
    </div>
</div>
<!--导航栏与搜索部分结束-->